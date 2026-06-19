# 📊 Sales Performance Analysis Dashboard

## 📌 Latar Belakang

Project ini dibuat untuk menganalisis performa penjualan perusahaan berdasarkan produk, kategori produk, wilayah, cabang, dan tren penjualan dari waktu ke waktu.

Analisis dilakukan menggunakan MySQL sebagai database management system untuk membangun relational database dan Power BI sebagai tools visualisasi data. Dashboard yang dihasilkan bertujuan membantu perusahaan dalam memonitor performa penjualan serta mendukung proses pengambilan keputusan berbasis data.

> **Catatan:** Dataset asli tidak disertakan dalam repository ini karena alasan kerahasiaan dan privasi data perusahaan. Repository ini berfokus pada proses perancangan database, pembuatan query SQL, pengembangan dashboard, dan analisis bisnis.

---

## 🎯 Tujuan Analisis

Analisis ini dilakukan untuk menjawab beberapa pertanyaan bisnis berikut:

* Berapa total revenue yang dihasilkan perusahaan?
* Produk apa yang memberikan kontribusi revenue terbesar?
* Produk apa yang memiliki jumlah penjualan (quantity) tertinggi?
* Wilayah mana yang memberikan kontribusi revenue terbesar?
* Cabang mana yang memiliki performa penjualan terbaik?
* Bagaimana tren revenue perusahaan dari tahun ke tahun?
* Strategi apa yang dapat dilakukan untuk meningkatkan performa penjualan?

---

