CREATE EXTERNAL TABLE IF NOT EXISTS crdb_der_all (
  type_of_derivative_code STRING COMMENT 'Type of Derivative(Code)',
  sophis_position_id STRING COMMENT 'Sophis Position ID',
  axa_entity STRING COMMENT 'AXA Entity',
  nature_of_fund STRING COMMENT 'Nature Of Fund',
  shareholder_exposure STRING COMMENT 'Shareholder Exposure',
  company_name STRING COMMENT 'Company Name',
  portfolio STRING COMMENT 'Portfolio',
  ara_portfolio STRING COMMENT 'ARA Portfolio',
  type_of_derivative_name STRING COMMENT 'Type of Derivative (name)',
  long_payer_short_receiver STRING COMMENT 'Long (Payer) _ Short (receiver)',
  axa_instrument STRING COMMENT 'Axa Instrument',
  instrument_name STRING COMMENT 'Instrument Name',
  market_value DECIMAL(20,4) COMMENT 'Market Value',
  mtm_after_collateral DECIMAL(20,4) COMMENT 'MTM After Collateral',
  notional DECIMAL(20,4) COMMENT 'Notional',
  quantity DECIMAL(20,4) COMMENT 'Quantity',
  economic_exposure STRING COMMENT 'Economic Exposure',
  asset_manager STRING COMMENT 'Asset Manager',
  valuation_type STRING COMMENT 'Valuation Type',
  unit_price DECIMAL(20,4) COMMENT 'Unit Price',
  unit_price_currency STRING COMMENT 'Unit Price Currency',
  unit_price_exchange_rate DECIMAL(20,4) COMMENT 'Unit price Exchange Rate',
  issue_date TIMESTAMP COMMENT 'Issue Date',
  starting_date TIMESTAMP COMMENT 'Starting Date',
  maturity_date TIMESTAMP COMMENT 'Maturity Date',
  maturity_category STRING COMMENT 'Maturity Category',
  currency STRING COMMENT 'Currency',
  package_code STRING COMMENT 'Package Code',
  basket_strategy STRING COMMENT 'Basket_strategy',
  segment STRING COMMENT 'Segment',
  magnitude_account STRING COMMENT 'Magnitude Account',
  magnitude_package STRING COMMENT 'Magnitude Package',
  magnitude_annex_account STRING COMMENT 'Magnitude Annex Account',
  hedge_accounting_category STRING COMMENT 'Hedge Accounting Category',
  mutual_fund_code STRING COMMENT 'Mutual Fund code',
  mutual_fund_name STRING COMMENT 'Mutual Fund Name',
  mutual_fund_code_2 STRING COMMENT 'Mutual Fund Code 2',
  mutual_fund_name_2 STRING COMMENT 'Mutual Fund Name 2',
  isda STRING COMMENT 'ISDA',
  counterparty_name STRING COMMENT 'Counterparty Name',
  counterparty_code STRING COMMENT 'Counterparty Code',
  counterparty_rating STRING COMMENT 'Counterparty rating',
  counterparty_rating_origin STRING COMMENT 'counterparty rating origin',
  counterparty_sector STRING COMMENT 'counterparty sector',
  counterparty_issuer_industry_group STRING COMMENT 'Counterparty issuer industry group',
  counterparty_issuer_industry_subgroup STRING COMMENT 'Counterparty issuer industry subgroup',
  counterparty_country STRING COMMENT 'Counterparty Country',
  counterparty_ultimateshareholder_name STRING COMMENT 'Counterparty ultimateshareholder name',
  counterparty_ultimateshareholder_axa_rating STRING COMMENT 'Counterparty ultimateshareholder Axa rating',
  counterparty_ultimateshareholder_rating_origin STRING COMMENT 'Counterparty ultimateshareholder rating origin',
  counterparty_ultimateshareholder_country STRING COMMENT 'Counterparty ultimateshareholder Country',
  rl_issuer_name STRING COMMENT 'RL Issuer Name',
  rl_issuer_idbb_company STRING COMMENT 'RL Issuer IDBB Company',
  rl_issuer_rating STRING COMMENT 'RL Issuer Rating',
  rl_issuer_rating_origin STRING COMMENT 'RL Issuer Rating Origin',
  rl_issuer_sector STRING COMMENT 'RL Issuer Sector',
  rl_issuer_industry_group STRING COMMENT 'RL issuer industry group',
  rl_issuer_industry_subgroup STRING COMMENT 'RL issuer industry subgroup',
  rl_issuer_country STRING COMMENT 'RL Issuer Country',
  rl_ultimateshareholder_name STRING COMMENT 'RL ultimateshareholder Name',
  rl_ultimateshareholder_axa_rating STRING COMMENT 'RL ultimateshareholder Axa Rating',
  rl_ultimateshareholder_rating_origin STRING COMMENT 'RL ultimateshareholder Rating Origin',
  rl_ultimateshareholder_country STRING COMMENT 'RL ultimateshareholder Country',
  rl_index_name STRING COMMENT 'RL Index Name',
  rl_index_type STRING COMMENT 'RL Index Type',
  rl_security_code_type STRING COMMENT 'RL Security Code Type',
  rl_security_code STRING COMMENT 'RL Security Code',
  rl_security_rating STRING COMMENT 'RL Security Rating',
  rl_security_rating_origin STRING COMMENT 'RL Security Rating Origin',
  rl_security_seniority STRING COMMENT 'RL Security Seniority',
  rl_nature_of_underlying STRING COMMENT 'RL Nature of Underlying',
  rl_payment_frequency DECIMAL(20,4) COMMENT 'RL Payment Frequency',
  rl_spread_strike_forex DECIMAL(20,4) COMMENT 'RL Spread_Strike_Forex',
  rl_spot_of_reference DECIMAL(20,4) COMMENT 'RL Spot Of Reference',
  rl_currency STRING COMMENT 'RL Currency',
  rl_day_count_basis STRING COMMENT 'RL Day Count Basis',
  pl_issuer_name STRING COMMENT 'PL Issuer Name',
  pl_issuer_bb_code STRING COMMENT 'PL Issuer BB Code',
  pl_issuer_axa_rating STRING COMMENT 'PL Issuer Axa Rating',
  pl_issuer_axa_rating_origin STRING COMMENT 'PL Issuer Axa Rating Origin',
  pl_issuer_industry_sector STRING COMMENT 'PL Issuer Industry Sector',
  pl_issuer_industry_group STRING COMMENT 'PL issuer industry group',
  pl_issuer_industry_subgroup STRING COMMENT 'PL issuer industry subgroup',
  pl_issuer_country STRING COMMENT 'PL Issuer Country',
  pl_ultimateshareholder_name STRING COMMENT 'PL ultimateshareholder Name',
  pl_ultimateshareholder_axa_rating STRING COMMENT 'PL ultimateshareholder Axa Rating',
  pl_ultimateshareholder_rating_origin STRING COMMENT 'PL ultimateshareholder Rating Origin',
  pl_ultimateshareholder_country STRING COMMENT 'PL ultimateshareholder Country',
  pl_index_name STRING COMMENT 'PL Index Name',
  pl_index_type STRING COMMENT 'PL index type',
  pl_security_code_type STRING COMMENT 'PL Security Code Type',
  pl_security_code STRING COMMENT 'PL Security Code',
  pl_security_rating STRING COMMENT 'PL Security Rating',
  pl_security_rating_origin STRING COMMENT 'PL Security Rating Origin',
  pl_seniority STRING COMMENT 'PL Seniority',
  pl_nature_of_underlying STRING COMMENT 'PL Nature of Underlying',
  pl_payment_frequency DECIMAL(20,4) COMMENT 'PL Payment Frequency',
  pl_spread_strike_forex DECIMAL(20,4) COMMENT 'PL Spread_strike_Forex',
  pl_spot_of_reference DECIMAL(20,4) COMMENT 'PL spot of reference',
  pl_currency STRING COMMENT 'PL Currency',
  pl_day_count_basis STRING COMMENT 'PL Day count Basis',
  upload_origin STRING COMMENT 'Upload Origin',
  stec_upload STRING COMMENT 'STEC upload',
  initial_forex_rate DECIMAL(20,4) COMMENT 'Initial Forex Rate',
  exchage_notional STRING COMMENT 'Exchage Notional',
  barrier_level DECIMAL(20,4) COMMENT 'Barrier level',
  type_of_barier STRING COMMENT 'Type of Barier',
  proceed_ratio DECIMAL(20,4) COMMENT 'Proceed Ratio',
  rl_notional DECIMAL(20,4) COMMENT 'RL Notional',
  pl_notional DECIMAL(20,4) COMMENT 'PL Notional',
  prorata_temporis STRING COMMENT 'Prorata Temporis',
  internal_transaction_indicator STRING COMMENT 'Internal Transaction Indicator',
  notional_deflation_protected STRING COMMENT 'Notional Deflation Protected')
