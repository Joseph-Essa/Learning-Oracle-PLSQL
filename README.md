# Oracle PL/SQL Learning Repository

Welcome! This repository contains SQL and PL/SQL queries I use for hands-on learning and practice with Oracle Database.  
It serves as a personal knowledge base and a practical reference for anyone who wants to get started with Oracle SQL and PL/SQL fundamentals.

---

## 📦 Project Overview

- **Purpose:** Store and organize queries as I learn Oracle PL/SQL.
- **Environment:**  
  - ✅ **Primary:** Oracle Database XE installed locally on Windows.
  - ⚙️ **Optional:** A pre-configured Oracle XE Docker image (I created this for convenience, but I mainly use the Windows installation).

---

## 🚀 Getting Started

If you want to reproduce my setup:

1. **Install Oracle Database XE**  
   - [Download Oracle XE](https://www.oracle.com/database/technologies/xe-downloads.html) and follow the official installation guide for your operating system.

2. **Unlock and set up the `HR` sample schema:**  
   Open Oracle SQLcl or SQL*Plus and run:
   ```sql
   CONN system/`Password that you Set while oracle installation`@//localhost:1521/XE
   ALTER USER hr ACCOUNT UNLOCK IDENTIFIED BY `Your New Password `;

3. **Clone the Repo**
   ``` bash
     https://github.com/Joseph-Essa/Learning-Oracle-PLSQL.git
   ```

## 📁 Repository Structure
```
Learning-Oracle-PLSQL/
├── docker/
│   ├── .env.example
│   ├── .gitignore
│   └── docker-compose.yml
├── src/
    ├── SQL/
│   ├── PLSQL/
│   └── Test_Connection.sql
├── README.md

```