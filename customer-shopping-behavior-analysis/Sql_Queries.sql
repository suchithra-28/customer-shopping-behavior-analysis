SELECT *
FROM customer
LIMIT 10;

SELECT
    SUM(purchase_amount) AS total_sales,
    AVG(purchase_amount) AS average_purchase
FROM customer;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'customer';

SELECT
    SUM("Purchase Amount (USD)") AS total_sales,
    AVG("Purchase Amount (USD)") AS average_purchase
FROM customer;

SELECT
    "Category",
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY "Category"
ORDER BY total_sales DESC;

SELECT
    "Gender",
    COUNT("Customer ID") AS total_customers,
    SUM("Purchase Amount (USD)") AS total_sales,
    AVG("Purchase Amount (USD)") AS average_purchase
FROM customer
GROUP BY "Gender"
ORDER BY total_sales DESC;

SELECT
    "Customer ID",
    "Gender",
    "Category",
    "Purchase Amount (USD)"
FROM customer
ORDER BY "Purchase Amount (USD)" DESC
LIMIT 10;

SELECT
    "Frequency of Purchases",
    COUNT(*) AS total_customers
FROM customer
GROUP BY "Frequency of Purchases"
ORDER BY total_customers DESC;

SELECT
    "Season",
    SUM("Purchase Amount (USD)") AS total_sales,
    COUNT(*) AS total_purchases
FROM customer
GROUP BY "Season"
ORDER BY total_sales DESC;

SELECT
    "Payment Method",
    COUNT(*) AS total_transactions,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY "Payment Method"
ORDER BY total_transactions DESC;

SELECT
    "Discount Applied",
    COUNT(*) AS total_customers,
    AVG("Purchase Amount (USD)") AS average_purchase,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY "Discount Applied";


SELECT
    "Category",
    ROUND(AVG("Review Rating")::numeric, 2) AS average_rating,
    COUNT(*) AS total_reviews
FROM customer
GROUP BY "Category"
ORDER BY average_rating DESC;

SELECT
    "Location",
    COUNT(*) AS total_purchases,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY "Location"
ORDER BY total_sales DESC
LIMIT 5;

SELECT
    "Category",
    "Gender",
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY "Category", "Gender"
ORDER BY total_sales DESC;

SELECT
    "Subscription Status",
    COUNT(*) AS total_customers,
    ROUND(AVG("Purchase Amount (USD)")::numeric, 2) AS average_purchase,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY "Subscription Status";


SELECT
    CASE
        WHEN "Purchase Amount (USD)" >= 75 THEN 'High Spender'
        WHEN "Purchase Amount (USD)" >= 40 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS spending_group,
    COUNT(*) AS total_customers,
    SUM("Purchase Amount (USD)") AS total_sales
FROM customer
GROUP BY spending_group
ORDER BY total_sales DESC;