PARTITIONED BY (yyyy STRING, mm STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_der';


CREATE EXTERNAL TABLE IF NOT EXISTS crdb_der (
  type_of_derivative_code STRING COMMENT 'Type of Derivative(Code)',
  sophis_position_id STRING COMMENT 'Sophis Position ID',
  axa_entity STRING COMMENT 'AXA Entity',
  nature_of_fund STRING COMMENT 'Nature Of Fund',
  shareholder_exposure STRING COMMENT 'Shareholder Exposure',
  company_name STRING COMMENT 'Company Name',
  portfolio STRING COMMENT 'Portfolio',
  ara_portfolio STRING COMMENT 'ARA Portfolio',
  type_of_derivative_name STRING COMMENT 'Type of Derivative (name)',
  long_payer_short_receiver STRING COMMENT 'Long (Payer) _ Short (receiver)',
  axa_instrument STRING COMMENT 'Axa Instrument',
  instrument_name STRING COMMENT 'Instrument Name',
  market_value DECIMAL(20,4) COMMENT 'Market Value',
  mtm_after_collateral DECIMAL(20,4) COMMENT 'MTM After Collateral',
  notional DECIMAL(20,4) COMMENT 'Notional',
  quantity DECIMAL(20,4) COMMENT 'Quantity',
  economic_exposure STRING COMMENT 'Economic Exposure',
  asset_manager STRING COMMENT 'Asset Manager',
  valuation_type STRING COMMENT 'Valuation Type',
  unit_price DECIMAL(20,4) COMMENT 'Unit Price',
  unit_price_currency STRING COMMENT 'Unit Price Currency',
  unit_price_exchange_rate DECIMAL(20,4) COMMENT 'Unit price Exchange Rate',
  issue_date TIMESTAMP COMMENT 'Issue Date',
  starting_date TIMESTAMP COMMENT 'Starting Date',
  maturity_date TIMESTAMP COMMENT 'Maturity Date',
  maturity_category STRING COMMENT 'Maturity Category',
  currency STRING COMMENT 'Currency',
  package_code STRING COMMENT 'Package Code',
  basket_strategy STRING COMMENT 'Basket_strategy',
  segment STRING COMMENT 'Segment',
  magnitude_account STRING COMMENT 'Magnitude Account',
  magnitude_package STRING COMMENT 'Magnitude Package',
  magnitude_annex_account STRING COMMENT 'Magnitude Annex Account',
  hedge_accounting_category STRING COMMENT 'Hedge Accounting Category',
  mutual_fund_code STRING COMMENT 'Mutual Fund code',
  mutual_fund_name STRING COMMENT 'Mutual Fund Name',
  mutual_fund_code_2 STRING COMMENT 'Mutual Fund Code 2',
  mutual_fund_name_2 STRING COMMENT 'Mutual Fund Name 2',
  isda STRING COMMENT 'ISDA',
  counterparty_name STRING COMMENT 'Counterparty Name',
  counterparty_code STRING COMMENT 'Counterparty Code',
  counterparty_rating STRING COMMENT 'Counterparty rating',
  counterparty_rating_origin STRING COMMENT 'counterparty rating origin',
  counterparty_sector STRING COMMENT 'counterparty sector',
  counterparty_issuer_industry_group STRING COMMENT 'Counterparty issuer industry group',
  counterparty_issuer_industry_subgroup STRING COMMENT 'Counterparty issuer industry subgroup',
  counterparty_country STRING COMMENT 'Counterparty Country',
  counterparty_ultimateshareholder_name STRING COMMENT 'Counterparty ultimateshareholder name',
  counterparty_ultimateshareholder_axa_rating STRING COMMENT 'Counterparty ultimateshareholder Axa rating',
  counterparty_ultimateshareholder_rating_origin STRING COMMENT 'Counterparty ultimateshareholder rating origin',
  counterparty_ultimateshareholder_country STRING COMMENT 'Counterparty ultimateshareholder Country',
  rl_issuer_name STRING COMMENT 'RL Issuer Name',
  rl_issuer_idbb_company STRING COMMENT 'RL Issuer IDBB Company',
  rl_issuer_rating STRING COMMENT 'RL Issuer Rating',
  rl_issuer_rating_origin STRING COMMENT 'RL Issuer Rating Origin',
  rl_issuer_sector STRING COMMENT 'RL Issuer Sector',
  rl_issuer_industry_group STRING COMMENT 'RL issuer industry group',
  rl_issuer_industry_subgroup STRING COMMENT 'RL issuer industry subgroup',
  rl_issuer_country STRING COMMENT 'RL Issuer Country',
  rl_ultimateshareholder_name STRING COMMENT 'RL ultimateshareholder Name',
  rl_ultimateshareholder_axa_rating STRING COMMENT 'RL ultimateshareholder Axa Rating',
  rl_ultimateshareholder_rating_origin STRING COMMENT 'RL ultimateshareholder Rating Origin',
  rl_ultimateshareholder_country STRING COMMENT 'RL ultimateshareholder Country',
  rl_index_name STRING COMMENT 'RL Index Name',
  rl_index_type STRING COMMENT 'RL Index Type',
  rl_security_code_type STRING COMMENT 'RL Security Code Type',
  rl_security_code STRING COMMENT 'RL Security Code',
  rl_security_rating STRING COMMENT 'RL Security Rating',
  rl_security_rating_origin STRING COMMENT 'RL Security Rating Origin',
  rl_security_seniority STRING COMMENT 'RL Security Seniority',
  rl_nature_of_underlying STRING COMMENT 'RL Nature of Underlying',
  rl_payment_frequency DECIMAL(20,4) COMMENT 'RL Payment Frequency',
  rl_spread_strike_forex DECIMAL(20,4) COMMENT 'RL Spread_Strike_Forex',
  rl_spot_of_reference DECIMAL(20,4) COMMENT 'RL Spot Of Reference',
  rl_currency STRING COMMENT 'RL Currency',
  rl_day_count_basis STRING COMMENT 'RL Day Count Basis',
  pl_issuer_name STRING COMMENT 'PL Issuer Name',
  pl_issuer_bb_code STRING COMMENT 'PL Issuer BB Code',
  pl_issuer_axa_rating STRING COMMENT 'PL Issuer Axa Rating',
  pl_issuer_axa_rating_origin STRING COMMENT 'PL Issuer Axa Rating Origin',
  pl_issuer_industry_sector STRING COMMENT 'PL Issuer Industry Sector',
  pl_issuer_industry_group STRING COMMENT 'PL issuer industry group',
  pl_issuer_industry_subgroup STRING COMMENT 'PL issuer industry subgroup',
  pl_issuer_country STRING COMMENT 'PL Issuer Country',
  pl_ultimateshareholder_name STRING COMMENT 'PL ultimateshareholder Name',
  pl_ultimateshareholder_axa_rating STRING COMMENT 'PL ultimateshareholder Axa Rating',
  pl_ultimateshareholder_rating_origin STRING COMMENT 'PL ultimateshareholder Rating Origin',
  pl_ultimateshareholder_country STRING COMMENT 'PL ultimateshareholder Country',
  pl_index_name STRING COMMENT 'PL Index Name',
  pl_index_type STRING COMMENT 'PL index type',
  pl_security_code_type STRING COMMENT 'PL Security Code Type',
  pl_security_code STRING COMMENT 'PL Security Code',
  pl_security_rating STRING COMMENT 'PL Security Rating',
  pl_security_rating_origin STRING COMMENT 'PL Security Rating Origin',
  pl_seniority STRING COMMENT 'PL Seniority',
  pl_nature_of_underlying STRING COMMENT 'PL Nature of Underlying',
  pl_payment_frequency DECIMAL(20,4) COMMENT 'PL Payment Frequency',
  pl_spread_strike_forex DECIMAL(20,4) COMMENT 'PL Spread_strike_Forex',
  pl_spot_of_reference DECIMAL(20,4) COMMENT 'PL spot of reference',
  pl_currency STRING COMMENT 'PL Currency',
  pl_day_count_basis STRING COMMENT 'PL Day count Basis',
  upload_origin STRING COMMENT 'Upload Origin',
  stec_upload STRING COMMENT 'STEC upload',
  initial_forex_rate DECIMAL(20,4) COMMENT 'Initial Forex Rate',
  exchage_notional STRING COMMENT 'Exchage Notional',
  barrier_level DECIMAL(20,4) COMMENT 'Barrier level',
  type_of_barier STRING COMMENT 'Type of Barier',
  proceed_ratio DECIMAL(20,4) COMMENT 'Proceed Ratio',
  rl_notional DECIMAL(20,4) COMMENT 'RL Notional',
  pl_notional DECIMAL(20,4) COMMENT 'PL Notional',
  prorata_temporis STRING COMMENT 'Prorata Temporis',
  internal_transaction_indicator STRING COMMENT 'Internal Transaction Indicator',
  notional_deflation_protected STRING COMMENT 'Notional Deflation Protected')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_der';


CREATE EXTERNAL TABLE IF NOT EXISTS crdb_phy_all (
  issuer_long_name STRING COMMENT 'Issuer Long Name',
  entity STRING COMMENT 'Entity',
  axa_holding_type STRING COMMENT 'Axa Holding Type',
  detailed_instrument STRING COMMENT 'Detailed Instrument',
  technical_quantity DECIMAL(38,10) COMMENT 'Technical Quantity',
  axa_market_value_currency DECIMAL(38,10) COMMENT 'Axa Market Value Currency',
  net_amount DECIMAL(38,10) COMMENT 'Net Amount',
  unit_price_mark_to_market DECIMAL(38,10) COMMENT 'Unit Price Mark To Market',
  unit_price_currency STRING COMMENT 'Unit Price Currency',
  unit_price_forex_rate DECIMAL(38,10) COMMENT 'Unit Price Forex Rate',
  unit_price_mark_to_model DECIMAL(38,10) COMMENT 'Unit Price Mark To Model',
  market_value_mark_to_model DECIMAL(38,10) COMMENT 'Market Value Mark To Model',
  accrued_interest DECIMAL(38,10) COMMENT 'Accrued Interest',
  axa_external_issuer_rating STRING COMMENT 'Axa External Issuer Rating',
  axa_internal_issuer_rating STRING COMMENT 'Axa Internal Issuer Rating',
  axa_internal_issuer_rating_origin STRING COMMENT 'Axa Internal Issuer Rating Origin',
  axa_external_rating STRING COMMENT 'Axa External Rating',
  axa_internal_rating STRING COMMENT 'Axa Internal Rating',
  axa_internal_rating_origin STRING COMMENT 'Axa Internal Rating Origin',
  issuer_industry_sector STRING COMMENT 'Issuer Industry Sector',
  issuer_nationality STRING COMMENT 'Issuer Nationality',
  nature_of_fund STRING COMMENT 'Nature Of Fund',
  quantity DECIMAL(38,10) COMMENT 'Quantity',
  magnitude_account STRING COMMENT 'Magnitude Account',
  magnitude_accounting_category STRING COMMENT 'Magnitude Accounting Category',
  magnitude_package STRING COMMENT 'Magnitude Package',
  operating_company STRING COMMENT 'Operating Company',
  portfolio_code STRING COMMENT 'Portfolio Code',
  portfolio_ara_code STRING COMMENT 'Portfolio ARA Code',
  isin_code STRING COMMENT 'ISIN Code',
  local_code_type STRING COMMENT 'Local Code Type',
  local_code STRING COMMENT 'Local Code',
  bloomberg_id_security BIGINT COMMENT 'Bloomberg ID Security',
  bloomberg_id_unique STRING COMMENT 'Bloomberg ID Unique',
  issuer_short_name STRING COMMENT 'Issuer Short Name',
  ultimate_shareholder STRING COMMENT 'Ultimate Shareholder',
  ultimate_shareholder_rating STRING COMMENT 'Ultimate ShareHolder Rating',
  ultimate_shareholder_country STRING COMMENT 'Ultimate ShareHolder Country',
  mutual_fund_code STRING COMMENT 'Mutual Fund code',
  mutual_fund_name STRING COMMENT 'Mutual Fund Name',
  mutual_fund_code_2 STRING COMMENT 'Mutual Fund Code 2',
  mutual_fund_name_2 STRING COMMENT 'Mutual Fund Name 2',
  industry_sector_level_2 STRING COMMENT 'Industry Sector Level 2',
  industry_sector_level_3 STRING COMMENT 'Industry Sector Level 3',
  shareholder_exposure STRING COMMENT 'Shareholder Exposure',
  instrument_bloomberg STRING COMMENT 'Instrument Bloomberg',
  guarantor_s_name STRING COMMENT 'Guarantor s Name',
  collateral_type STRING COMMENT 'Collateral Type',
  bloomberg_type_of_fund STRING COMMENT 'Bloomberg Type of Fund',
  nature_of_holding STRING COMMENT 'Nature of Holding',
  repo_strategy STRING COMMENT 'Repo _ Strategy',
  total_number_of_shares DECIMAL(38,10) COMMENT 'Total Number of Shares',
  voting_rights DECIMAL(38,10) COMMENT 'Voting Rights',
  asset_manager STRING COMMENT 'Asset Manager',
  currency_of_cotation STRING COMMENT 'Currency of Cotation',
  physical_underlying_assets_code STRING COMMENT 'Physical _ Underlying Assets Code',
  is_index_linked STRING COMMENT 'Is Index Linked',
  coupon_type STRING COMMENT 'Coupon Type',
  index_floater STRING COMMENT 'Index Floater',
  margin_floater DECIMAL(38,10) COMMENT 'Margin Floater',
  coupon_frequency DECIMAL(38,10) COMMENT 'Coupon Frequency',
  convertible STRING COMMENT 'Convertible',
  optionality STRING COMMENT 'Optionality',
  next_option_date STRING COMMENT 'Next Option Date',
  next_option_price DECIMAL(38,10) COMMENT 'Next Option Price',
  issue_date TIMESTAMP COMMENT 'Issue Date',
  is_perpetual STRING COMMENT 'Is Perpetual',
  is_subordinated STRING COMMENT 'Is Subordinated',
  seniority STRING COMMENT 'Seniority',
  maturity_category STRING COMMENT 'Maturity Category',
  maturity STRING COMMENT 'Maturity',
  vintage BIGINT COMMENT 'Vintage',
  weighted_average_life STRING COMMENT 'Weighted average life',
  abs_class STRING COMMENT 'ABS class',
  abs_type STRING COMMENT 'ABS Type',
  scheduled_payment_date STRING COMMENT 'Scheduled Payment Date',
  next_coupon_date STRING COMMENT 'Next Coupon Date',
  dividend_coupon DECIMAL(38,10) COMMENT 'Dividend_Coupon',
  divident_payment_currency STRING COMMENT 'Divident Payment Currency',
  financial_data_origin STRING COMMENT 'Financial Data Origin',
  axa_instrument_level_2 STRING COMMENT 'Axa Instrument Level 2',
  alternative_investment_style STRING COMMENT 'Alternative Investment Style',
  alternative_investment_region STRING COMMENT 'Alternative Investment Region',
  upload_origin STRING COMMENT 'Upload Origin',
  issuer_outlook_s_p STRING COMMENT 'Issuer Outlook S&P',
  issuer_outlook_moody STRING COMMENT 'Issuer Outlook Moody',
  issuer_outlook_fitch STRING COMMENT 'Issuer Outlook Fitch',
  pool_factor DECIMAL(38,10) COMMENT 'Pool Factor',
  dali_id STRING COMMENT 'Dali ID',
  is_domestic_govies STRING COMMENT 'Is Domestic Govies',
  gct_rating STRING COMMENT 'GCT Rating',
  notional DECIMAL(38,10) COMMENT 'Notional',
  unit_price_clean DECIMAL(38,10) COMMENT 'Unit Price Clean',
  loan_to_value DECIMAL(38,10) COMMENT 'Loan to value',
  probability_of_default DECIMAL(38,10) COMMENT 'Probability of default',
  local_agency STRING COMMENT 'Local Agency',
  local_rating STRING COMMENT 'Local Rating',
  net_of_pb_tax DECIMAL(38,10) COMMENT 'Net of PB & Tax',
  securitization_type STRING COMMENT 'Securitization Type',
  notional_deflation_protected STRING COMMENT 'Notional Deflation Protected',
  first_sink_date STRING COMMENT 'First Sink Date',
  sink_frequency BIGINT COMMENT 'Sink Frequency',
  issuer_gct_code STRING COMMENT 'Issuer GCT Code')
PARTITIONED BY (yyyy STRING, mm STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_phy';


CREATE EXTERNAL TABLE IF NOT EXISTS crdb_phy (
  issuer_long_name STRING COMMENT 'Issuer Long Name',
  entity STRING COMMENT 'Entity',
  axa_holding_type STRING COMMENT 'Axa Holding Type',
  detailed_instrument STRING COMMENT 'Detailed Instrument',
  technical_quantity DECIMAL(38,10) COMMENT 'Technical Quantity',
  axa_market_value_currency DECIMAL(38,10) COMMENT 'Axa Market Value Currency',
  net_amount DECIMAL(38,10) COMMENT 'Net Amount',
  unit_price_mark_to_market DECIMAL(38,10) COMMENT 'Unit Price Mark To Market',
  unit_price_currency STRING COMMENT 'Unit Price Currency',
  unit_price_forex_rate DECIMAL(38,10) COMMENT 'Unit Price Forex Rate',
  unit_price_mark_to_model DECIMAL(38,10) COMMENT 'Unit Price Mark To Model',
  market_value_mark_to_model DECIMAL(38,10) COMMENT 'Market Value Mark To Model',
  accrued_interest DECIMAL(38,10) COMMENT 'Accrued Interest',
  axa_external_issuer_rating STRING COMMENT 'Axa External Issuer Rating',
  axa_internal_issuer_rating STRING COMMENT 'Axa Internal Issuer Rating',
  axa_internal_issuer_rating_origin STRING COMMENT 'Axa Internal Issuer Rating Origin',
  axa_external_rating STRING COMMENT 'Axa External Rating',
  axa_internal_rating STRING COMMENT 'Axa Internal Rating',
  axa_internal_rating_origin STRING COMMENT 'Axa Internal Rating Origin',
  issuer_industry_sector STRING COMMENT 'Issuer Industry Sector',
  issuer_nationality STRING COMMENT 'Issuer Nationality',
  nature_of_fund STRING COMMENT 'Nature Of Fund',
  quantity DECIMAL(38,10) COMMENT 'Quantity',
  magnitude_account STRING COMMENT 'Magnitude Account',
  magnitude_accounting_category STRING COMMENT 'Magnitude Accounting Category',
  magnitude_package STRING COMMENT 'Magnitude Package',
  operating_company STRING COMMENT 'Operating Company',
  portfolio_code STRING COMMENT 'Portfolio Code',
  portfolio_ara_code STRING COMMENT 'Portfolio ARA Code',
  isin_code STRING COMMENT 'ISIN Code',
  local_code_type STRING COMMENT 'Local Code Type',
  local_code STRING COMMENT 'Local Code',
  bloomberg_id_security BIGINT COMMENT 'Bloomberg ID Security',
  bloomberg_id_unique STRING COMMENT 'Bloomberg ID Unique',
  issuer_short_name STRING COMMENT 'Issuer Short Name',
  ultimate_shareholder STRING COMMENT 'Ultimate Shareholder',
  ultimate_shareholder_rating STRING COMMENT 'Ultimate ShareHolder Rating',
  ultimate_shareholder_country STRING COMMENT 'Ultimate ShareHolder Country',
  mutual_fund_code STRING COMMENT 'Mutual Fund code',
  mutual_fund_name STRING COMMENT 'Mutual Fund Name',
  mutual_fund_code_2 STRING COMMENT 'Mutual Fund Code 2',
  mutual_fund_name_2 STRING COMMENT 'Mutual Fund Name 2',
  industry_sector_level_2 STRING COMMENT 'Industry Sector Level 2',
  industry_sector_level_3 STRING COMMENT 'Industry Sector Level 3',
  shareholder_exposure STRING COMMENT 'Shareholder Exposure',
  instrument_bloomberg STRING COMMENT 'Instrument Bloomberg',
  guarantor_s_name STRING COMMENT 'Guarantor s Name',
  collateral_type STRING COMMENT 'Collateral Type',
  bloomberg_type_of_fund STRING COMMENT 'Bloomberg Type of Fund',
  nature_of_holding STRING COMMENT 'Nature of Holding',
  repo_strategy STRING COMMENT 'Repo _ Strategy',
  total_number_of_shares DECIMAL(38,10) COMMENT 'Total Number of Shares',
  voting_rights DECIMAL(38,10) COMMENT 'Voting Rights',
  asset_manager STRING COMMENT 'Asset Manager',
  currency_of_cotation STRING COMMENT 'Currency of Cotation',
  physical_underlying_assets_code STRING COMMENT 'Physical _ Underlying Assets Code',
  is_index_linked STRING COMMENT 'Is Index Linked',
  coupon_type STRING COMMENT 'Coupon Type',
  index_floater STRING COMMENT 'Index Floater',
  margin_floater DECIMAL(38,10) COMMENT 'Margin Floater',
  coupon_frequency DECIMAL(38,10) COMMENT 'Coupon Frequency',
  convertible STRING COMMENT 'Convertible',
  optionality STRING COMMENT 'Optionality',
  next_option_date STRING COMMENT 'Next Option Date',
  next_option_price DECIMAL(38,10) COMMENT 'Next Option Price',
  issue_date TIMESTAMP COMMENT 'Issue Date',
  is_perpetual STRING COMMENT 'Is Perpetual',
  is_subordinated STRING COMMENT 'Is Subordinated',
  seniority STRING COMMENT 'Seniority',
  maturity_category STRING COMMENT 'Maturity Category',
  maturity STRING COMMENT 'Maturity',
  vintage BIGINT COMMENT 'Vintage',
  weighted_average_life STRING COMMENT 'Weighted average life',
  abs_class STRING COMMENT 'ABS class',
  abs_type STRING COMMENT 'ABS Type',
  scheduled_payment_date STRING COMMENT 'Scheduled Payment Date',
  next_coupon_date STRING COMMENT 'Next Coupon Date',
  dividend_coupon DECIMAL(38,10) COMMENT 'Dividend_Coupon',
  divident_payment_currency STRING COMMENT 'Divident Payment Currency',
  financial_data_origin STRING COMMENT 'Financial Data Origin',
  axa_instrument_level_2 STRING COMMENT 'Axa Instrument Level 2',
  alternative_investment_style STRING COMMENT 'Alternative Investment Style',
  alternative_investment_region STRING COMMENT 'Alternative Investment Region',
  upload_origin STRING COMMENT 'Upload Origin',
  issuer_outlook_s_p STRING COMMENT 'Issuer Outlook S&P',
  issuer_outlook_moody STRING COMMENT 'Issuer Outlook Moody',
  issuer_outlook_fitch STRING COMMENT 'Issuer Outlook Fitch',
  pool_factor DECIMAL(38,10) COMMENT 'Pool Factor',
  dali_id STRING COMMENT 'Dali ID',
  is_domestic_govies STRING COMMENT 'Is Domestic Govies',
  gct_rating STRING COMMENT 'GCT Rating',
  notional DECIMAL(38,10) COMMENT 'Notional',
  unit_price_clean DECIMAL(38,10) COMMENT 'Unit Price Clean',
  loan_to_value DECIMAL(38,10) COMMENT 'Loan to value',
  probability_of_default DECIMAL(38,10) COMMENT 'Probability of default',
  local_agency STRING COMMENT 'Local Agency',
  local_rating STRING COMMENT 'Local Rating',
  net_of_pb_tax DECIMAL(38,10) COMMENT 'Net of PB & Tax',
  securitization_type STRING COMMENT 'Securitization Type',
  notional_deflation_protected STRING COMMENT 'Notional Deflation Protected',
  first_sink_date STRING COMMENT 'First Sink Date',
  sink_frequency BIGINT COMMENT 'Sink Frequency',
  issuer_gct_code STRING COMMENT 'Issuer GCT Code')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_phy';

