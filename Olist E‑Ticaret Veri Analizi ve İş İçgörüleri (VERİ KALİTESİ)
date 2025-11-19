-----------------------------------------------------------------------------------
--A--MÜŞTERİ DAVRANIŞ ANALİZİ
--A1--Eksik Değer Sorgusu

SELECT
   COUNTIF(customer_id IS NULL) AS null_customer_id_count,
   COUNTIF(customer_unique_id IS NULL) AS null_unique_id_count,
   COUNTIF(customer_city IS NULL) AS null_city_count,
   COUNTIF(customer_state IS NULL) AS null_state_count
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
;
--Null= 0

--A2-- Aykırı değerler var mı?

SELECT
  customer_city,
  COUNT(customer_unique_id) AS total_customers
FROM `ninth-iris-474811-t7.olist.olist_customers_dataset`
GROUP BY customer_city
ORDER BY total_customers ASC LIMIT 20 ;
---YOK

-----------------------------------------------------------------------------------
--B--ÜRÜN PERFORMANS DEĞERLENDİRMESİ
--B1--Eksik Değer Sorgusu

SELECT
COUNTIF(product_category_name IS NULL) AS null_category_count
FROM `ninth-iris-474811-t7.olist.olist_products_dataset `;
---(32951 ürünün 610’unda kategori yok)

--B2-- Aykırı değerler var mı?
SELECT
  COUNTIF(price=0) AS zero_price_count,
  MIN(price) AS min_price,
  ROUND(AVG(price),2) AS avg_price,
  MAX(price) AS max_price
FROM `ninth-iris-474811-t7.olist.olist_order_items_dataset` ;
---zero_price_count= 0 (SIFIR FİYATLI ÜRÜN SAYISI)
---min_price = 0.85 (EN DÜŞÜK FİYAT)
---avg_price = 120.65 (ORTLAMA FİYAT)
---max_price= 6735,0 (EN YÜKSEK FİYAT)
-----------------------------------------------------------------------------------
--C--SİPARİŞ VE GELİR ANALİZİ
--C1--Eksik Değer Sorgusu

SELECT 
    COUNTIF(order_id IS NULL) AS null_order_id,
    COUNTIF(order_purchase_timestamp IS NULL) AS null_timestamp, 
    COUNTIF(order_status IS NULL) AS null_status
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`;
--- NULL = 0
SELECT
    COUNTIF(order_id IS NULL) AS null_order_id,
    COUNTIF(payment_value IS NULL) AS null_payment_value
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset`; 
--- NULL = 0

--C2--Aykırı Değer Sorgusu

SELECT
   COUNTIF(payment_value <=0) AS zero_or_negative_payment_count,
   MIN(payment_value) AS min_payment,
   ROUND(AVG(payment_value),2) AS avg_payment,
   MAX(payment_value) AS max_payment
FROM `ninth-iris-474811-t7.olist.olist_order_payments_dataset` ;
--zero_or_negative_payment_count(Sıfır veya Negatif Ödeme Sayısı) = 9(HATALI)
--min_payment(En düşük ödeme) = 0
--avg_payment(Ortalama Ödeme) = 154.1
--max_payment(En yüksek ödeme) = 13664.08

SELECT
   order_status,
   COUNT(*) AS total_orders
FROM `ninth-iris-474811-t7.olist.olist_orders_dataset`
   GROUP BY order_status;
--delivered(teslim edildi)=96478
--invoiced(fatura kesilen)=314
--shipped(Kargolandı)=1107
--processing(Hazırlanıyor)=301
--unavailable(Stokta Yol)=609
--canceled(İptal Edildi)=625
--created(oluşturuldu)=5
--approved(onaylandı)=2









