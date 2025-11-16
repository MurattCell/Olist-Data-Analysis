# Olist E-Ticaret Veri Analizi (SQL ve BigQuery)

Bu proje, Olist e-ticaret veri setini kullanarak 3 ana iş sorusunu (Gelir Trendleri, Ürün Performansı ve Müşteri Davranışı) cevaplamak için Google BigQuery üzerinde SQL ile gerçekleştirilmiş kapsamlı bir veri analizi çalışmasıdır.

## 🎯 Projenin 3 Ana Hedefi

1.  **Gelir Analizi:** Şirket büyüyor mu? Mevsimsellik var mı? AOV nedir?
2.  **Ürün Analizi:** En çok ne satıyoruz? Bu ürünler müşteriyi memnun ediyor mu?
3.  **Müşteri Analizi:** Müşterilerimiz sadık mı, yoksa tek seferlik mi? CLV nedir?

## 🛠️ Kullanılan Araçlar

* **Veritabanı:** Google BigQuery
* **Analiz:** SQL (JOINS, CTEs, GROUP BY, Window Functions)
* **Veri Temizliği:** Veri kalitesi (`NULL`, `Duplicate`, Aykırı Değer) kontrolleri yapıldı ve analizler sadece 'delivered' (başarılı) siparişler üzerinden "temiz" veri ile yapıldı.
* **Görselleştirme:** Google Sheets
* **Sunum:** PowerPoint

---

## 📊 Ana Bulgular ve İş İçgörüleri

### 1. Bulgu: Finansal Performans (Mevsimsellik Etkisi)

Aylık gelir trendi, özellikle Kasım (Black Friday) ayında güçlü bir mevsimsellik etkisi gösteriyor. Operasyonlar ve pazarlama bütçesi bu zirveye göre planlanmalı.

<img width="1783" height="626" alt="Aylık Gelir,Sipariş VE AOV Pivot Table" src="https://github.com/user-attachments/assets/10db1748-14bd-4247-bf41-758062617b9a" />


### 2. Bulgu: Ürün Performansı vs. Müşteri Memnuniyeti

Analiz, en çok gelir getiren kategorilerin (`beleza_saude` gibi) aynı zamanda yüksek memnuniyet puanına (4.2) sahip olduğunu, ancak bazı kategorilerin (`moveis_decoracao` - mobilya gibi) ciroya rağmen düşük puanlar (3.8) aldığını ortaya koydu.

<img width="1214" height="371" alt="Veri Toplama    (KPI) Pivot Table" src="https://github.com/user-attachments/assets/fde658c8-64d3-494f-878a-ec1c8fa4f875" />


### 3. Bulgu: Müşteri Sadakati (Retention)

Analizin en kritik bulgusu: Müşterilerin %96'sı (90,000+ müşteri) tek seferlik alışveriş yapıyor. Şirketin yeni müşteri bulma sorunu yok, müşteriyi elde tutma (retention) sorunu var.

<img width="936" height="371" alt="Müşteri Bazında Hesaplama (CTE) Pivot Table " src="https://github.com/user-attachments/assets/3e0fb15c-fdac-4a3f-bac0-d351f5dd5c63" />
<img width="1368" height="486" alt="Yüksek Değerli Müşteriler Pivot Table" src="https://github.com/user-attachments/assets/f67d38ad-b65a-4a7e-b4a5-4bd4467ee663" />


---

## 🚀 Stratejik Öneriler

1.  **Sadakat Programı:** %96'lık tek seferlik müşteri kitlesini geri kazanmak için "2. siparişe özel indirim" kuponları tanımlanmalı.
2.  **Kalite Kontrol:** Mobilya kategorisindeki düşük puanların sebebi (kargo hasarı mı, ürün hatası mı?) araştırılmalı.
3.  **Mevsimsellik:** Kasım ayındaki yoğunluk için stok ve lojistik hazırlığı 3 ay önceden yapılmalı.

## 🗂️ Proje Dosyaları

* `analysis.sql`: 3 ana iş vakasını cevaplayan tüm "pivot" sorgularını içerir.
* `Olist_Veri_Analizi_Sunumu.pptx`: Projenin tüm bulgularını içeren yönetici sunumu.
