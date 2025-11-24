---CUSTOMERS TABLOSUNDA YENİLENEN DEĞERLER

SELECT 
   customer_id,customer_unique_id,customer_zip_code_prefix,
   customer_city,customer_state,
 COUNT(*) AS number_of_duplicates
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
GROUP BY customer_id,customer_unique_id,customer_zip_code_prefix,
customer_city,customer_state
HAVING COUNT(*) > 1 ;

-----CUSTOMERS TABLOSUNDA Kİ NULL DEĞERLER

SELECT 'customer_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
WHERE   customer_id IS NULL
   UNION ALL
SELECT 'customer_unique_id', COUNT(*) 
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
WHERE customer_unique_id IS NULL
   UNION ALL
SELECT 'customer_zip_code_prefix', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
WHERE customer_zip_code_prefix IS NULL
   UNION ALL
SELECT 'customer_city', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
WHERE customer_city IS NULL
   UNION ALL
SELECT 'customer_state', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
WHERE customer_state IS NULL;

---PRODUCTS TABLOSUNDA YENİLENEN DEĞERLER

SELECT product_id, product_category_name, product_name_lenght, product_description_lenght, product_photos_qty, product_weight_g, product_length_cm, product_height_cm, product_width_cm,
COUNT(*) AS number_of_duplicates
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
GROUP BY product_id, product_category_name, product_name_lenght, product_description_lenght, product_photos_qty, product_weight_g, product_length_cm, product_height_cm, product_width_cm
HAVING COUNT(*)>1 ;

---PRODUCTS TABLOSUNDA NULL DEĞERLER

SELECT 'product_id' AS column_name, COUNT(*) AS number_of_nulls  ---NULL=0
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_id IS NULL 
   UNION ALL
SELECT 'product_category_name', COUNT(*)                         ---NULL=610
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_category_name IS NULL
   UNION ALL
SELECT 'product_name_lenght',COUNT(*)                            ---NULL=610
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_name_lenght IS NULL
   UNION ALL
SELECT 'product_description_lenght',COUNT(*)                     ---NULL=610
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_description_lenght IS NULL
   UNION ALL
SELECT 'product_photos_qty',COUNT(*)                             ---NULL=610
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_photos_qty IS NULL
   UNION ALL
SELECT 'product_weight_g',COUNT(*)                               ---NULL=2
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_weight_g IS NULL
   UNION ALL
SELECT 'product_length_cm',COUNT(*)                              ---NULL=2
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_length_cm IS NULL
   UNION ALL
   SELECT 'product_height_cm',COUNT(*)                           ---NULL=2
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_height_cm IS NULL
   UNION ALL
SELECT 'product_width_cm',COUNT(*)                               ---NULL=2
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `
WHERE product_width_cm IS NULL
ORDER BY number_of_nulls DESC;

----ORDER TABLOSUNDAN YENİLENEN DEĞERLER----

SELECT  order_id, customer_id, order_status,
        order_purchase_timestamp, order_approved_at,
        order_delivered_carrier_date, order_delivered_customer_date,
        order_estimated_delivery_date,
        COUNT(*) AS number_of_duplicates
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
GROUP BY order_id, customer_id, order_status,
        order_purchase_timestamp, order_approved_at,
        order_delivered_carrier_date, order_delivered_customer_date,
        order_estimated_delivery_date
HAVING COUNT(*) > 1;

------ORDER TABLOSUNDA Kİ NULLS DEĞERLER------

SELECT 'order_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE order_id IS NULL
   UNION ALL
SELECT 'customer_id', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE customer_id IS NULL
   UNION ALL
SELECT 'order_status', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE order_status IS NULL
   UNION ALL
SELECT 'order_purchase_timestamp', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE order_purchase_timestamp IS NULL
   UNION ALL
SELECT 'order_approved_at', COUNT(*) ---NULL=160
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE order_approved_at IS NULL
   UNION ALL
SELECT 'order_delivered_carrier_date', COUNT(*) ----NULL= 1783
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE order_delivered_carrier_date IS NULL
   UNION ALL
SELECT 'order_estimated_delivery_date', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
WHERE order_estimated_delivery_date IS NULL
ORDER BY number_of_nulls DESC;

-----ORDER_ITEMS TABLOSUNDA YENİLENEN DEĞERLER

SELECT order_id, order_item_id, product_id,seller_id, shipping_limit_date, price, freight_value,
COUNT(*) AS number_of_duplicates
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
GROUP BY    order_id, order_item_id, product_id, seller_id,
            shipping_limit_date, price, freight_value
HAVING COUNT(*) > 1
ORDER BY number_of_duplicates;

-----ORDER_ITEMS TABLOSUNDA Kİ NULL DEĞERLER

SELECT 'order_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE order_id IS NULL 
   UNION ALL
SELECT'order_item_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE order_item_id IS NULL
   UNION ALL
SELECT 'product_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE product_id IS NULL
   UNION ALL
SELECT 'seller_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE seller_id IS NULL
   UNION ALL
SELECT 'shipping_limit_date' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE shipping_limit_date IS NULL
   UNION ALL
SELECT 'price' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE price IS NULL
  UNION ALL
SELECT 'freight_value' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset`
WHERE freight_value IS NULL
ORDER BY number_of_nulls DESC;

