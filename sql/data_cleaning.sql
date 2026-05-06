TRUNCATE TABLE orders_cleaned;

INSERT INTO orders_cleaned

WITH base_clean AS (
    SELECT
        order_id,

        CASE 
            WHEN order_date LIKE '%/%' THEN STR_TO_DATE(order_date, '%m/%d/%Y')
            WHEN order_date LIKE '%-%' AND LENGTH(order_date)=10 THEN STR_TO_DATE(order_date, '%Y-%m-%d')
            ELSE NULL
        END AS order_date,

        customer_id,

        COALESCE(NULLIF(TRIM(customer_name), ''), 'Unknown') AS customer_name,

        UPPER(TRIM(region)) AS region,

        COALESCE(
            NULLIF(
                CONCAT(
                    UPPER(LEFT(TRIM(city),1)),
                    LOWER(SUBSTRING(TRIM(city),2))
                ),
                ''
            ),
            'Unknown'
        ) AS city,

        product_id,

        LOWER(TRIM(product_name)) AS product_name,

        LOWER(TRIM(category)) AS raw_category,

        CAST(NULLIF(price,'') AS DECIMAL(10,2)) AS price,

        CAST(NULLIF(quantity,'') AS SIGNED) AS quantity,

        CAST(NULLIF(discount,'') AS DECIMAL(5,2)) AS discount,

        payment_method,
        order_status

    FROM orders_raw
),

logic_fixed AS (
    SELECT
        *,

        CASE 
            WHEN quantity <= 0 OR quantity IS NULL THEN 1
            WHEN quantity > 50 THEN 50
            ELSE quantity
        END AS quantity_fixed,

        CASE 
            WHEN price > 100000 OR price IS NULL THEN NULL
            ELSE price
        END AS price_fixed

    FROM base_clean
),

category_fixed AS (
    SELECT
        *,

        CASE 
            WHEN product_name IN ('laptop','phone','headphones','monitor') THEN 'electronics'
            WHEN product_name IN ('t-shirt','jeans','jacket','shoes') THEN 'fashion'
            WHEN product_name IN ('chair','table','lamp','sofa') THEN 'home'
            ELSE raw_category
        END AS category

    FROM logic_fixed
),

deduplicated AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY 
                   order_id,
                   product_id,
                   customer_id
               ORDER BY order_date
           ) AS rn
    FROM category_fixed
)

SELECT
    order_id,
    order_date,
    customer_id,
    customer_name,
    region,
    city,
    product_id,
    product_name,
    category,
    price_fixed AS price,
    quantity_fixed AS quantity,
    COALESCE(discount,0) AS discount,
    payment_method,
    order_status,
    price_fixed * quantity_fixed * (1 - COALESCE(discount,0)/100) AS revenue

FROM deduplicated
WHERE rn = 1;