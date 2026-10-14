create table Dim_Year (
year INT
);
CREATE TABLE companies (
    company_id INT,
    company_name VARCHAR(100),
    industry VARCHAR(100),
    total_assets_usd VARCHAR(50),
    risk_category VARCHAR(50),
    head_quarters VARCHAR(100),
    state VARCHAR(50),
    year INT,
    PRIMARY KEY (company_id, year)

);

CREATE TABLE stress_test_results (
    company_id INT NOT NULL,
    test_date DATE NOT NULL,
    capital_ratio DECIMAL(5,2) NOT NULL,
    stress_test_status VARCHAR(10) NOT NULL,
    violation_category VARCHAR(100),
    Regulation_ID VARCHAR(10),
    FOREIGN KEY (company_id)
    REFERENCES companies(company_id)
);
CREATE TABLE volcker_rule_compliance (
company_id INT NOT NULL,
compliance_year INT NOT NULL,
compliance_status VARCHAR(20) NOT NULL,
trading_exposure DECIMAL(18,2),
violation_category VARCHAR(100),
regulation_id VARCHAR(10)
FOREIGN KEY (company_id)
REFERENCES companies(company_id)
);


    CREATE TABLE cfpb_violations (
    company_id INT NOT NULL,
    penalty_amount DECIMAL(18,2) NOT NULL,
    violation_category VARCHAR (50) NOT NULL,
    violation_year INT NOT NULL,
    Regulation_ID VARCHAR(10) NOT NULL,
    Regulation_Name VARCHAR(100) NOT NULL,
    RCA_ID VARCHAR(10) NOT NULL,
    Risk_Level varchar(10) NOT NULL,
);

CREATE TABLE loan_limit_validation (
    company_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    validation_year INT NOT NULL,
    validation_amount DECIMAL(18,2) NOT NULL,
    validation_type VARCHAR(50) NOT NULL,
);

CREATE TABLE sox_control_testing(
control_id INT,
company_id INT,
control_name VARCHAR(255),
control_type VARCHAR(100),
test_year INT,
tester_name VARCHAR(100),
test_result VARCHAR(10),
issue_severity VARCHAR(20),
remediation_status VARCHAR(20),
);

CREATE TABLE risk_control_matrix (
    Regulation_Name VARCHAR(100),
    Risk_Category VARCHAR(150),
    Control_Type VARCHAR(50),
    Control_Objective VARCHAR(200),
    Control_Description VARCHAR(500),
    Control_Owner VARCHAR(100),
    Control_Frequency VARCHAR(50),
    Risk_Level VARCHAR(50),   
    kpi_metric VARCHAR(150),
    related_table VARCHAR(100),
    
); 

CREATE TABLE internal_controls_violations
(
company_id INT,
company_name VARCHAR(100),
violation_count INT,
violation_category VARCHAR(100),
violation_year INT,
Regulation_Id VARCHAR(10)
);

CREATE TABLE RCA_Lookup (
    RCA_ID VARCHAR(10) NOT NULL PRIMARY KEY,
    violation_category VARCHAR(100) NOT NULL,
    Primary_Root_cause VARCHAR(100) NOT NULL,
    Control_Gap VARCHAR(255) NOT NULL,
    Corrective_Action VARCHAR(255) NOT NULL,
    Risk_Level VARCHAR(50) NOT NULL
);



