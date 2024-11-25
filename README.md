![1732290570957](https://github.com/user-attachments/assets/f0cf9cc8-4919-4187-bd21-39e9ad019377)


# Apache Hudi Real-Time Data Ingestion Workshop

This workshop is designed to teach you how to seamlessly ingest data from PostgreSQL into Hudi in near real-time using **Debezium**, **Kafka**, and **Hudi's Multi-Table Streamer**. You’ll learn:

- How to set up the **Hudi Multi-Table Streamer** to efficiently ingest and manage multiple PostgreSQL tables into Hudi.
- A structured approach to querying this ingested data using **Trino**.
- Exploring Hudi’s **multi-modal indexing** (e.g., Record-Level Index (RLI) and Column Stats Index) to significantly boost query performance.

This hands-on session equips you with the practical knowledge needed to build scalable and efficient data pipelines with ease.

---

## Steps

### Step 1: Spin Up the Stack and Install PySpark

Start the required services and set up the Python environment.

```bash
docker-compose up --build
pip install ipython-sql
pip install trino
pip install pyspark==3.4.0
```
### Step 2: Use postgres debezium connector and set it up for tables customers and orders
![image](https://github.com/user-attachments/assets/aade06a2-742a-4066-92a5-af3d40f16c4f)

### Step 3: Run MultiTable Streamer 
![image](https://github.com/user-attachments/assets/3192992d-241c-4c52-acca-52e9508ecc19)

### Step 4:Update Items in customer table and delete items in order tables and Run Streamer and query the data using Trino 
![image](https://github.com/user-attachments/assets/66d2f172-4f85-4e1f-82c0-f8fc174dadad)
![image](https://github.com/user-attachments/assets/c41e25bc-f214-4a39-9f7d-ab81b43e3f40)





# References (Reading Materials)

This repository contains references and hands-on materials to help you master advanced features of Apache Hudi, including data skipping, record-level indexing, and multi-modal indexing for the lakehouse.

## Reading Materials and Labs

### 1. **Learn How to Use Apache Hudi Data Skipping Feature | Hands-on Lab**
Optimize query performance by leveraging Hudi's data skipping feature, which skips irrelevant data blocks during processing. This guide includes detailed, step-by-step instructions.
[Learn How to Use Apache Hudi Data Skipping Feature](https://soumilshah1995.blogspot.com/2024/01/learn-how-to-use-apache-hudi-data.html)

---

### 2. **Record Level Indexing in Apache Hudi Delivers 70% Faster Point Lookups**
Discover how record-level indexing in Apache Hudi enhances point lookup performance by up to 70%. Learn about the architecture and real-world use cases in this article.
[Record Level Indexing in Apache Hudi Delivers 70% Faster Point Lookups](https://www.linkedin.com/pulse/record-level-indexing-apache-hudi-delivers-70-faster-point-shah-hlite/?trackingId=MG6kejGbS7eyh%2BxlEk0Omg%3D%3D)

---

### 3. **Introducing Multi-Modal Index for the Lakehouse in Apache Hudi**
Get introduced to the multi-modal index in Apache Hudi, designed for lakehouse environments. This article explains how this feature simplifies indexing and improves query efficiency.
[Introducing Multi-Modal Index for the Lakehouse in Apache Hudi](https://www.onehouse.ai/blog/introducing-multi-modal-index-for-the-lakehouse-in-apache-hudi)

