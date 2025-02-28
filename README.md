# Modern SQL Data Warehouse Project

![Data Integration Model](https://github.com/Gkkumar2/SQL-DW-Project/blob/main/Docs/datawarehouse.jpeg)

---

## 🚀 Introduction
Welcome to the **Modern SQL Data Warehouse Project**! This project is designed to help you build a **fully functional data warehouse** from scratch, while also learning real-world best practices and methodologies used in **industry-leading companies**.

This project is beneficial for:
- **Data Architects** - Learn how to design a modern data architecture.
- **Data Engineers** - Write code for data transformation, cleaning, and loading.
- **Data Modelers** - Understand and implement data modeling concepts.

---

## 📌 Project Overview
This project focuses on building a **SQL-based data warehouse** to consolidate **sales data** from multiple sources, enabling analytical reporting and informed decision-making.

### 🎯 Key Objectives
- **Develop a SQL Server Data Warehouse**
- **Extract, Transform, and Load (ETL) Data from Multiple Sources**
- **Clean and Fix Data Quality Issues**
- **Integrate and Model Data for Reporting**
- **Provide Clear Documentation**

### 📂 Data Sources
We will use **two data sources**:
1. **ERP System** (CSV files)
2. **CRM System** (CSV files)

Both sources will be **consolidated and integrated** into a single **analytical data model**.

📌 *Data Integration Model*
![Data Integration Model](https://github.com/Gkkumar2/SQL-DW-Project/blob/main/Docs/Intergration%20model%20(1).jpeg)

---

## 🏗️ Data Architecture

### 🌐 Approach
We will be using the **Medallion Architecture**, which consists of three main layers:
1. **Bronze Layer** - Raw data storage (untouched source data)
2. **Silver Layer** - Cleaned and standardized data
3. **Gold Layer** - Business-ready data for reporting

📌 *Data Architecture Overview*
![Data Architecture](https://github.com/Gkkumar2/SQL-DW-Project/blob/main/Docs/Data%20architect.jpeg)


### 🔧 ETL Process
The **ETL process** (Extract, Transform, Load) is critical to ensuring data quality and usability. Our pipeline follows these steps:
1. **Extract:** Pull data from source systems (ERP & CRM CSV files)
2. **Transform:** Apply **data cleansing, normalization, and enrichment**
3. **Load:** Store the transformed data into the data warehouse

📌 *ETL Workflow*
![ETL Workflow](https://github.com/Gkkumar2/SQL-DW-Project/blob/main/Docs/data%20flow.jpeg)

---

## 📊 Data Modeling
The project follows the **Star Schema** modeling approach, which consists of:
- **Fact Tables** - Storing transactional data
- **Dimension Tables** - Storing descriptive information

📌 * Data Model (Star Schema) *
![Data Model](https://github.com/Gkkumar2/SQL-DW-Project/blob/main/Docs/star%20schema.jpeg)

---

## ⚙️ Tools & Technologies Used
- **Database:** SQL Server
- **ETL Processing:** SQL-based transformations
- **Data Visualization:** Power BI / Tableau
- **Project Management:** Notion
- **Version Control:** GitHub
- **Diagramming Tool:** Lucidchart

---

## 📁 Project Structure
```
📂 Modern-SQL-Data-Warehouse
├── 📂 Data-Sources
│   ├── CRM.csv
│   ├── ERP.csv
│
├── 📂 Scripts
│   ├── 01_create_database.sql
│   ├── 02_create_schemas.sql
│   ├── 03_load_data.sql
│
├── 📂 Documentation
│   ├── Data_Model_Diagram.png
│   ├── ETL_Workflow.png
│   ├── Star Schema.png
│
├── 📜 README.md
```

---

## 📖 Installation & Setup
1. **Clone this repository**:
   ```bash
   git clone https://github.com/your-repo/Modern-SQL-Data-Warehouse.git
   ```
2. **Set up SQL Server and Management Studio**.
3. **Load the CSV files into the appropriate database tables**.
4. **Execute the SQL scripts in the `/Scripts` folder**.
5. **Use Power BI / Tableau to connect to the database for reporting**.

---

## 🗂️ Project Plan & Task Management
This project follows an **agile approach** and is managed using **Notion**. The key project phases include:
1. **Requirement Analysis**
2. **Data Architecture Design**
3. **Project Initialization (Setting up Git, Repo Structure, Naming Conventions)**
4. **Building ETL Processes (Bronze → Silver → Gold)**
5. **Developing Data Models**
6. **Testing & Validation**
7. **Final Documentation & Deployment**

---


## 📜 License
This project is licensed under the **MIT License**.

---

## 📬 Contact
For any questions or discussions, feel free to reach out:
- **LinkedIn**: [Your Name](https://linkedin.com/in/yourprofile)
- **GitHub Issues**: Open a ticket if you encounter any issues

---

## 🎯 Next Steps
- [ ] Finalize database schema
- [ ] Implement ETL pipeline
- [ ] Create data visualizations and dashboards
- [ ] Document data model & ETL workflow

Happy Coding! 🚀
---
## 🎯 Next part
[Next](https://linkedin.com/in/yourprofile)