## 🛠️ Tools & Technologies
![MySQL](https://img.shields.io/badge/MySQL-SQL%20Query%20%26%20Data%20Modeling-blue)
![Excel](https://img.shields.io/badge/Excel-Data%20Preparation-green)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard%20%26%20Visualization-yellow)

| Tools    | Fungsi                         |
| -------- | ------------------------------ |
| MySQL    | Database Management System     |
| SQL      | Data Query & Transformation    |
| Power BI | Dashboard & Data Visualization |

---

## 📂 Struktur Repository

```text
Sales-Performance-Analyst-Dashboard
│
├── Dashboard
│   └── Sales Performance Dashboard.png
│
├── SQL
│   ├── Create Table.sql
│   ├── Primary Key.sql
│   ├── Foreign Key.sql
│   ├── Master Table.sql
│   └── Full Query.sql
│
├── Database Schema
│   └── ERD.png
│
└── README.md
```

---

## 🔄 Alur Pengolahan Data

### 1. Database Design

Membuat struktur database yang terdiri dari empat tabel utama:

* Customer
* Product
* Salesman
* Sales Transaction

### 2. Data Modeling

Menentukan Primary Key dan Foreign Key untuk membangun hubungan antar tabel dan menjaga integritas data.

### 3. Data Transformation

Menggabungkan data transaksi dan data master menggunakan SQL JOIN untuk membentuk Master Table yang siap digunakan untuk analisis.

### 4. Data Analysis

Melakukan analisis terhadap:

* Revenue
* Quantity Penjualan
* Performa Produk
* Performa Wilayah
* Performa Cabang
* Tren Penjualan

### 5. Data Visualization

Membangun dashboard interaktif menggunakan Power BI untuk memudahkan monitoring performa bisnis.

---

## 🗄️ Struktur Database

### Customer

| Kolom            |
| ---------------- |
| Customer_Account |
| Region           |
| Customer_Name    |

### Product

| Kolom         |
| ------------- |
| Product_ID    |
| Item_Category |
| Product       |
| Price         |

### Salesman

| Kolom         |
| ------------- |
| Salesman_ID   |
| Salesman_Name |

### Sales Transaction

| Kolom               |
| ------------------- |
| Invoice_ID          |
| Invoice_Date        |
| Invoice_Year        |
| Branch              |
| Salesman_ID         |
| Customer_Account    |
| Product_ID          |
| Qty                 |
| Payment_Per_Month   |
| Booking_Fee         |
| Monthly_Installment |
| Delivery_Fee        |

---

## 🔗 Relasi Antar Tabel

### Primary Key

| Tabel             | Primary Key      |
| ----------------- | ---------------- |
| Customer          | Customer_Account |
| Product           | Product_ID       |
| Salesman          | Salesman_ID      |
| Sales Transaction | Invoice_ID       |

### Relationship

* Customer (1) → (M) Sales Transaction
* Product (1) → (M) Sales Transaction
* Salesman (1) → (M) Sales Transaction

---

## 📈 Dashboard Overview

Dashboard menampilkan beberapa KPI utama, yaitu:

### KPI

* Total Revenue
* Total Quantity
* Total Transaction
* Average Revenue

### Visualisasi

* Total Revenue by Year
* Total Revenue by Product
* Total Quantity by Product
* Total Revenue by Item Category
* Total Revenue by Region
* Total Revenue by Branch

### Filter

* Tahun
* Kategori Produk
* Produk

---

## 📊 Hasil Analisis

### 📈 Tren Revenue

Revenue perusahaan menunjukkan tren fluktuatif, dengan penurunan pada periode 2015–2018 sebelum kembali meningkat secara signifikan pada tahun 2019.
Hal ini mengindikasikan adanya kemungkinan perubahan pada faktor eksternal (pasar/permintaan) atau internal (strategi penjualan, distribusi, atau produk) yang memengaruhi performa bisnis pada periode tersebut. Perlu analisis lanjutan untuk mengidentifikasi penyebab utama penurunan agar perusahaan dapat mencegah risiko serupa di masa depan.

### 🏆 Performa Produk

Produk A merupakan kontributor utama revenue dan volume penjualan dibandingkan dengan produk lainnya, dengan kontribusi mencapai ±35% dari total revenue.
Dominasi ini menunjukkan bahwa pertumbuhan bisnis sangat bergantung pada satu produk utama, sehingga terdapat risiko ketergantungan (revenue concentration risk). Jika performa Produk A menurun, dampaknya akan signifikan terhadap total pendapatan perusahaan.

### 📦 Kontribusi Kategori Produk

Kategori POU memberikan kontribusi sekitar 88% terhadap total revenue, sementara kategori POE hanya menyumbang sekitar 12%.
Hal ini menunjukkan adanya ketidakseimbangan portofolio produk, di mana sebagian besar revenue perusahaan hanya ditopang oleh satu kategori utama. Kondisi ini meningkatkan risiko bisnis jika terjadi penurunan permintaan pada kategori dominan tersebut.

### 🌍 Performa Wilayah dan Cabang

Wilayah Banten, terutama cabang Tangerang, menunjukkan performa revenue tertinggi selama periode analisis. Perbedaan performa antar cabang mengindikasikan adanya variasi efektivitas operasional, strategi penjualan, atau kondisi pasar lokal. Best practice dari cabang dengan performa tinggi dapat dijadikan benchmark untuk meningkatkan cabang lain. 

Wilayah DKI Jakarta merupakan kontributor revenue terbesar dalam analisis regional. Setelah di-breakdown lebih lanjut, kontribusi tersebut tidak merata antar cabang. Jakarta Selatan menjadi cabang dengan kontribusi tertinggi sebesar 43,20% dari total revenue Jakarta, diikuti oleh Jakarta Utara sebesar 35,64% dan Jakarta Timur sebesar 21,14%. Hal ini menunjukkan adanya ketimpangan performa antar cabang dalam satu wilayah utama, di mana lebih dari 40% revenue Jakarta hanya bergantung pada satu cabang.

### 📉 Investigasi Penurunan Revenue 2015–2018

Penurunan revenue pada periode tersebut perlu dianalisis lebih lanjut untuk mengidentifikasi akar penyebab (root cause analysis). Hasil analisis ini penting untuk mencegah terulangnya pola penurunan serupa dan untuk meningkatkan ketahanan bisnis terhadap perubahan kondisi pasar.

---

## 💡 Rekomendasi Bisnis

1. Mempertahankan performa produk dengan kontribusi revenue terbesar melalui strategi promosi dan program loyalitas pelanggan.

2. Mengurangi ketergantungan terhadap satu kategori produk dengan meningkatkan pemasaran pada kategori lain yang masih memiliki potensi pertumbuhan.

3. Melakukan evaluasi strategi penjualan cabang dengan performa rendah dan mengadopsi praktik terbaik dari cabang dengan performa tinggi.

4. Memfokuskan aktivitas pemasaran pada wilayah dengan kontribusi revenue terbesar untuk mempertahankan pertumbuhan penjualan.

5. Melakukan analisis lanjutan terkait faktor penyebab penurunan revenue pada periode sebelumnya untuk mendukung perencanaan bisnis yang lebih efektif.

---

## 👤 Author

Project ini dibuat sebagai bagian dari portfolio Data Analyst dengan fokus pada:

* Database Design
* Relational Database
* SQL Query
* Data Transformation
* Data Visualization
* Business Analysis
* Power BI Dashboard
