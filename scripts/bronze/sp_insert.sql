EXEC bronze.load_bronze;

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	PRINT '======================================================';
	PRINT 'Loading Bronze Layer';
	PRINT '======================================================';

	PRINT '------------------------------------------------------';
	PRINT 'Loading CRM Tables';
	PRINT '------------------------------------------------------';

	PRINT '>> Truncating Table: CRM_CUST_INFO';
	TRUNCATE TABLE bronze.crm_cust_info;
	
	PRINT '>> Inserting data into CRM_CUST_INFO';
	BULK INSERT bronze.crm_cust_info
	FROM 'C:\sql-data-warehouse\datasets\source_crm\cust_info.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	PRINT '>> Truncating Table: CRM_PRD_INFO';
	TRUNCATE TABLE bronze.crm_prd_info;
	
	PRINT '>> Inserting data into CRM_PRD_INFO';
	BULK INSERT bronze.crm_prd_info
	FROM 'C:\sql-data-warehouse\datasets\source_crm\prd_info.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	PRINT '>> Truncating Table: CRM_SALES_DETAILS';
	TRUNCATE TABLE bronze.crm_sales_details;

	PRINT '>> Inserting data into CRM_SALES_DETAILS';
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\sql-data-warehouse\datasets\source_crm\sales_details.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	PRINT '------------------------------------------------------';
	PRINT 'Loading CRM Tables';
	PRINT '------------------------------------------------------';

	PRINT '>> Truncating Table: ERP_CUST_AZ12';
	TRUNCATE TABLE bronze.erp_cust_az12;
	
	PRINT '>> Inserting data into: ERP_CUST_AZ12';
	BULK INSERT bronze.erp_cust_az12
	FROM 'C:\sql-data-warehouse\datasets\source_erp\CUST_AZ12.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	PRINT '>> Truncating Table: ERP_LOC_A101';
	TRUNCATE TABLE bronze.erp_loc_a101;
	
	PRINT '>> Inserting data into ERP_LOC_A101';
	BULK INSERT bronze.erp_loc_a101
	FROM 'C:\sql-data-warehouse\datasets\source_erp\LOC_A101.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	PRINT '>> Truncating Table: ERP_PX_CAT_G1V2';
	TRUNCATE TABLE bronze.erp_px_cat_g1v2;
	
	PRINT '>> Inserting data into ERP_PX_CAT_G1V2';
	BULK INSERT bronze.erp_px_cat_g1v2
	FROM 'C:\sql-data-warehouse\datasets\source_erp\PX_CAT_G1V2.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
END