------ORDER PAYMENTS TABLOSUNDA YENİLENENLER

SELECT order_id, payment_sequential, payment_type,
        payment_installments, payment_value,
        COUNT(*) AS number_of_duplicates
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`
GROUP BY order_id, payment_sequential, payment_type,
        payment_installments, payment_value
HAVING COUNT(*) >1
ORDER BY number_of_duplicates;

----- ORDER PAYMENTS TABLOSUNDA NULL DEĞERLER

SELECT 'order_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`
WHERE order_id IS NULL
   UNION ALL
SELECT 'payment_sequential', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`
WHERE payment_sequential IS NULL
   UNION ALL
SELECT 'payment_type', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`
WHERE payment_type IS NULL
   UNION ALL
SELECT 'payment_installments', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`
WHERE payment_installments IS NULL
   UNION ALL
SELECT 'payment_value', COUNT(*)
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`
WHERE payment_value IS NULL
ORDER BY number_of_nulls;

-----ORDER REVIEWS TABLOSUNDA YENİLENEN DEĞERLER

SELECT review_id, order_id, review_score, review_creation_date, review_answer_timestamp,
COUNT(*) AS number_of_duplicates
FROM `ninth-iris-474811-t7.olist.olist_order_reviews_dataset`
GROUP BY   review_id, order_id, review_score, review_creation_date, review_answer_timestamp
HAVING COUNT(*) > 1
ORDER BY number_of_duplicates;

----ORDER REVIEWS TABLOSUNDA NULL DEĞERLER

SELECT 'review_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_reviews_dataset`
WHERE review_id IS NULL
   UNION ALL
SELECT 'order_id' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_reviews_dataset`
WHERE order_id IS NULL
   UNION ALL
SELECT 'review_score' AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_reviews_dataset`
WHERE review_score IS NULL
   UNION ALL
SELECT 'review_creation_date'AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_reviews_dataset`
WHERE review_creation_date IS NULL
   UNION ALL
SELECT 'review_answer_timestamp'AS column_name, COUNT(*) AS number_of_nulls
FROM `ninth-iris-474811-t7.olist.olist_order_reviews_dataset`
WHERE review_answer_timestamp IS NULL
ORDER BY number_of_nulls DESC;

--- ANA ANALİZ 1: AYLIK GELİR, SİPARİŞ VE AOV TRENDİ ---

SELECT
-- Sipariş tarihini Yıl-Ay formatına yuvarla (örn: 2017-11-01)
    DATE_TRUNC(DATE(o.order_purchase_timestamp), MONTH) AS order_month,
-- O ayki toplam geliri hesapla
    ROUND(SUM(p.payment_value),2) AS total_revenue,
-- O ayki toplam benzersiz sipariş sayısını say
    COUNT(DISTINCT o.order_id) AS total_orders,
-- O ayki Ortalama Sipariş Değerini (AOV) hesapla
    ROUND(SUM(p.payment_value),2) / COUNT(DISTINCT o.order_id) AS average_order_value
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
JOIN `ninth-iris-474811-t7.olist.olist_order_payments_dataset` AS p
ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'  
AND p.payment_value > 0      
GROUP BY order_month
ORDER BY order_month ASC;

--- ANA ANALİZ 2: EN ÇOK GELİR GETİREN 10 ÜRÜN KATEGORİSİ ---

SELECT
    p.product_category_name AS category_name,
    ROUND (SUM(oi.price),2) AS total_revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset` AS oi
