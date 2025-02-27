/*
===============================================================================
DDL Script: Create Gold Views
===============================================================================
Script Purpose:
    This script creates views for the Gold layer in the data warehouse. 
    The Gold layer represents the final dimension and fact tables (Star Schema)

    Each view performs transformations and combines data from the Silver layer 
    to produce a clean, enriched, and business-ready dataset.

Usage:
    - These views can be queried directly for analytics and reporting.
===============================================================================
*/

-- =============================================================================
-- Create Dimension: gold.dim_products
-- =============================================================================

IF OBJECT_ID ('gold.dim_products','V') IS NOT NULL
    DROP VIEW gold.dim_products;
GO
CREATE VIEW gold.dim_products AS
SELECT distinct
	ROW_NUMBER () OVER (ORDER BY pd.prd_start_dt,pd.prd_key) AS product_key, 
	pd.prd_id AS product_id,
	pd.prd_key product_number,
	pd.prd_nm AS product_name,
	pd.cat_id AS category_id,
	px.cat AS category ,
	px.subcat AS subcategory,
	px.maintenance AS maintenance,
	pd.prd_cost AS product_cost,
	pd.prd_line AS product_line,
	pd.prd_start_dt AS start_date

FROM silver.crm_prd_info pd
LEFT JOIN silver.erp_px_cat_g1v2 px
ON pd.cat_id = px.id
WHERE prd_end_dt IS NULL

GO 

-- =============================================================================
-- Create Dimension: gold.dim_customer
-- =============================================================================

IF OBJECT_ID ('gold.dim_customers','V') IS NOT NULL
    DROP VIEW gold.dim_customers;
GO

CREATE VIEW gold.dim_customers AS
SELECT 
	  ROW_NUMBER() OVER (ORDER BY cst_id) AS customer_key,	
	  ci.cst_id AS customer_id,
      ci.cst_key AS customer_number,
      ci.cst_firstname AS first_name,
      ci.cst_lastname AS last_name,
	  lc.cntry AS country,
      ci.cst_marital_status AS martial_status,
	  CASE 
		WHEN ci.cst_gndr != 'n/a' THEN ci.cst_gndr
			ELSE COALESCE (cz.gen,'n/a')
	  END AS gender,	
	  cz.bdate AS birthdate,
      ci.cst_create_date AS create_date
FROM silver.crm_cust_info ci
LEFT JOIN silver.erp_cuzt_az12 cz
ON ci.cst_key = cz.cid
LEFT JOIN silver.erp_loc_a101 lc
ON ci.cst_key = lc.cid

GO

-- =============================================================================
-- Create Dimension: gold.dim_sales
-- =============================================================================

IF OBJECT_ID ('gold.fact_sales','V') IS NOT NULL
    DROP VIEW gold.fact_sales;
GO

CREATE VIEW gold.fact_sales AS
SELECT 
	sd.sls_ord_num AS order_number,
	pr.product_key,
	cu.customer_key,
	sd.sls_order_dt AS order_date,
	sd.sls_ship_dt AS shipping_date,
	sd.sls_due_dt AS due_date,
	sd.sls_sales AS sales_amount,
	sd.sls_quantity AS quantity,
	sd.sls_price AS price
FROM silver.crm_sales_details sd
LEFT JOIN gold.dim_products pr
ON sd.sls_prd_key = pr.product_number
LEFT JOIN gold.dim_customers cu
ON sd.sls_cust_id = cu.customer_id

GO

