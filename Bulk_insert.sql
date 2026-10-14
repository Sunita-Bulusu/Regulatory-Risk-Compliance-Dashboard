Insert into Dim_Year values
(2014),(2015),(2016),(2017),(2018), (2019),(2020),(2021),(2022),(2023);

BULK INSERT companies
FROM 'C:\python\companies.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);

bulk insert stress_test_results
from 'c:\python\stress_test_results.csv'
with (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    fieldterminator = ',',
    rowterminator = '\n'
    );


bulk insert cfpb_violations
from 'C:\Users\Kundeti\Desktop\Regulatory_Risk_Analytics\Data\cfpb_violations.csv'
with (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    fieldterminator = ',',
    rowterminator = '\n'
    );
select * from cfpb_violations;

bulk insert loan_limit_validation
from 'c:\python\loan_limit_validation.csv'
with (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    fieldterminator = ',',
    rowterminator = '\n'
    );

    select * from volcker_rule_compliance;


    BULK INSERT volcker_rule_compliance
    FROM 'C:\Python\volcker_rule_compliance.csv'
    WITH (
        FORMAT = 'CSV',
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n'
        );

BULK INSERT sox_control_testing
FROM 'c:\python\sox_control_testing.csv'
WITH (
       FORMAT = 'CSV',
       FIRSTROW = 2,
       FIELDTERMINATOR = ',',
       ROWTERMINATOR = '\n'
    );
select * from sox_control_testing;
  
BULK INSERT risk_control_matrix
    FROM 'C:\Python\risk_control_matrix.csv'
    WITH (
        FORMAT = 'CSV',
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n'
        ); 

    select * from risk_control_matrix;




*****************************************

BULK INSERT risk_control_matrix
FROM 'C:\Python\risk_control_matrix.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);

select * from risk_control_matrix;
delete from risk_control_matrix;

BULK INSERT internal_controls_violations
FROM 'C:\Python\internal_controls_violations.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
TABLOCK
);

BULK INSERT RCA_Lookup
FROM 'C:\Python\RCA_Lookup.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
TABLOCK
);
select * from RCA_Lookup;