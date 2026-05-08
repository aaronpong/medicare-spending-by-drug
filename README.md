Medicare Part D Drug Spending Dashboard (2024)
An end-to-end data analysis project using CMS Medicare Part D public data to explore drug spending trends, top manufacturers, specialty drug costs, and year-over-year comparisons. Data was loaded into PostgreSQL, queried with SQL, and visualized in an interactive Tableau Public dashboard.
📊 View the Interactive Dashboard on Tableau Public

Project Overview
Medicare Part D covers prescription drugs for millions of Americans. This project analyzes CMS spending data to identify which drugs and manufacturers account for the largest share of Medicare spending, highlight high-cost specialty drugs for rare diseases, and track spending trends across 2024 and 2025.

Tools & Technologies

PostgreSQL — database storage and querying
DBeaver — database management and SQL execution
SQL — data cleaning, aggregation, and analysis
Tableau Public — interactive dashboard and visualization


Data Source
CMS Medicare Part D Spending by Drug

Source: Centers for Medicare & Medicaid Services (CMS)
Coverage: 2024 (Q1-Q4) and 2025 (Q1-Q3)
Records: 28,833 rows across brand name drugs, generic names, manufacturers, and spending metrics


Repository Structure
├── data/
│   ├── top_drugs_spending.csv
│   ├── top_manufacturers.csv
│   ├── specialty_drug_costs.csv
│   └── yoy_comparison.csv
├── medicare_drug_spending.sql
├── Medicare Spending by Drug 2024.twb
└── README.md

SQL Analysis
Four analytical queries were built to drive the dashboard:
1. Top 10 Drugs by Total Spending
Filters to "Overall" manufacturer rows to avoid double-counting and ranks drugs by total Medicare spending in 2024.
2. Top 10 Manufacturers by Total Spending
Aggregates spending at the manufacturer level, excluding overall rollup rows, to identify which companies receive the most Medicare reimbursement.
3. High-Cost Specialty Drugs
Identifies drugs with the highest average spending per beneficiary — revealing ultra-rare disease treatments that cost over $600K per patient annually despite serving very small patient populations.
4. Year-Over-Year Comparison
Compares total spending for the top 5 drugs between 2024 (full year) and 2025 (Q1-Q3 partial year) to identify spending trajectory.

Key Findings

Eliquis (Apixaban) was the highest-spending Medicare drug in 2024, driven by high claim volume across a large beneficiary population
BMS Primarycare led all manufacturers in total Medicare reimbursement
Exondys-51, a Duchenne muscular dystrophy treatment, had the highest cost per beneficiary at over $1.4M annually — serving only 18 Medicare patients
Several top drugs like Ozempic and Mounjaro show 2025 spending already trending toward or exceeding their 2024 totals despite being partial-year data


Dashboard
The Tableau dashboard includes four panels:

Top 10 Medicare Drugs by Total Spending (2024)
Top 10 Manufacturers by Total Spending (2024)
Top 10 Highest Cost-Per-Patient Specialty Drugs (2024)
Top 5 Drug Spending: 2024 vs 2025 Year-Over-Year Comparison

📊 View the Interactive Dashboard on Tableau Public
