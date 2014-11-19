CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_apc_all (
  first_asset_class STRING,
  ip_asset_class_loantype STRING,
  asset_pool_classification BIGINT,
  asset_pool_classification_name STRING,
  ip_asset_class_apc STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_apc';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_apc (
  first_asset_class STRING,
  ip_asset_class_loantype STRING,
  asset_pool_classification BIGINT,
  asset_pool_classification_name STRING,
  ip_asset_class_apc STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_apc';


CREATE EXTERNAL TABLE IF NOT EXISTS vorratsvermoegen_flag_all (
  company_code STRING,
  securities_account STRING,
  vorratsvermoegen_flag STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/vorratsvermoegen_flag';


CREATE EXTERNAL TABLE IF NOT EXISTS vorratsvermoegen_flag (
  company_code STRING,
  securities_account STRING,
  vorratsvermoegen_flag STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/vorratsvermoegen_flag';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_dali_id_all (
  entity STRING,
  dali_id STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_dali_id';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_dali_id (
  entity STRING,
  dali_id STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_dali_id';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_seniority_all (
  ip_asset_class_issuertype STRING,
  ip_asset_class_apc STRING,
  seniority STRING,
  seniority_name STRING,
  ip_asset_class_seniority STRING,
  comment STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_seniority';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_seniority (
  ip_asset_class_issuertype STRING,
  ip_asset_class_apc STRING,
  seniority STRING,
  seniority_name STRING,
  ip_asset_class_seniority STRING,
  comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_seniority';


CREATE EXTERNAL TABLE IF NOT EXISTS flow_all (
  business_transaction_year STRING,
  business_transaction_category_name STRING,
  flow STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/flow';


CREATE EXTERNAL TABLE IF NOT EXISTS flow (
  business_transaction_year STRING,
  business_transaction_category_name STRING,
  flow STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/flow';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_loan_type_all (
  first_asset_class STRING,
  product_bnl_security_type_key STRING,
  product_bnl_security_type_name STRING,
  subordination_level STRING,
  ip_asset_class_loantype STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_loan_type';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_loan_type (
  first_asset_class STRING,
  product_bnl_security_type_key STRING,
  product_bnl_security_type_name STRING,
  subordination_level STRING,
  ip_asset_class_loantype STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_loan_type';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_non_ltf_all (
  entity STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_non_ltf';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_non_ltf (
  entity STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_non_ltf';


CREATE EXTERNAL TABLE IF NOT EXISTS temp1_all (
  first_asset_class STRING,
  temp1 STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp1';


CREATE EXTERNAL TABLE IF NOT EXISTS temp1 (
  first_asset_class STRING,
  temp1 STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp1';


CREATE EXTERNAL TABLE IF NOT EXISTS temp2_all (
  second_asset_class STRING,
  temp2 STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp2';


CREATE EXTERNAL TABLE IF NOT EXISTS temp2 (
  second_asset_class STRING,
  temp2 STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp2';


CREATE EXTERNAL TABLE IF NOT EXISTS rate_all (
  bond_classification BIGINT,
  bond_classification_name STRING,
  rate STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/rate';


CREATE EXTERNAL TABLE IF NOT EXISTS rate (
  bond_classification BIGINT,
  bond_classification_name STRING,
  rate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/rate';


CREATE EXTERNAL TABLE IF NOT EXISTS ltf_code_all (
  company_code STRING,
  company_code_name STRING,
  ltf_code STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_code';


CREATE EXTERNAL TABLE IF NOT EXISTS ltf_code (
  company_code STRING,
  company_code_name STRING,
  ltf_code STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_code';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_isin_all (
  entity STRING,
  local_code_type STRING,
  local_code STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_isin';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_isin (
  entity STRING,
  local_code_type STRING,
  local_code STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_isin';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer_type_all (
  first_asset_class STRING,
  ip_asset_class_loan_type STRING,
  issuer_type BIGINT,
  issuer_type_name STRING,
  ip_asset_class_issuer_type STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer_type';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer_type (
  first_asset_class STRING,
  ip_asset_class_loan_type STRING,
  issuer_type BIGINT,
  issuer_type_name STRING,
  ip_asset_class_issuer_type STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer_type';


CREATE EXTERNAL TABLE IF NOT EXISTS ig_big_all (
  rating STRING,
  rating_name STRING,
  ig_big STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ig_big';


CREATE EXTERNAL TABLE IF NOT EXISTS ig_big (
  rating STRING,
  rating_name STRING,
  ig_big STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ig_big';


CREATE EXTERNAL TABLE IF NOT EXISTS fx_rate_used_all (
  valuation_currency STRING,
  fx_rate_used DECIMAL(10,6),
  fx_rate_date TIMESTAMP)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/fx_rate_used';


CREATE EXTERNAL TABLE IF NOT EXISTS fx_rate_used (
  valuation_currency STRING,
  fx_rate_used DECIMAL(10,6),
  fx_rate_date TIMESTAMP)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/fx_rate_used';


CREATE EXTERNAL TABLE IF NOT EXISTS alternative_credit_fund_name_all (
  dali_id STRING,
  description STRING,
  alternative_credit_fund_name STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/alternative_credit_fund_name';


CREATE EXTERNAL TABLE IF NOT EXISTS alternative_credit_fund_name (
  dali_id STRING,
  description STRING,
  alternative_credit_fund_name STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/alternative_credit_fund_name';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_first_asset_class_all (
  product_category STRING,
  product_category_name STRING,
  product_type STRING,
  product_type_name STRING,
  security_classification STRING,
  security_classification_name STRING,
  first_asset_class STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_first_asset_class';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_first_asset_class (
  product_category STRING,
  product_category_name STRING,
  product_type STRING,
  product_type_name STRING,
  security_classification STRING,
  security_classification_name STRING,
  first_asset_class STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_first_asset_class';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_ccode_all (
  company_code STRING,
  company_code_name STRING,
  activity_ccode STRING,
  isin STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ccode';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_ccode (
  company_code STRING,
  company_code_name STRING,
  activity_ccode STRING,
  isin STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ccode';


CREATE EXTERNAL TABLE IF NOT EXISTS ltf_flag_all (
  security_id STRING,
  security_id_name STRING,
  investment_in_ltf_flag STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_flag';


CREATE EXTERNAL TABLE IF NOT EXISTS ltf_flag (
  security_id STRING,
  security_id_name STRING,
  investment_in_ltf_flag STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_flag';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_ptf_type_all (
  portfolio_type_of_portfolio_key BIGINT,
  portfolio_type_of_portfolio_long_name STRING,
  activity_ptf_type STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ptf_type';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_ptf_type (
  portfolio_type_of_portfolio_key BIGINT,
  portfolio_type_of_portfolio_long_name STRING,
  activity_ptf_type STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ptf_type';


CREATE EXTERNAL TABLE IF NOT EXISTS crdb_industry_all (
  client STRING,
  industry STRING,
  crdb_industry_sector STRING,
  crdb_industry_sector_description STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_industry';


CREATE EXTERNAL TABLE IF NOT EXISTS crdb_industry (
  client STRING,
  industry STRING,
  crdb_industry_sector STRING,
  crdb_industry_sector_description STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_industry';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_strategy_all (
  strategy_pi2 STRING,
  temp2 STRING,
  ip_asset_class_strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_strategy';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_strategy (
  strategy_pi2 STRING,
  temp2 STRING,
  ip_asset_class_strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_strategy';


CREATE EXTERNAL TABLE IF NOT EXISTS area_region_entity_all (
  company_code STRING,
  company_code_name STRING,
  area STRING,
  region STRING,
  entity STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/area_region_entity';


CREATE EXTERNAL TABLE IF NOT EXISTS area_region_entity (
  company_code STRING,
  company_code_name STRING,
  area STRING,
  region STRING,
  entity STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/area_region_entity';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_aar_all (
  aar STRING,
  aar_name STRING,
  ip_asset_class_aar STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_aar';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_aar (
  aar STRING,
  aar_name STRING,
  ip_asset_class_aar STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_aar';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_sector_all (
  ip_asset_class_seniority STRING,
  crdb_industry_sector STRING,
  industry_name STRING,
  ip_asset_class_sector STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_sector';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_sector (
  ip_asset_class_seniority STRING,
  crdb_industry_sector STRING,
  industry_name STRING,
  ip_asset_class_sector STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_sector';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_country_all (
  first_asset_class STRING,
  issuer_fiscal_country_isv_key STRING,
  issuer_fiscal_country_isv_name STRING,
  ip_asset_class_country STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_country';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_country (
  first_asset_class STRING,
  issuer_fiscal_country_isv_key STRING,
  issuer_fiscal_country_isv_name STRING,
  ip_asset_class_country STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_country';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_split_all (
  company_code STRING,
  company_code_name STRING,
  activity_split STRING,
  split_ratio DECIMAL(10,6))
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_split';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_split (
  company_code STRING,
  company_code_name STRING,
  activity_split STRING,
  split_ratio DECIMAL(10,6))
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_split';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_inframidcap_all (
  issuer STRING,
  issuer_long_name STRING,
  strategies STRING,
  ip_asset_class_inframidcap STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_inframidcap';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_inframidcap (
  issuer STRING,
  issuer_long_name STRING,
  strategies STRING,
  ip_asset_class_inframidcap STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_inframidcap';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_profit_center_all (
  profit_center STRING,
  profit_center_name STRING,
  activity_profit_center STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_profit_center';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_profit_center (
  profit_center STRING,
  profit_center_name STRING,
  activity_profit_center STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_profit_center';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer_all (
  issuer STRING,
  issuer_name STRING,
  temp1 STRING,
  ip_asset_class_issuer STRING,
  comments_aar_et_matthieu STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer (
  issuer STRING,
  issuer_name STRING,
  temp1 STRING,
  ip_asset_class_issuer STRING,
  comments_aar_et_matthieu STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer';


CREATE EXTERNAL TABLE IF NOT EXISTS asset_class_hierarchy_all (
  final_ip_asset_class STRING,
  asset_class STRING,
  caa STRING,
  saa STRING,
  funded_name STRING,
  total STRING,
  sub_total STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/asset_class_hierarchy';


CREATE EXTERNAL TABLE IF NOT EXISTS asset_class_hierarchy (
  final_ip_asset_class STRING,
  asset_class STRING,
  caa STRING,
  saa STRING,
  funded_name STRING,
  total STRING,
  sub_total STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/asset_class_hierarchy';


