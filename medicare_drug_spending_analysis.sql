-- Check total row count
SELECT COUNT(*) FROM public.medicare_drug_spending;

-- Check for nulls in key columns
SELECT COUNT(*) FROM public.medicare_drug_spending WHERE "Tot_Spndng" IS NULL;

-- Check distinct years available
SELECT DISTINCT "Year" FROM public.medicare_drug_spending;

-- Check if Overall vs manufacturer rows are separate (they are based on Tot_Mftr)
SELECT "Tot_Mftr", COUNT(*) FROM public.medicare_drug_spending GROUP BY "Tot_Mftr" ORDER BY "Tot_Mftr";

-- Top 10 drugs by total spending (2024 full year)
SELECT "Brnd_Name", "Gnrc_Name", "Tot_Spndng", "Tot_Benes", "Tot_Clms"
FROM public.medicare_drug_spending
WHERE "Mftr_Name" = 'Overall' AND "Year" = '2024 (Q1-Q4)'
ORDER BY "Tot_Spndng" DESC
LIMIT 10;

-- Top 10 manufacturers by total spending
SELECT "Mftr_Name", SUM("Tot_Spndng") AS total_spend
FROM public.medicare_drug_spending
WHERE "Mftr_Name" != 'Overall' AND "Year" = '2024 (Q1-Q4)'
GROUP BY "Mftr_Name"
ORDER BY total_spend DESC
LIMIT 10;

-- Avg spend per beneficiary by drug (cost efficiency)
SELECT "Brnd_Name", "Avg_Spnd_Per_Bene", "Tot_Benes"
FROM public.medicare_drug_spending
WHERE "Mftr_Name" = 'Overall' 
  AND "Year" = '2024 (Q1-Q4)'
  AND "Avg_Spnd_Per_Bene" IS NOT NULL
ORDER BY "Avg_Spnd_Per_Bene" DESC
LIMIT 10;

-- Year-over-year comparison (2024 vs 2025 partial)
SELECT "Brnd_Name", "Year", "Tot_Spndng"
FROM public.medicare_drug_spending
WHERE "Mftr_Name" = 'Overall'
ORDER BY "Brnd_Name", "Year";