JOIN `ninth-iris-474811-t7.olist.olist_products_dataset ` AS p
ON oi.product_id = p.product_id
JOIN `ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
AND p.product_category_name IS NOT NULL
GROUP BY category_name
ORDER BY total_revenue DESC
LIMIT 10;         

--VERİ TOPLAMA (JOIN) & 3.4. VERİ ZENGİNLEŞTİRME (KPI)---

SELECT
t.category_name_english AS category_name_english,
ROUND(SUM(oi.price),2) AS total_revenue,--KPI 1 : Toplam Gelir
COUNT(DISTINCT o.order_id) AS total_orders,
--YENİ KPI: Ortalama Memnuniyet Puanı (1-5 arası bir değer, 5 en iyi)
ROUND(AVG(r.review_score),3) AS average_review_score
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset` AS oi
JOIN `ninth-iris-474811-t7.olist.olist_products_dataset ` AS p
ON oi.product_id = p.product_id
JOIN `ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
ON oi.order_id = o.order_id
LEFT JOIN `ninth-iris-474811-t7.olist.olist_order_reviews_dataset` AS r
ON o.order_id = r.order_id
LEFT JOIN `ninth-iris-474811-t7.olist.olist_product_category_name_translation` AS t
ON p.product_category_name = t.category_name
WHERE o.order_status= 'delivered'
AND p.product_category_name IS NOT NULL
GROUP BY category_name_english
ORDER BY total_revenue DESC 
LIMIT 10;

---MÜŞTERİ BAZINDA HESAPLAMA (CTE)---

WITH customer_orders_cte AS (
SELECT c.customer_unique_id,
COUNT(DISTINCT o.order_id) AS total_orders_per_customer
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
JOIN `ninth-iris-474811-t7.olist.olist_customers_dataset` AS c
ON o.customer_id = c.customer_id
    
 
WHERE o.order_status = 'delivered' -- Sadece başarılı siparişler
GROUP BY c.customer_unique_id -- Müşterinin KALICI kimliğine göre grupla
)

---'customer_orders_cte' tablosunu kullanarak,o sipariş sayılarını (1 sipariş, 2 sipariş vb.) gruplama.

SELECT total_orders_per_customer AS number_of_orders, 
COUNT(customer_unique_id) AS total_customers 
FROM customer_orders_cte
GROUP BY number_of_orders
ORDER BY number_of_orders ASC;

---HER BİR KALICI MÜŞTERİNİN (unique_id) TOPLAM KAÇ TANE BAŞARILI (delivered) SİPARİŞ OLDUĞUNU HESAPLAMA

WITH customer_orders_cte AS (
SELECT c.customer_unique_id,
COUNT(DISTINCT o.order_id) AS total_orders_per_customer
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
JOIN `ninth-iris-474811-t7.olist.olist_customers_dataset` AS c
ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_unique_id
)

SELECT total_orders_per_customer AS number_of_orders, 
COUNT(customer_unique_id) AS total_customers   
FROM customer_orders_cte
GROUP BY number_of_orders
ORDER BY number_of_orders ASC;

--EYALETLERE GÖRE GELİR, SİPARİŞ VE MÜŞTERİ DAĞILIMI (İLK 10 EYALET)

SELECT
    c.customer_state AS state,
    -- O eyaletteki toplam gelir
    ROUND(SUM(p.payment_value), 2) AS total_revenue,
    -- O eyaletteki toplam sipariş sayısı
    COUNT(DISTINCT o.order_id) AS total_orders,
    -- O eyaletteki toplam benzersiz müşteri sayısı
    COUNT(DISTINCT c.customer_unique_id) AS total_customers
FROM`ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
JOIN`ninth-iris-474811-t7.olist.olist_order_payments_dataset` AS p
ON o.order_id = p.order_id
JOIN`ninth-iris-474811-t7.olist.olist_customers_dataset` AS c
ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'  
AND p.payment_value > 0      
GROUP BY state
ORDER BY total_revenue DESC 
LIMIT 10;

---EN YÜKSEK DEĞERLİ MÜŞTERİLER (İLK 10 CLV)---

SELECT
    c.customer_unique_id,
    ROUND(SUM(oi.price), 2) AS total_lifetime_spent,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM`ninth-iris-474811-t7.olist.olist_order_items_dataset` AS oi
JOIN`ninth-iris-474811-t7.olist.olist_orders_dataset` AS o
ON oi.order_id = o.order_id
JOIN`ninth-iris-474811-t7.olist.olist_customers_dataset` AS c
ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_unique_id 
ORDER BY total_lifetime_spent DESC 
LIMIT 10;
