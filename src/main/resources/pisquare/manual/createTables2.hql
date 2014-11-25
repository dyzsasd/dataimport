CREATE EXTERNAL TABLE IF NOT EXISTS ab_participation (
  participation_as_of TIMESTAMP COMMENT 'Participation as of',
  fund_id BIGINT COMMENT 'Fund Id',
  fund_name STRING COMMENT 'Fund Name',
  fund_isin_code STRING COMMENT 'Fund ISIN Code',
  portfolio_id STRING COMMENT 'Portfolio ID',
  portfolio_name STRING COMMENT 'Portfolio Name',
  held_shares_in_units_shares DECIMAL(20,6) COMMENT 'Held Shares (in units shares)',
  held_share DECIMAL(20,6) COMMENT 'Held Share',
  total_units_shares_axa_portfolios DECIMAL(20,6) COMMENT 'Total Units   Shares (AXA Portfolios)')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ab_participation';

CREATE EXTERNAL TABLE IF NOT EXISTS ab_participation_all (
  participation_as_of TIMESTAMP COMMENT 'Participation as of',
  fund_id BIGINT COMMENT 'Fund Id',
  fund_name STRING COMMENT 'Fund Name',
  fund_isin_code STRING COMMENT 'Fund ISIN Code',
  portfolio_id STRING COMMENT 'Portfolio ID',
  portfolio_name STRING COMMENT 'Portfolio Name',
  held_shares_in_units_shares DECIMAL(20,6) COMMENT 'Held Shares (in units shares)',
  held_share DECIMAL(20,6) COMMENT 'Held Share',
  total_units_shares_axa_portfolios DECIMAL(20,6) COMMENT 'Total Units   Shares (AXA Portfolios)')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ab_participation';


CREATE EXTERNAL TABLE IF NOT EXISTS ab_trades (
  portfolio_dali_id STRING COMMENT 'Portfolio Dali Id',
  portfolio_name STRING COMMENT 'Portfolio Name',
  carveout_ptf_dali_id STRING COMMENT 'CarveOut Ptf Dali Id',
  carveout_ptf_name STRING COMMENT 'CarveOut Ptf Name',
  carveout_ptf_currency STRING COMMENT 'CarveOut Ptf CURRENCY',
  category_name STRING COMMENT 'Category Name',
  tra_trade_date TIMESTAMP COMMENT 'Tra Trade Date',
  tra_settlement_date TIMESTAMP COMMENT 'Tra Settlement Date',
  tra_settlement_currency STRING COMMENT 'Tra Settlement CURRENCY',
  inst_local_currency STRING COMMENT 'Inst Local CURRENCY',
  inst_long_name STRING COMMENT 'Inst Long Name',
  inst_dali_code STRING COMMENT 'Inst Dali Code',
  inst_isin_code STRING COMMENT 'Inst Isin Code',
  inst_type_name STRING COMMENT 'Inst Type Name',
  tra_nominal_quantity STRING COMMENT 'Tra Nominal Quantity',
  settlement_cash_amount_settl_cur DECIMAL(20,3) COMMENT 'Settlement Cash Amount (Settl Cur)',
  settlement_cash_amount_ptf_cur DECIMAL(20,3) COMMENT 'Settlement Cash Amount (Ptf Cur)',
  tra_accrued_interest_lcl_cur DECIMAL(20,3) COMMENT 'Tra Accrued Interest (Lcl Cur)',
  tra_accrued_interest_ptf_cur DECIMAL(20,3) COMMENT 'Tra Accrued Interest (Ptf Cur)',
  ytm DECIMAL(20,3) COMMENT 'YTM',
  modified_duration DECIMAL(20,3) COMMENT 'Modified duration',
  bloomberg_ticker STRING COMMENT 'BLOOMBERG TICKER',
  issuer_third_party_country STRING COMMENT 'Issuer Third Party COUNTRY',
  issue_date TIMESTAMP COMMENT 'ISSUE DATE',
  issuer_ctp_id BIGINT COMMENT 'ISSUER CTP ID',
  issuer_dali_code STRING COMMENT 'Issuer Dali Code',
  issuer_third_party_long_name STRING COMMENT 'Issuer Third Party LONG NAME',
  maturity_date TIMESTAMP COMMENT 'MATURITY DATE',
  coupon_frequency STRING COMMENT 'COUPON FREQUENCY',
  coupon_rate DECIMAL(20,6) COMMENT 'COUPON RATE',
  rate_type STRING COMMENT 'RATE TYPE',
  first_coupon_date TIMESTAMP COMMENT 'FIRST COUPON DATE',
  redemption_amount DECIMAL(20,6) COMMENT 'REDEMPTION AMOUNT',
  next_call_date TIMESTAMP COMMENT 'NEXT CALL DATE',
  next_call_price DECIMAL(20,6) COMMENT 'NEXT CALL PRICE',
  next_put_date TIMESTAMP COMMENT 'NEXT PUT DATE',
  next_put_price DECIMAL(20,6) COMMENT 'NEXT PUT PRICE',
  is_index_linked STRING COMMENT 'IS INDEX LINKED',
  base_index STRING COMMENT 'BASE INDEX',
  fund_asset_class_focus STRING COMMENT 'FUND ASSET CLASS FOCUS',
  market_sector STRING COMMENT 'MARKET SECTOR',
  s_p_long_term_rating_instrument STRING COMMENT 'S&P long term rating instrument',
  moodys_long_term_rating_instrument STRING COMMENT 'Moody s long term rating instrument',
  fitch_long_term_rating_instrument STRING COMMENT 'Fitch long term rating instrument',
  issue_country STRING COMMENT 'ISSUE COUNTRY',
  is_perpetual STRING COMMENT 'IS PERPETUAL',
  is_step_up STRING COMMENT 'IS STEP UP',
  redemption_type STRING COMMENT 'REDEMPTION TYPE',
  is_callable STRING COMMENT 'IS CALLABLE',
  is_subordinated STRING COMMENT 'IS SUBORDINATED',
  fund_strategy STRING COMMENT 'FUND STRATEGY',
  collateral_type STRING COMMENT 'COLLATERAL TYPE',
  issuer_ultimate_parent_bloomberg_id STRING COMMENT 'ISSUER ULTIMATE PARENT BLOOMBERG ID',
  third_party_external_bloomberg_issuer_number STRING COMMENT 'THIRD PARTY EXTERNAL BLOOMBERG ISSUER NUMBER',
  issuer_third_party_ultimate_parent_company_code STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY CODE',
  issuer_third_party_ultimate_parent_company_name STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY NAME',
  s_p_long_term_rating_issuer_third_party STRING COMMENT 'S&P long term rating Issuer Third Party',
  moodys_long_term_rating_issuer_third_party STRING COMMENT 'Moody s long term rating  Issuer Third Party',
  fitch_long_term_rating_issuer_third_party STRING COMMENT 'Fitch long term rating  Issuer Third Party')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ab_trades';

CREATE EXTERNAL TABLE IF NOT EXISTS ab_trades_all (
  portfolio_dali_id STRING COMMENT 'Portfolio Dali Id',
  portfolio_name STRING COMMENT 'Portfolio Name',
  carveout_ptf_dali_id STRING COMMENT 'CarveOut Ptf Dali Id',
  carveout_ptf_name STRING COMMENT 'CarveOut Ptf Name',
  carveout_ptf_currency STRING COMMENT 'CarveOut Ptf CURRENCY',
  category_name STRING COMMENT 'Category Name',
  tra_trade_date TIMESTAMP COMMENT 'Tra Trade Date',
  tra_settlement_date TIMESTAMP COMMENT 'Tra Settlement Date',
  tra_settlement_currency STRING COMMENT 'Tra Settlement CURRENCY',
  inst_local_currency STRING COMMENT 'Inst Local CURRENCY',
  inst_long_name STRING COMMENT 'Inst Long Name',
  inst_dali_code STRING COMMENT 'Inst Dali Code',
  inst_isin_code STRING COMMENT 'Inst Isin Code',
  inst_type_name STRING COMMENT 'Inst Type Name',
  tra_nominal_quantity STRING COMMENT 'Tra Nominal Quantity',
  settlement_cash_amount_settl_cur DECIMAL(20,3) COMMENT 'Settlement Cash Amount (Settl Cur)',
  settlement_cash_amount_ptf_cur DECIMAL(20,3) COMMENT 'Settlement Cash Amount (Ptf Cur)',
  tra_accrued_interest_lcl_cur DECIMAL(20,3) COMMENT 'Tra Accrued Interest (Lcl Cur)',
  tra_accrued_interest_ptf_cur DECIMAL(20,3) COMMENT 'Tra Accrued Interest (Ptf Cur)',
  ytm DECIMAL(20,3) COMMENT 'YTM',
  modified_duration DECIMAL(20,3) COMMENT 'Modified duration',
  bloomberg_ticker STRING COMMENT 'BLOOMBERG TICKER',
  issuer_third_party_country STRING COMMENT 'Issuer Third Party COUNTRY',
  issue_date TIMESTAMP COMMENT 'ISSUE DATE',
  issuer_ctp_id BIGINT COMMENT 'ISSUER CTP ID',
  issuer_dali_code STRING COMMENT 'Issuer Dali Code',
  issuer_third_party_long_name STRING COMMENT 'Issuer Third Party LONG NAME',
  maturity_date TIMESTAMP COMMENT 'MATURITY DATE',
  coupon_frequency STRING COMMENT 'COUPON FREQUENCY',
  coupon_rate DECIMAL(20,6) COMMENT 'COUPON RATE',
  rate_type STRING COMMENT 'RATE TYPE',
  first_coupon_date TIMESTAMP COMMENT 'FIRST COUPON DATE',
  redemption_amount DECIMAL(20,6) COMMENT 'REDEMPTION AMOUNT',
  next_call_date TIMESTAMP COMMENT 'NEXT CALL DATE',
  next_call_price DECIMAL(20,6) COMMENT 'NEXT CALL PRICE',
  next_put_date TIMESTAMP COMMENT 'NEXT PUT DATE',
  next_put_price DECIMAL(20,6) COMMENT 'NEXT PUT PRICE',
  is_index_linked STRING COMMENT 'IS INDEX LINKED',
  base_index STRING COMMENT 'BASE INDEX',
  fund_asset_class_focus STRING COMMENT 'FUND ASSET CLASS FOCUS',
  market_sector STRING COMMENT 'MARKET SECTOR',
  s_p_long_term_rating_instrument STRING COMMENT 'S&P long term rating instrument',
  moodys_long_term_rating_instrument STRING COMMENT 'Moody s long term rating instrument',
  fitch_long_term_rating_instrument STRING COMMENT 'Fitch long term rating instrument',
  issue_country STRING COMMENT 'ISSUE COUNTRY',
  is_perpetual STRING COMMENT 'IS PERPETUAL',
  is_step_up STRING COMMENT 'IS STEP UP',
  redemption_type STRING COMMENT 'REDEMPTION TYPE',
  is_callable STRING COMMENT 'IS CALLABLE',
  is_subordinated STRING COMMENT 'IS SUBORDINATED',
  fund_strategy STRING COMMENT 'FUND STRATEGY',
  collateral_type STRING COMMENT 'COLLATERAL TYPE',
  issuer_ultimate_parent_bloomberg_id STRING COMMENT 'ISSUER ULTIMATE PARENT BLOOMBERG ID',
  third_party_external_bloomberg_issuer_number STRING COMMENT 'THIRD PARTY EXTERNAL BLOOMBERG ISSUER NUMBER',
  issuer_third_party_ultimate_parent_company_code STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY CODE',
  issuer_third_party_ultimate_parent_company_name STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY NAME',
  s_p_long_term_rating_issuer_third_party STRING COMMENT 'S&P long term rating Issuer Third Party',
  moodys_long_term_rating_issuer_third_party STRING COMMENT 'Moody s long term rating  Issuer Third Party',
  fitch_long_term_rating_issuer_third_party STRING COMMENT 'Fitch long term rating  Issuer Third Party')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ab_trades';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_be (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_be';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_be_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_be';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_ch (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_ch';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_ch_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_ch';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_de (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_de';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_de_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_de';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_fr (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_fr';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_fr_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_fr';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_hk (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_hk';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_hk_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_hk';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_jp (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_jp';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_jp_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_jp';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_medla (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_medla';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_medla_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_medla';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_uk (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_uk';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_uk_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_uk';


CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_us (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_us';

CREATE EXTERNAL TABLE IF NOT EXISTS aggregated_ip_us_all (
  area STRING COMMENT 'Area',
  region STRING COMMENT 'Region',
  activity STRING COMMENT 'Activity',
  entity STRING COMMENT 'Entity',
  macro_asset_class STRING COMMENT 'Macro Asset Class',
  caa_asset_class STRING COMMENT 'CAA Asset Class',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  averagerating STRING COMMENT 'AverageRating',
  instrument_ccy STRING COMMENT 'Instrument ccy',
  issuer_country STRING COMMENT 'Issuer Country',
  strategy STRING COMMENT 'Strategy',
  year BIGINT COMMENT 'Year',
  month STRING COMMENT 'Month',
  period STRING COMMENT 'Period',
  flow STRING COMMENT 'Flow',
  rate STRING COMMENT 'Rate',
  amount DECIMAL(20,3) COMMENT 'Amount',
  amount_eur DECIMAL(20,3) COMMENT 'Amount �',
  ir_duration DECIMAL(20,3) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,3) COMMENT 'Credit Duration',
  yield DECIMAL(20,3) COMMENT 'Yield',
  hedged_fx DECIMAL(20,3) COMMENT 'Hedged FX (%)',
  yield_net DECIMAL(20,3) COMMENT 'Yield net',
  spread DECIMAL(20,3) COMMENT 'Spread ',
  comments STRING COMMENT 'Comments',
  fx_rate_used DECIMAL(20,3) COMMENT 'FX Rate Used',
  control_quali_on_basics STRING COMMENT 'Control quali on basics',
  control_quali STRING COMMENT 'Control quali',
  control_quanti STRING COMMENT 'Control quanti',
  warning STRING COMMENT 'Warning',
  amount_euro_ir_duration DECIMAL(20,3) COMMENT 'Amount Euro*IR Duration',
  amount_euro_spread_duration DECIMAL(20,3) COMMENT 'Amount Euro*Spread Duration',
  amount_yield DECIMAL(20,3) COMMENT 'Amount*Yield',
  amount_euro_rating DECIMAL(20,3) COMMENT 'Amount Euro*Rating',
  gia_macro_class STRING COMMENT 'GIA Macro Class',
  delta DECIMAL(20,3) COMMENT 'Delta',
  gamma DECIMAL(20,3) COMMENT 'Gamma',
  stec_asset_class STRING COMMENT 'STEC ASSET CLASS',
  ip_asset_class_for_mim_restit STRING COMMENT 'IP asset class for MIM restit',
  gic_views_saa STRING COMMENT 'GIC views --> SAA',
  gic_views_focus STRING COMMENT 'GIC views --> Focus')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/aggregated_ip_us';


CREATE EXTERNAL TABLE IF NOT EXISTS axa_im_participation (
  portfolio_dali_id TIMESTAMP COMMENT 'Portfolio Dali Id',
  portfolio_name STRING COMMENT 'Portfolio Name',
  carveout_ptf_dali_id STRING COMMENT 'CarveOut Ptf Dali Id',
  carveout_ptf_name STRING COMMENT 'CarveOut Ptf Name',
  carveout_ptf_currency DECIMAL(20,2) COMMENT 'CarveOut Ptf CURRENCY',
  category_name BIGINT COMMENT 'Category Name',
  tra_trade_date BIGINT COMMENT 'Tra Trade Date')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/axa_im_participation';

CREATE EXTERNAL TABLE IF NOT EXISTS axa_im_participation_all (
  portfolio_dali_id TIMESTAMP COMMENT 'Portfolio Dali Id',
  portfolio_name STRING COMMENT 'Portfolio Name',
  carveout_ptf_dali_id STRING COMMENT 'CarveOut Ptf Dali Id',
  carveout_ptf_name STRING COMMENT 'CarveOut Ptf Name',
  carveout_ptf_currency DECIMAL(20,2) COMMENT 'CarveOut Ptf CURRENCY',
  category_name BIGINT COMMENT 'Category Name',
  tra_trade_date BIGINT COMMENT 'Tra Trade Date')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/axa_im_participation';


CREATE EXTERNAL TABLE IF NOT EXISTS axa_im_trades (
  portfolio_dali_id STRING COMMENT 'Portfolio Dali Id',
  portfolio_name STRING COMMENT 'Portfolio Name',
  carveout_ptf_dali_id STRING COMMENT 'CarveOut Ptf Dali Id',
  carveout_ptf_name STRING COMMENT 'CarveOut Ptf Name',
  carveout_ptf_currency STRING COMMENT 'CarveOut Ptf CURRENCY',
  category_name STRING COMMENT 'Category Name',
  tra_trade_date TIMESTAMP COMMENT 'Tra Trade Date',
  tra_settlement_date TIMESTAMP COMMENT 'Tra Settlement Date',
  tra_settlement_currency STRING COMMENT 'Tra Settlement CURRENCY',
  inst_local_currency STRING COMMENT 'Inst Local CURRENCY',
  inst_long_name STRING COMMENT 'Inst Long Name',
  inst_dali_code STRING COMMENT 'Inst Dali Code',
  inst_isin_code STRING COMMENT 'Inst Isin Code',
  tra_nominal_quantity STRING COMMENT 'Tra Nominal Quantity',
  settlement_cash_amount_settl_cur DECIMAL(20,2) COMMENT 'Settlement Cash Amount (Settl Cur)',
  settlement_cash_amount_ptf_cur DECIMAL(20,3) COMMENT 'Settlement Cash Amount (Ptf Cur)',
  tra_accrued_interest_lcl_cur DECIMAL(20,2) COMMENT 'Tra Accrued Interest (Lcl Cur)',
  tra_accrued_interest_ptf_cur DECIMAL(20,2) COMMENT 'Tra Accrued Interest (Ptf Cur)',
  ytm DECIMAL(20,3) COMMENT 'YTM',
  modified_duration DECIMAL(20,3) COMMENT 'Modified Duration',
  bloomberg_ticker STRING COMMENT 'BLOOMBERG TICKER',
  cusip STRING COMMENT 'CUSIP',
  bloomberg_se_curity_type STRING COMMENT 'BLOOMBERG SECURITY TYPE 1',
  bloomberg_se_curity_type_2 STRING COMMENT 'BLOOMBERG SECURITY TYPE 2',
  issue_country STRING COMMENT 'ISSUE COUNTRY',
  issue_date TIMESTAMP COMMENT 'ISSUE DATE',
  issuer_id STRING COMMENT 'ISSUER ID',
  issuer_name STRING COMMENT 'ISSUER NAME',
  maturity_date TIMESTAMP COMMENT 'MATURITY DATE',
  is_listed STRING COMMENT 'IS LISTED',
  is_preferred_share STRING COMMENT 'IS PREFERRED SHARE',
  coupon_currency STRING COMMENT 'COUPON CURRENCY',
  coupon_frequency STRING COMMENT 'COUPON FREQUENCY',
  coupon_rate DECIMAL(20,6) COMMENT 'COUPON RATE',
  first_coupon_date TIMESTAMP COMMENT 'FIRST COUPON DATE',
  additive_margin_spread DECIMAL(20,4) COMMENT 'ADDITIVE MARGIN SPREAD',
  is_perpetual STRING COMMENT 'IS PERPETUAL',
  is_step_up STRING COMMENT 'IS STEP UP',
  rate_type STRING COMMENT 'RATE TYPE',
  redemption_amount DECIMAL(20,2) COMMENT 'REDEMPTION AMOUNT',
  redemption_currency STRING COMMENT 'REDEMPTION CURRENCY',
  redemption_type STRING COMMENT 'REDEMPTION TYPE',
  is_fix_to_float STRING COMMENT 'IS FIX TO FLOAT',
  is_float_to_fix STRING COMMENT 'IS FLOAT TO FIX',
  is_callable STRING COMMENT 'IS CALLABLE',
  next_call_date TIMESTAMP COMMENT 'NEXT CALL DATE',
  next_call_price DECIMAL(20,6) COMMENT 'NEXT CALL PRICE',
  is_putable STRING COMMENT 'IS PUTABLE',
  next_put_date TIMESTAMP COMMENT 'NEXT PUT DATE',
  next_put_price DECIMAL(20,6) COMMENT 'NEXT PUT PRICE',
  is_capped STRING COMMENT 'IS CAPPED',
  cap_rate DECIMAL(20,4) COMMENT 'CAP RATE',
  is_floored STRING COMMENT 'IS FLOORED',
  floor_rate DECIMAL(20,4) COMMENT 'FLOOR RATE',
  is_sinkable STRING COMMENT 'IS SINKABLE',
  is_subordinated STRING COMMENT 'IS SUBORDINATED',
  seniority_level STRING COMMENT 'SENIORITY LEVEL',
  is_covered STRING COMMENT 'IS COVERED',
  is_convertible STRING COMMENT 'IS CONVERTIBLE',
  is_index_linked STRING COMMENT 'IS INDEX LINKED',
  base_index STRING COMMENT 'BASE INDEX',
  fund_asset_class_focus STRING COMMENT 'FUND ASSET CLASS FOCUS',
  fund_strategy STRING COMMENT 'FUND STRATEGY',
  collateral_type STRING COMMENT 'COLLATERAL TYPE',
  grand_fathered STRING COMMENT 'GRAND-FATHERED',
  market_sector STRING COMMENT 'MARKET SECTOR',
  nominal_currency STRING COMMENT 'NOMINAL CURRENCY',
  bond_type STRING COMMENT 'BOND TYPE',
  issuer_ultimate_parent_bloomberg_id STRING COMMENT 'ISSUER ULTIMATE PARENT BLOOMBERG ID',
  is_mortgage_se_cured STRING COMMENT 'IS MORTGAGE SECURED',
  is_public_loan_se_cured STRING COMMENT 'IS PUBLIC LOAN  SECURED',
  paymennt_rank_bloomberg STRING COMMENT 'Paymennt rank (bloomberg)',
  collateral_description_bloonberg STRING COMMENT 'Collateral description (Bloonberg)',
  s_p_long_term_rating_instrument STRING COMMENT 'S&P long term rating instrument',
  moody_s_long_term_rating_instrument STRING COMMENT 'Moody s long term rating instrument',
  fitch_long_term_rating_instrument STRING COMMENT 'Fitch long term rating instrument',
  third_party_external_bloomberg_issuer_number STRING COMMENT 'THIRD PARTY EXTERNAL BLOOMBERG ISSUER NUMBER',
  issuer_third_party_long_name STRING COMMENT 'Issuer Third Party LONG NAME',
  issuer_third_party_country STRING COMMENT 'Issuer Third Party COUNTRY',
  issuer_third_party_bics_industry_sector_subgroup STRING COMMENT 'Issuer Third Party - BICS - Industry sector subgroup',
  issuer_third_party_gics_industry STRING COMMENT 'Issuer Third Party - GICS-Industry',
  issuer_third_party_ultimate_parent_company_code STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY CODE',
  issuer_third_party_ultimate_parent_company_name STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY NAME',
  s_p_long_term_rating_issuer_third_party STRING COMMENT 'S&P long term rating Issuer Third Party',
  moody_s_long_term_rating_issuer_third_party STRING COMMENT 'Moody s long term rating  Issuer Third Party',
  fitch_long_term_rating_issuer_third_party STRING COMMENT 'Fitch long term rating  Issuer Third Party')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/axa_im_trades';

CREATE EXTERNAL TABLE IF NOT EXISTS axa_im_trades_all (
  portfolio_dali_id STRING COMMENT 'Portfolio Dali Id',
  portfolio_name STRING COMMENT 'Portfolio Name',
  carveout_ptf_dali_id STRING COMMENT 'CarveOut Ptf Dali Id',
  carveout_ptf_name STRING COMMENT 'CarveOut Ptf Name',
  carveout_ptf_currency STRING COMMENT 'CarveOut Ptf CURRENCY',
  category_name STRING COMMENT 'Category Name',
  tra_trade_date TIMESTAMP COMMENT 'Tra Trade Date',
  tra_settlement_date TIMESTAMP COMMENT 'Tra Settlement Date',
  tra_settlement_currency STRING COMMENT 'Tra Settlement CURRENCY',
  inst_local_currency STRING COMMENT 'Inst Local CURRENCY',
  inst_long_name STRING COMMENT 'Inst Long Name',
  inst_dali_code STRING COMMENT 'Inst Dali Code',
  inst_isin_code STRING COMMENT 'Inst Isin Code',
  tra_nominal_quantity STRING COMMENT 'Tra Nominal Quantity',
  settlement_cash_amount_settl_cur DECIMAL(20,2) COMMENT 'Settlement Cash Amount (Settl Cur)',
  settlement_cash_amount_ptf_cur DECIMAL(20,3) COMMENT 'Settlement Cash Amount (Ptf Cur)',
  tra_accrued_interest_lcl_cur DECIMAL(20,2) COMMENT 'Tra Accrued Interest (Lcl Cur)',
  tra_accrued_interest_ptf_cur DECIMAL(20,2) COMMENT 'Tra Accrued Interest (Ptf Cur)',
  ytm DECIMAL(20,3) COMMENT 'YTM',
  modified_duration DECIMAL(20,3) COMMENT 'Modified Duration',
  bloomberg_ticker STRING COMMENT 'BLOOMBERG TICKER',
  cusip STRING COMMENT 'CUSIP',
  bloomberg_se_curity_type STRING COMMENT 'BLOOMBERG SECURITY TYPE 1',
  bloomberg_se_curity_type_2 STRING COMMENT 'BLOOMBERG SECURITY TYPE 2',
  issue_country STRING COMMENT 'ISSUE COUNTRY',
  issue_date TIMESTAMP COMMENT 'ISSUE DATE',
  issuer_id STRING COMMENT 'ISSUER ID',
  issuer_name STRING COMMENT 'ISSUER NAME',
  maturity_date TIMESTAMP COMMENT 'MATURITY DATE',
  is_listed STRING COMMENT 'IS LISTED',
  is_preferred_share STRING COMMENT 'IS PREFERRED SHARE',
  coupon_currency STRING COMMENT 'COUPON CURRENCY',
  coupon_frequency STRING COMMENT 'COUPON FREQUENCY',
  coupon_rate DECIMAL(20,6) COMMENT 'COUPON RATE',
  first_coupon_date TIMESTAMP COMMENT 'FIRST COUPON DATE',
  additive_margin_spread DECIMAL(20,4) COMMENT 'ADDITIVE MARGIN SPREAD',
  is_perpetual STRING COMMENT 'IS PERPETUAL',
  is_step_up STRING COMMENT 'IS STEP UP',
  rate_type STRING COMMENT 'RATE TYPE',
  redemption_amount DECIMAL(20,2) COMMENT 'REDEMPTION AMOUNT',
  redemption_currency STRING COMMENT 'REDEMPTION CURRENCY',
  redemption_type STRING COMMENT 'REDEMPTION TYPE',
  is_fix_to_float STRING COMMENT 'IS FIX TO FLOAT',
  is_float_to_fix STRING COMMENT 'IS FLOAT TO FIX',
  is_callable STRING COMMENT 'IS CALLABLE',
  next_call_date TIMESTAMP COMMENT 'NEXT CALL DATE',
  next_call_price DECIMAL(20,6) COMMENT 'NEXT CALL PRICE',
  is_putable STRING COMMENT 'IS PUTABLE',
  next_put_date TIMESTAMP COMMENT 'NEXT PUT DATE',
  next_put_price DECIMAL(20,6) COMMENT 'NEXT PUT PRICE',
  is_capped STRING COMMENT 'IS CAPPED',
  cap_rate DECIMAL(20,4) COMMENT 'CAP RATE',
  is_floored STRING COMMENT 'IS FLOORED',
  floor_rate DECIMAL(20,4) COMMENT 'FLOOR RATE',
  is_sinkable STRING COMMENT 'IS SINKABLE',
  is_subordinated STRING COMMENT 'IS SUBORDINATED',
  seniority_level STRING COMMENT 'SENIORITY LEVEL',
  is_covered STRING COMMENT 'IS COVERED',
  is_convertible STRING COMMENT 'IS CONVERTIBLE',
  is_index_linked STRING COMMENT 'IS INDEX LINKED',
  base_index STRING COMMENT 'BASE INDEX',
  fund_asset_class_focus STRING COMMENT 'FUND ASSET CLASS FOCUS',
  fund_strategy STRING COMMENT 'FUND STRATEGY',
  collateral_type STRING COMMENT 'COLLATERAL TYPE',
  grand_fathered STRING COMMENT 'GRAND-FATHERED',
  market_sector STRING COMMENT 'MARKET SECTOR',
  nominal_currency STRING COMMENT 'NOMINAL CURRENCY',
  bond_type STRING COMMENT 'BOND TYPE',
  issuer_ultimate_parent_bloomberg_id STRING COMMENT 'ISSUER ULTIMATE PARENT BLOOMBERG ID',
  is_mortgage_se_cured STRING COMMENT 'IS MORTGAGE SECURED',
  is_public_loan_se_cured STRING COMMENT 'IS PUBLIC LOAN  SECURED',
  paymennt_rank_bloomberg STRING COMMENT 'Paymennt rank (bloomberg)',
  collateral_description_bloonberg STRING COMMENT 'Collateral description (Bloonberg)',
  s_p_long_term_rating_instrument STRING COMMENT 'S&P long term rating instrument',
  moody_s_long_term_rating_instrument STRING COMMENT 'Moody s long term rating instrument',
  fitch_long_term_rating_instrument STRING COMMENT 'Fitch long term rating instrument',
  third_party_external_bloomberg_issuer_number STRING COMMENT 'THIRD PARTY EXTERNAL BLOOMBERG ISSUER NUMBER',
  issuer_third_party_long_name STRING COMMENT 'Issuer Third Party LONG NAME',
  issuer_third_party_country STRING COMMENT 'Issuer Third Party COUNTRY',
  issuer_third_party_bics_industry_sector_subgroup STRING COMMENT 'Issuer Third Party - BICS - Industry sector subgroup',
  issuer_third_party_gics_industry STRING COMMENT 'Issuer Third Party - GICS-Industry',
  issuer_third_party_ultimate_parent_company_code STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY CODE',
  issuer_third_party_ultimate_parent_company_name STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY NAME',
  s_p_long_term_rating_issuer_third_party STRING COMMENT 'S&P long term rating Issuer Third Party',
  moody_s_long_term_rating_issuer_third_party STRING COMMENT 'Moody s long term rating  Issuer Third Party',
  fitch_long_term_rating_issuer_third_party STRING COMMENT 'Fitch long term rating  Issuer Third Party')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/axa_im_trades';


CREATE EXTERNAL TABLE IF NOT EXISTS dali_structure (
  dali_id STRING COMMENT 'DALI ID',
  isin_code STRING COMMENT 'ISIN CODE',
  bloomberg_ticker STRING COMMENT 'BLOOMBERG TICKER',
  cusip STRING COMMENT 'CUSIP',
  bloomberg_se_curity_type STRING COMMENT 'BLOOMBERG SECURITY TYPE 1',
  bloomberg_se_curity_type_2 STRING COMMENT 'BLOOMBERG SECURITY TYPE 2',
  se_curity_long_name STRING COMMENT 'SECURITY LONG NAME',
  issue_country STRING COMMENT 'ISSUE COUNTRY',
  issue_currency STRING COMMENT 'ISSUE CURRENCY',
  issue_date TIMESTAMP COMMENT 'ISSUE DATE',
  issuer_id STRING COMMENT 'ISSUER ID',
  issuer_name STRING COMMENT 'ISSUER NAME',
  maturity_date TIMESTAMP COMMENT 'MATURITY DATE',
  is_listed STRING COMMENT 'IS LISTED',
  is_preferred_share STRING COMMENT 'IS PREFERRED SHARE',
  coupon_currency STRING COMMENT 'COUPON CURRENCY',
  coupon_frequency STRING COMMENT 'COUPON FREQUENCY',
  coupon_rate DECIMAL(20,4) COMMENT 'COUPON RATE',
  first_coupon_date TIMESTAMP COMMENT 'FIRST COUPON DATE',
  additive_margin_spread DECIMAL(20,4) COMMENT 'ADDITIVE MARGIN SPREAD',
  is_perpetual STRING COMMENT 'IS PERPETUAL',
  is_step_up STRING COMMENT 'IS STEP UP',
  rate_type STRING COMMENT 'RATE TYPE',
  redemption_amount DECIMAL(20,4) COMMENT 'REDEMPTION AMOUNT',
  redemption_currency STRING COMMENT 'REDEMPTION CURRENCY',
  redemption_type STRING COMMENT 'REDEMPTION TYPE',
  is_fix_to_float STRING COMMENT 'IS FIX TO FLOAT',
  is_float_to_fix STRING COMMENT 'IS FLOAT TO FIX',
  is_callable STRING COMMENT 'IS CALLABLE',
  next_call_date TIMESTAMP COMMENT 'NEXT CALL DATE',
  next_call_price DECIMAL(20,4) COMMENT 'NEXT CALL PRICE',
  is_putable STRING COMMENT 'IS PUTABLE',
  next_put_date TIMESTAMP COMMENT 'NEXT PUT DATE',
  next_put_price DECIMAL(20,4) COMMENT 'NEXT PUT PRICE',
  is_capped STRING COMMENT 'IS CAPPED',
  cap_rate DECIMAL(20,4) COMMENT 'CAP RATE',
  is_floored STRING COMMENT 'IS FLOORED',
  floor_rate DECIMAL(20,4) COMMENT 'FLOOR RATE',
  is_sinkable STRING COMMENT 'IS SINKABLE',
  is_subordinated STRING COMMENT 'IS SUBORDINATED',
  seniority_level STRING COMMENT 'SENIORITY LEVEL',
  is_covered STRING COMMENT 'IS COVERED',
  is_convertible STRING COMMENT 'IS CONVERTIBLE',
  is_index_linked STRING COMMENT 'IS INDEX LINKED',
  fund_asset_class_focus STRING COMMENT 'FUND ASSET CLASS FOCUS',
  fund_strategy STRING COMMENT 'FUND STRATEGY',
  collateral_type STRING COMMENT 'COLLATERAL TYPE',
  grand_fathered STRING COMMENT 'GRAND-FATHERED',
  market_sector STRING COMMENT 'MARKET SECTOR',
  nominal_currency STRING COMMENT 'NOMINAL CURRENCY',
  bond_type STRING COMMENT 'BOND TYPE',
  issuer_ultimate_parent_bloomberg_id STRING COMMENT 'ISSUER ULTIMATE PARENT BLOOMBERG ID',
  is_mortgage_se_cured STRING COMMENT 'IS MORTGAGE SECURED',
  is_public_loan_se_cured STRING COMMENT 'IS PUBLIC LOAN  SECURED',
  paymennt_rank_bloomberg STRING COMMENT 'Paymennt rank (bloomberg)',
  collateral_description_bloonberg STRING COMMENT 'Collateral description (Bloonberg)',
  s_p_long_term_rating_instrument STRING COMMENT 'S&P long term rating instrument',
  moody_s_long_term_rating_instrument STRING COMMENT 'Moody s long term rating instrument',
  fitch_long_term_rating_instrument STRING COMMENT 'Fitch long term rating instrument',
  third_party_external_bloomberg_issuer_number STRING COMMENT 'THIRD PARTY EXTERNAL BLOOMBERG ISSUER NUMBER',
  issuer_third_party_long_name STRING COMMENT 'Issuer Third Party LONG NAME',
  issuer_third_party_country STRING COMMENT 'Issuer Third Party COUNTRY',
  issuer_third_party_bics_industry_sector_subgroup STRING COMMENT 'Issuer Third Party - BICS - Industry sector subgroup',
  issuer_third_party_gics_industry STRING COMMENT 'Issuer Third Party - GICS-Industry',
  issuer_third_party_ultimate_parent_company_code STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY CODE',
  issuer_third_party_ultimate_parent_company_name STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY NAME',
  s_p_long_term_rating_issuer_third_party STRING COMMENT 'S&P long term rating Issuer Third Party',
  moody_s_long_term_rating_issuer_third_party STRING COMMENT 'Moody s long term rating  Issuer Third Party',
  fitch_long_term_rating_issuer_third_party STRING COMMENT 'Fitch long term rating  Issuer Third Party',
  base_index STRING COMMENT 'Base Index')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/dali_structure';

CREATE EXTERNAL TABLE IF NOT EXISTS dali_structure_all (
  dali_id STRING COMMENT 'DALI ID',
  isin_code STRING COMMENT 'ISIN CODE',
  bloomberg_ticker STRING COMMENT 'BLOOMBERG TICKER',
  cusip STRING COMMENT 'CUSIP',
  bloomberg_se_curity_type STRING COMMENT 'BLOOMBERG SECURITY TYPE 1',
  bloomberg_se_curity_type_2 STRING COMMENT 'BLOOMBERG SECURITY TYPE 2',
  se_curity_long_name STRING COMMENT 'SECURITY LONG NAME',
  issue_country STRING COMMENT 'ISSUE COUNTRY',
  issue_currency STRING COMMENT 'ISSUE CURRENCY',
  issue_date TIMESTAMP COMMENT 'ISSUE DATE',
  issuer_id STRING COMMENT 'ISSUER ID',
  issuer_name STRING COMMENT 'ISSUER NAME',
  maturity_date TIMESTAMP COMMENT 'MATURITY DATE',
  is_listed STRING COMMENT 'IS LISTED',
  is_preferred_share STRING COMMENT 'IS PREFERRED SHARE',
  coupon_currency STRING COMMENT 'COUPON CURRENCY',
  coupon_frequency STRING COMMENT 'COUPON FREQUENCY',
  coupon_rate DECIMAL(20,4) COMMENT 'COUPON RATE',
  first_coupon_date TIMESTAMP COMMENT 'FIRST COUPON DATE',
  additive_margin_spread DECIMAL(20,4) COMMENT 'ADDITIVE MARGIN SPREAD',
  is_perpetual STRING COMMENT 'IS PERPETUAL',
  is_step_up STRING COMMENT 'IS STEP UP',
  rate_type STRING COMMENT 'RATE TYPE',
  redemption_amount DECIMAL(20,4) COMMENT 'REDEMPTION AMOUNT',
  redemption_currency STRING COMMENT 'REDEMPTION CURRENCY',
  redemption_type STRING COMMENT 'REDEMPTION TYPE',
  is_fix_to_float STRING COMMENT 'IS FIX TO FLOAT',
  is_float_to_fix STRING COMMENT 'IS FLOAT TO FIX',
  is_callable STRING COMMENT 'IS CALLABLE',
  next_call_date TIMESTAMP COMMENT 'NEXT CALL DATE',
  next_call_price DECIMAL(20,4) COMMENT 'NEXT CALL PRICE',
  is_putable STRING COMMENT 'IS PUTABLE',
  next_put_date TIMESTAMP COMMENT 'NEXT PUT DATE',
  next_put_price DECIMAL(20,4) COMMENT 'NEXT PUT PRICE',
  is_capped STRING COMMENT 'IS CAPPED',
  cap_rate DECIMAL(20,4) COMMENT 'CAP RATE',
  is_floored STRING COMMENT 'IS FLOORED',
  floor_rate DECIMAL(20,4) COMMENT 'FLOOR RATE',
  is_sinkable STRING COMMENT 'IS SINKABLE',
  is_subordinated STRING COMMENT 'IS SUBORDINATED',
  seniority_level STRING COMMENT 'SENIORITY LEVEL',
  is_covered STRING COMMENT 'IS COVERED',
  is_convertible STRING COMMENT 'IS CONVERTIBLE',
  is_index_linked STRING COMMENT 'IS INDEX LINKED',
  fund_asset_class_focus STRING COMMENT 'FUND ASSET CLASS FOCUS',
  fund_strategy STRING COMMENT 'FUND STRATEGY',
  collateral_type STRING COMMENT 'COLLATERAL TYPE',
  grand_fathered STRING COMMENT 'GRAND-FATHERED',
  market_sector STRING COMMENT 'MARKET SECTOR',
  nominal_currency STRING COMMENT 'NOMINAL CURRENCY',
  bond_type STRING COMMENT 'BOND TYPE',
  issuer_ultimate_parent_bloomberg_id STRING COMMENT 'ISSUER ULTIMATE PARENT BLOOMBERG ID',
  is_mortgage_se_cured STRING COMMENT 'IS MORTGAGE SECURED',
  is_public_loan_se_cured STRING COMMENT 'IS PUBLIC LOAN  SECURED',
  paymennt_rank_bloomberg STRING COMMENT 'Paymennt rank (bloomberg)',
  collateral_description_bloonberg STRING COMMENT 'Collateral description (Bloonberg)',
  s_p_long_term_rating_instrument STRING COMMENT 'S&P long term rating instrument',
  moody_s_long_term_rating_instrument STRING COMMENT 'Moody s long term rating instrument',
  fitch_long_term_rating_instrument STRING COMMENT 'Fitch long term rating instrument',
  third_party_external_bloomberg_issuer_number STRING COMMENT 'THIRD PARTY EXTERNAL BLOOMBERG ISSUER NUMBER',
  issuer_third_party_long_name STRING COMMENT 'Issuer Third Party LONG NAME',
  issuer_third_party_country STRING COMMENT 'Issuer Third Party COUNTRY',
  issuer_third_party_bics_industry_sector_subgroup STRING COMMENT 'Issuer Third Party - BICS - Industry sector subgroup',
  issuer_third_party_gics_industry STRING COMMENT 'Issuer Third Party - GICS-Industry',
  issuer_third_party_ultimate_parent_company_code STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY CODE',
  issuer_third_party_ultimate_parent_company_name STRING COMMENT 'Issuer Third Party ULTIMATE PARENT COMPANY NAME',
  s_p_long_term_rating_issuer_third_party STRING COMMENT 'S&P long term rating Issuer Third Party',
  moody_s_long_term_rating_issuer_third_party STRING COMMENT 'Moody s long term rating  Issuer Third Party',
  fitch_long_term_rating_issuer_third_party STRING COMMENT 'Fitch long term rating  Issuer Third Party',
  base_index STRING COMMENT 'Base Index')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/dali_structure';


CREATE EXTERNAL TABLE IF NOT EXISTS entity_trades_derivatives (
  type_of_derivative_code STRING COMMENT 'Type of Derivative (code)',
  sophis_position_id STRING COMMENT 'Sophis Position ID',
  axa_entity STRING COMMENT 'AXA Entity',
  nature_of_fund STRING COMMENT 'Nature of fund',
  shareholder_exposure STRING COMMENT 'Shareholder exposure',
  company_name STRING COMMENT 'Company Name',
  portfolio STRING COMMENT 'Portfolio',
  ara_portfolio STRING COMMENT 'ARA Portfolio',
  type_of_derivative_name STRING COMMENT 'Type of Derivative (name)',
  long_payer_short_receiver STRING COMMENT 'Long (Payer)   Short (Receiver)',
  axa_instrument STRING COMMENT 'AXA instrument',
  instrument_name STRING COMMENT 'Instrument name',
  market_value DECIMAL(20,4) COMMENT 'Market Value',
  mtm_after_colat DECIMAL(20,4) COMMENT 'MTM After Colat',
  notional DECIMAL(20,4) COMMENT 'Notional',
  quantity DECIMAL(20,4) COMMENT 'Quantity',
  economic_exposure DECIMAL(20,4) COMMENT 'Economic Exposure',
  asset_manager STRING COMMENT 'Asset Manager',
  valuation_type STRING COMMENT 'Valuation Type',
  unit_price DECIMAL(20,4) COMMENT 'Unit Price',
  unit_price_currency STRING COMMENT 'Unit Price Currency',
  unit_price_forex_rate DECIMAL(20,4) COMMENT 'Unit Price Forex Rate',
  issue_date TIMESTAMP COMMENT 'Issue Date',
  starting_date TIMESTAMP COMMENT 'Starting Date',
  maturity_date TIMESTAMP COMMENT 'Maturity Date',
  maturity_category STRING COMMENT 'Maturity Category',
  currency STRING COMMENT 'Currency',
  package_code STRING COMMENT 'Package Code',
  basket_strategy STRING COMMENT 'Basket   Strategy',
  holding_type STRING COMMENT 'Holding type',
  magnitude_account STRING COMMENT 'Magnitude Account',
  magnitude_package STRING COMMENT 'Magnitude Package',
  magnitude_annex_account STRING COMMENT 'Magnitude Annex Account',
  hedge_accounting_category STRING COMMENT 'Hedge Accounting Category',
  mutual_fund_code STRING COMMENT 'Mutual Fund Code',
  mutual_fund_name STRING COMMENT 'Mutual Fund Name',
  mutual_fund_code_2 STRING COMMENT 'Mutual Fund Code 2',
  mutual_fund_name_2 STRING COMMENT 'Mutual Fund Name 2',
  isda STRING COMMENT 'ISDA',
  counterparty_name STRING COMMENT 'Counterparty name',
  counterparty_id_bb_company BIGINT COMMENT 'Counterparty Id BB Company',
  counterparty_rating STRING COMMENT 'Counterparty Rating',
  counterparty_rating_origin STRING COMMENT 'Counterparty Rating Origin',
  counterparty_activity_sector STRING COMMENT 'Counterparty Activity Sector',
  counterparty_issuer_industry_group STRING COMMENT 'Counterparty Issuer industry group',
  counterparty_issuer_industry_subgroup STRING COMMENT 'Counterparty Issuer industry subgroup',
  counterparty_country STRING COMMENT 'Counterparty Country',
  counterparty_ultimate_shareholder_name STRING COMMENT 'Counterparty Ultimate Shareholder name',
  counterparty_ultimate_shareholder_axa_rating STRING COMMENT 'Counterparty Ultimate Shareholder AXA Rating',
  counterparty_ultimate_shareholder_rating_origin STRING COMMENT 'Counterparty Ultimate Shareholder Rating Origin',
  counterparty_ultimate_shareholder_country STRING COMMENT 'Counterparty Ultimate Shareholder Country',
  rlissuer_name STRING COMMENT 'RLIssuer name',
  rl_issuer_id_bb_company BIGINT COMMENT 'RL Issuer Id BB Company',
  rl_issuer_rating STRING COMMENT 'RL Issuer Rating',
  rl_issuer_rating_origin STRING COMMENT 'RL Issuer Rating Origin',
  rl_issuer_activity_sector STRING COMMENT 'RL Issuer Activity Sector',
  rl_issuer_industry_group STRING COMMENT 'RL Issuer industry group',
  rl_issuer_industry_sub_group STRING COMMENT 'RL Issuer industry sub group',
  rl_issuer_country STRING COMMENT 'RL Issuer Country',
  rl_ultimate_shareholder_name STRING COMMENT 'RL Ultimate Shareholder name',
  rl_ultimate_shareholder_axa_rating STRING COMMENT 'RL Ultimate Shareholder AXA Rating',
  rl_ultimate_shareholder_rating_origin STRING COMMENT 'RL Ultimate Shareholder Rating Origin',
  rl_ultimate_shareholder_country STRING COMMENT 'RL Ultimate Shareholder Country',
  rl_index_name STRING COMMENT 'RL Index Name',
  rl_index_type_name STRING COMMENT 'RL Index Type (name)',
  rl_se_curity_code_type STRING COMMENT 'RL Security Code type',
  rl_se_curity_code STRING COMMENT 'RL Security Code',
  rl_se_curity_axa_rating STRING COMMENT 'RL Security AXA Rating',
  rl_se_curity_rating_origin STRING COMMENT 'RL Security Rating Origin',
  rl_seniority STRING COMMENT 'RL Seniority',
  rl_nature_of_underlying STRING COMMENT 'RL Nature Of Underlying',
  rl_payment_frequency BIGINT COMMENT 'RL Payment Frequency',
  rl_spread_strike_forex DECIMAL(20,4) COMMENT 'RL Spread Strike Forex',
  rl_spot_of_reference DECIMAL(20,4) COMMENT 'RL Spot of reference',
  rl_currency STRING COMMENT 'RL Currency',
  rl_day_count_basis STRING COMMENT 'RL Day Count Basis',
  plissuer_name STRING COMMENT 'PLIssuer name',
  pl_issuer_id_bb_company BIGINT COMMENT 'PL Issuer Id BB Company',
  pl_issuer_axa_rating STRING COMMENT 'PL Issuer AXA Rating',
  pl_issuer_axa_rating_origin STRING COMMENT 'PL Issuer AXA Rating Origin',
  pl_issuer_industry_sector STRING COMMENT 'PL Issuer Industry Sector',
  pl_issuer_industry_group STRING COMMENT 'PL Issuer industry group',
  pl_issuer_industry_sub_group STRING COMMENT 'PL Issuer industry sub group',
  pl_issuer_country STRING COMMENT 'PL Issuer Country',
  pl_ultimate_shareholder_name STRING COMMENT 'PL Ultimate Shareholder name',
  pl_ultimate_shareholder_axa_rating STRING COMMENT 'PL Ultimate Shareholder AXA Rating',
  pl_ultimate_shareholder_rating_origin STRING COMMENT 'PL Ultimate Shareholder Rating Origin',
  pl_ultimate_shareholder_country STRING COMMENT 'PL Ultimate Shareholder Country',
  pl_index_name STRING COMMENT 'PL Index Name',
  pl_index_type_name STRING COMMENT 'PL Index Type (name)',
  pl_se_curity_code_type STRING COMMENT 'PL Security Code type',
  pl_se_curity_code STRING COMMENT 'PL Security Code',
  pl_se_curity_axa_rating STRING COMMENT 'PL Security AXA Rating',
  pl_se_curity_rating_origin STRING COMMENT 'PL Security Rating Origin',
  pl_seniority STRING COMMENT 'PL Seniority',
  pl_nature_of_underlying STRING COMMENT 'PL Nature Of Underlying',
  pl_payment_frequency BIGINT COMMENT 'PL Payment Frequency',
  pl_spread_strike_forex DECIMAL(20,4) COMMENT 'PL Spread Strike Forex',
  pl_spot_of_reference DECIMAL(20,4) COMMENT 'PL Spot of reference',
  pl_currency STRING COMMENT 'PL Currency',
  pl_day_count_basis STRING COMMENT 'PL Day Count Basis',
  upload_origin STRING COMMENT 'Upload Origin',
  stec_upload STRING COMMENT 'STEC Upload',
  initialforexrate DECIMAL(20,4) COMMENT 'InitialForexRate',
  exchange_notional STRING COMMENT 'Exchange Notional',
  barrier_level DECIMAL(20,4) COMMENT 'Barrier Level',
  type_of_barrier STRING COMMENT 'Type Of Barrier',
  proceed_ratio DECIMAL(20,4) COMMENT 'Proceed Ratio',
  notional_rl DECIMAL(20,4) COMMENT 'Notional RL',
  notional_pl DECIMAL(20,4) COMMENT 'Notional PL',
  prorata_temporis STRING COMMENT 'Prorata Temporis',
  internal_transaction_indicator STRING COMMENT 'Internal Transaction Indicator',
  notional_deflation_protected STRING COMMENT 'Notional Deflation Protected',
  attachment_point DECIMAL(20,4) COMMENT 'Attachment Point',
  detachment_point DECIMAL(20,4) COMMENT 'Detachment Point',
  base_index STRING COMMENT 'Base Index',
  bloomberg_ticker STRING COMMENT 'Bloomberg Ticker')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/entity_trades_derivatives';

CREATE EXTERNAL TABLE IF NOT EXISTS entity_trades_derivatives_all (
  type_of_derivative_code STRING COMMENT 'Type of Derivative (code)',
  sophis_position_id STRING COMMENT 'Sophis Position ID',
  axa_entity STRING COMMENT 'AXA Entity',
  nature_of_fund STRING COMMENT 'Nature of fund',
  shareholder_exposure STRING COMMENT 'Shareholder exposure',
  company_name STRING COMMENT 'Company Name',
  portfolio STRING COMMENT 'Portfolio',
  ara_portfolio STRING COMMENT 'ARA Portfolio',
  type_of_derivative_name STRING COMMENT 'Type of Derivative (name)',
  long_payer_short_receiver STRING COMMENT 'Long (Payer)   Short (Receiver)',
  axa_instrument STRING COMMENT 'AXA instrument',
  instrument_name STRING COMMENT 'Instrument name',
  market_value DECIMAL(20,4) COMMENT 'Market Value',
  mtm_after_colat DECIMAL(20,4) COMMENT 'MTM After Colat',
  notional DECIMAL(20,4) COMMENT 'Notional',
  quantity DECIMAL(20,4) COMMENT 'Quantity',
  economic_exposure DECIMAL(20,4) COMMENT 'Economic Exposure',
  asset_manager STRING COMMENT 'Asset Manager',
  valuation_type STRING COMMENT 'Valuation Type',
  unit_price DECIMAL(20,4) COMMENT 'Unit Price',
  unit_price_currency STRING COMMENT 'Unit Price Currency',
  unit_price_forex_rate DECIMAL(20,4) COMMENT 'Unit Price Forex Rate',
  issue_date TIMESTAMP COMMENT 'Issue Date',
  starting_date TIMESTAMP COMMENT 'Starting Date',
  maturity_date TIMESTAMP COMMENT 'Maturity Date',
  maturity_category STRING COMMENT 'Maturity Category',
  currency STRING COMMENT 'Currency',
  package_code STRING COMMENT 'Package Code',
  basket_strategy STRING COMMENT 'Basket   Strategy',
  holding_type STRING COMMENT 'Holding type',
  magnitude_account STRING COMMENT 'Magnitude Account',
  magnitude_package STRING COMMENT 'Magnitude Package',
  magnitude_annex_account STRING COMMENT 'Magnitude Annex Account',
  hedge_accounting_category STRING COMMENT 'Hedge Accounting Category',
  mutual_fund_code STRING COMMENT 'Mutual Fund Code',
  mutual_fund_name STRING COMMENT 'Mutual Fund Name',
  mutual_fund_code_2 STRING COMMENT 'Mutual Fund Code 2',
  mutual_fund_name_2 STRING COMMENT 'Mutual Fund Name 2',
  isda STRING COMMENT 'ISDA',
  counterparty_name STRING COMMENT 'Counterparty name',
  counterparty_id_bb_company BIGINT COMMENT 'Counterparty Id BB Company',
  counterparty_rating STRING COMMENT 'Counterparty Rating',
  counterparty_rating_origin STRING COMMENT 'Counterparty Rating Origin',
  counterparty_activity_sector STRING COMMENT 'Counterparty Activity Sector',
  counterparty_issuer_industry_group STRING COMMENT 'Counterparty Issuer industry group',
  counterparty_issuer_industry_subgroup STRING COMMENT 'Counterparty Issuer industry subgroup',
  counterparty_country STRING COMMENT 'Counterparty Country',
  counterparty_ultimate_shareholder_name STRING COMMENT 'Counterparty Ultimate Shareholder name',
  counterparty_ultimate_shareholder_axa_rating STRING COMMENT 'Counterparty Ultimate Shareholder AXA Rating',
  counterparty_ultimate_shareholder_rating_origin STRING COMMENT 'Counterparty Ultimate Shareholder Rating Origin',
  counterparty_ultimate_shareholder_country STRING COMMENT 'Counterparty Ultimate Shareholder Country',
  rlissuer_name STRING COMMENT 'RLIssuer name',
  rl_issuer_id_bb_company BIGINT COMMENT 'RL Issuer Id BB Company',
  rl_issuer_rating STRING COMMENT 'RL Issuer Rating',
  rl_issuer_rating_origin STRING COMMENT 'RL Issuer Rating Origin',
  rl_issuer_activity_sector STRING COMMENT 'RL Issuer Activity Sector',
  rl_issuer_industry_group STRING COMMENT 'RL Issuer industry group',
  rl_issuer_industry_sub_group STRING COMMENT 'RL Issuer industry sub group',
  rl_issuer_country STRING COMMENT 'RL Issuer Country',
  rl_ultimate_shareholder_name STRING COMMENT 'RL Ultimate Shareholder name',
  rl_ultimate_shareholder_axa_rating STRING COMMENT 'RL Ultimate Shareholder AXA Rating',
  rl_ultimate_shareholder_rating_origin STRING COMMENT 'RL Ultimate Shareholder Rating Origin',
  rl_ultimate_shareholder_country STRING COMMENT 'RL Ultimate Shareholder Country',
  rl_index_name STRING COMMENT 'RL Index Name',
  rl_index_type_name STRING COMMENT 'RL Index Type (name)',
  rl_se_curity_code_type STRING COMMENT 'RL Security Code type',
  rl_se_curity_code STRING COMMENT 'RL Security Code',
  rl_se_curity_axa_rating STRING COMMENT 'RL Security AXA Rating',
  rl_se_curity_rating_origin STRING COMMENT 'RL Security Rating Origin',
  rl_seniority STRING COMMENT 'RL Seniority',
  rl_nature_of_underlying STRING COMMENT 'RL Nature Of Underlying',
  rl_payment_frequency BIGINT COMMENT 'RL Payment Frequency',
  rl_spread_strike_forex DECIMAL(20,4) COMMENT 'RL Spread Strike Forex',
  rl_spot_of_reference DECIMAL(20,4) COMMENT 'RL Spot of reference',
  rl_currency STRING COMMENT 'RL Currency',
  rl_day_count_basis STRING COMMENT 'RL Day Count Basis',
  plissuer_name STRING COMMENT 'PLIssuer name',
  pl_issuer_id_bb_company BIGINT COMMENT 'PL Issuer Id BB Company',
  pl_issuer_axa_rating STRING COMMENT 'PL Issuer AXA Rating',
  pl_issuer_axa_rating_origin STRING COMMENT 'PL Issuer AXA Rating Origin',
  pl_issuer_industry_sector STRING COMMENT 'PL Issuer Industry Sector',
  pl_issuer_industry_group STRING COMMENT 'PL Issuer industry group',
  pl_issuer_industry_sub_group STRING COMMENT 'PL Issuer industry sub group',
  pl_issuer_country STRING COMMENT 'PL Issuer Country',
  pl_ultimate_shareholder_name STRING COMMENT 'PL Ultimate Shareholder name',
  pl_ultimate_shareholder_axa_rating STRING COMMENT 'PL Ultimate Shareholder AXA Rating',
  pl_ultimate_shareholder_rating_origin STRING COMMENT 'PL Ultimate Shareholder Rating Origin',
  pl_ultimate_shareholder_country STRING COMMENT 'PL Ultimate Shareholder Country',
  pl_index_name STRING COMMENT 'PL Index Name',
  pl_index_type_name STRING COMMENT 'PL Index Type (name)',
  pl_se_curity_code_type STRING COMMENT 'PL Security Code type',
  pl_se_curity_code STRING COMMENT 'PL Security Code',
  pl_se_curity_axa_rating STRING COMMENT 'PL Security AXA Rating',
  pl_se_curity_rating_origin STRING COMMENT 'PL Security Rating Origin',
  pl_seniority STRING COMMENT 'PL Seniority',
  pl_nature_of_underlying STRING COMMENT 'PL Nature Of Underlying',
  pl_payment_frequency BIGINT COMMENT 'PL Payment Frequency',
  pl_spread_strike_forex DECIMAL(20,4) COMMENT 'PL Spread Strike Forex',
  pl_spot_of_reference DECIMAL(20,4) COMMENT 'PL Spot of reference',
  pl_currency STRING COMMENT 'PL Currency',
  pl_day_count_basis STRING COMMENT 'PL Day Count Basis',
  upload_origin STRING COMMENT 'Upload Origin',
  stec_upload STRING COMMENT 'STEC Upload',
  initialforexrate DECIMAL(20,4) COMMENT 'InitialForexRate',
  exchange_notional STRING COMMENT 'Exchange Notional',
  barrier_level DECIMAL(20,4) COMMENT 'Barrier Level',
  type_of_barrier STRING COMMENT 'Type Of Barrier',
  proceed_ratio DECIMAL(20,4) COMMENT 'Proceed Ratio',
  notional_rl DECIMAL(20,4) COMMENT 'Notional RL',
  notional_pl DECIMAL(20,4) COMMENT 'Notional PL',
  prorata_temporis STRING COMMENT 'Prorata Temporis',
  internal_transaction_indicator STRING COMMENT 'Internal Transaction Indicator',
  notional_deflation_protected STRING COMMENT 'Notional Deflation Protected',
  attachment_point DECIMAL(20,4) COMMENT 'Attachment Point',
  detachment_point DECIMAL(20,4) COMMENT 'Detachment Point',
  base_index STRING COMMENT 'Base Index',
  bloomberg_ticker STRING COMMENT 'Bloomberg Ticker')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/entity_trades_derivatives';


CREATE EXTERNAL TABLE IF NOT EXISTS entity_trades_physical (
  operational_company_code STRING COMMENT 'Operational Company Code',
  portfolio_code STRING COMMENT 'Portfolio Code',
  ara_portfolio_code STRING COMMENT 'ARA Portfolio Code',
  quantity DECIMAL(20,10) COMMENT 'Quantity',
  code_type STRING COMMENT 'Codetype',
  code STRING COMMENT 'Code',
  nature_of_fund STRING COMMENT 'Nature Of Fund',
  local_issuer_code STRING COMMENT 'Local Issuer Code',
  local_issuer_name STRING COMMENT 'Local Issuer Name',
  issuer_sector_code STRING COMMENT 'Issuer Sector code',
  country STRING COMMENT 'Country',
  se_curity_rating STRING COMMENT 'Security Rating',
  coupon_type STRING COMMENT 'Coupon Type',
  coupon_rate_dividend DECIMAL(20,10) COMMENT 'Coupon rate Dividend',
  coupon_frequency BIGINT COMMENT 'Coupon Frequency',
  margin_floater DECIMAL(20,10) COMMENT 'Margin Floater',
  reset_floating_index STRING COMMENT 'Reset Floating Index',
  maturity TIMESTAMP COMMENT 'Maturity',
  optionality STRING COMMENT 'Optionality',
  mutual_fund_code STRING COMMENT 'Mutual Fund Code',
  seniority_code STRING COMMENT 'Seniority Code',
  nominal DECIMAL(20,10) COMMENT 'Nominal',
  instrument_name STRING COMMENT 'Instrument Name',
  mutual_fund_code_name STRING COMMENT 'Mutual Fund Code Name',
  flow_type STRING COMMENT 'Flow Type',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  strategy STRING COMMENT 'Strategy',
  instrument_currency STRING COMMENT 'Instrument Currency',
  position_currency STRING COMMENT 'Position Currency',
  trade_date TIMESTAMP COMMENT 'Trade Date',
  transaction_amount_local_ccy DECIMAL(20,10) COMMENT 'Transaction Amount (local ccy)',
  se_curity_rating�_s_p STRING COMMENT 'Security rating� S&P',
  se_curity_rating�_moody_s STRING COMMENT 'Security rating� Moody s',
  se_curity_rating�_fitch STRING COMMENT 'Security rating� Fitch',
  ir_duration DECIMAL(20,10) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,10) COMMENT 'Credit Duration',
  yield DECIMAL(20,10) COMMENT 'Yield',
  issuer_id_type STRING COMMENT 'Issuer Id Type',
  issuer_nature STRING COMMENT 'Issuer Nature',
  inflation_index STRING COMMENT 'Inflation Index',
  issuer_ticker STRING COMMENT 'Issuer Ticker')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/entity_trades_physical';

CREATE EXTERNAL TABLE IF NOT EXISTS entity_trades_physical_all (
  operational_company_code STRING COMMENT 'Operational Company Code',
  portfolio_code STRING COMMENT 'Portfolio Code',
  ara_portfolio_code STRING COMMENT 'ARA Portfolio Code',
  quantity DECIMAL(20,10) COMMENT 'Quantity',
  code_type STRING COMMENT 'Codetype',
  code STRING COMMENT 'Code',
  nature_of_fund STRING COMMENT 'Nature Of Fund',
  local_issuer_code STRING COMMENT 'Local Issuer Code',
  local_issuer_name STRING COMMENT 'Local Issuer Name',
  issuer_sector_code STRING COMMENT 'Issuer Sector code',
  country STRING COMMENT 'Country',
  se_curity_rating STRING COMMENT 'Security Rating',
  coupon_type STRING COMMENT 'Coupon Type',
  coupon_rate_dividend DECIMAL(20,10) COMMENT 'Coupon rate Dividend',
  coupon_frequency BIGINT COMMENT 'Coupon Frequency',
  margin_floater DECIMAL(20,10) COMMENT 'Margin Floater',
  reset_floating_index STRING COMMENT 'Reset Floating Index',
  maturity TIMESTAMP COMMENT 'Maturity',
  optionality STRING COMMENT 'Optionality',
  mutual_fund_code STRING COMMENT 'Mutual Fund Code',
  seniority_code STRING COMMENT 'Seniority Code',
  nominal DECIMAL(20,10) COMMENT 'Nominal',
  instrument_name STRING COMMENT 'Instrument Name',
  mutual_fund_code_name STRING COMMENT 'Mutual Fund Code Name',
  flow_type STRING COMMENT 'Flow Type',
  ip_asset_class STRING COMMENT 'IP Asset Class',
  strategy STRING COMMENT 'Strategy',
  instrument_currency STRING COMMENT 'Instrument Currency',
  position_currency STRING COMMENT 'Position Currency',
  trade_date TIMESTAMP COMMENT 'Trade Date',
  transaction_amount_local_ccy DECIMAL(20,10) COMMENT 'Transaction Amount (local ccy)',
  se_curity_rating�_s_p STRING COMMENT 'Security rating� S&P',
  se_curity_rating�_moody_s STRING COMMENT 'Security rating� Moody s',
  se_curity_rating�_fitch STRING COMMENT 'Security rating� Fitch',
  ir_duration DECIMAL(20,10) COMMENT 'IR Duration',
  credit_duration DECIMAL(20,10) COMMENT 'Credit Duration',
  yield DECIMAL(20,10) COMMENT 'Yield',
  issuer_id_type STRING COMMENT 'Issuer Id Type',
  issuer_nature STRING COMMENT 'Issuer Nature',
  inflation_index STRING COMMENT 'Inflation Index',
  issuer_ticker STRING COMMENT 'Issuer Ticker')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/entity_trades_physical';


CREATE EXTERNAL TABLE IF NOT EXISTS sophis (
  alm_country STRING COMMENT 'ALMCOUNTRY',
  alm_company_name_c STRING COMMENT 'ALMCOMPANYNAME_C',
  segment_cell STRING COMMENT 'SEGMENT_CELL',
  fund_extern STRING COMMENT 'FUNDEXTERN',
  fund_curren STRING COMMENT 'FUNDCURREN',
  instrument_type_c STRING COMMENT 'INSTRUMENTTYPE_C',
  sophis_posi STRING COMMENT 'SOPHISPOSI',
  sophis_inst STRING COMMENT 'SOPHISINST',
  instrument_name_c STRING COMMENT 'INSTRUMENTNAME_C',
  trade_comments_ce STRING COMMENT 'TRADECOMMENTS_CE',
  sp_rating STRING COMMENT 'SP_RATING',
  moodys_rat STRING COMMENT 'MOODYS_RAT',
  counterparty_name STRING COMMENT 'COUNTERPARTYNAME',
  collateral STRING COMMENT 'COLLATERAL',
  trade_date TIMESTAMP COMMENT 'TRADEDATE_',
  eff_date TIMESTAMP COMMENT 'EFFDATE',
  mat_date TIMESTAMP COMMENT 'MATDATE',
  trade_notio DECIMAL(20,2) COMMENT 'TRADENOTIO',
  fixed_amoun STRING COMMENT 'FIXEDAMOUN',
  optionstri STRING COMMENT 'OPTIONSTRI',
  instr_curr STRING COMMENT 'INSTRCURR',
  trade_notioloc_curr STRING COMMENT 'TRADENOTIOLOCCURR',
  received_leg_index STRING COMMENT 'RECEIVEDLEGINDEX',
  received_leg_fre STRING COMMENT 'RECEIVEDLEGFRE',
  received_leg_spr DECIMAL(20,6) COMMENT 'RECEIVEDLEGSPR',
  received_leg_spo DECIMAL(20,6) COMMENT 'RECEIVEDLEGSPO',
  received_leg_cur STRING COMMENT 'RECEIVEDLEGCUR',
  received_leg_ini STRING COMMENT 'RECEIVEDLEGINI',
  paid_leg_index_name STRING COMMENT 'PAIDLEGINDEXNAME',
  paid_leg_fre STRING COMMENT 'PAIDLEGFRE',
  paid_leg_spr DECIMAL(20,6) COMMENT 'PAIDLEGSPR',
  paid_leg_spo DECIMAL(20,6) COMMENT 'PAIDLEGSPO',
  paid_leg_cur STRING COMMENT 'PAIDLEGCUR',
  paid_leg_ini STRING COMMENT 'PAIDLEGINI',
  trade_initi DECIMAL(20,2) COMMENT 'TRADEINITI',
  trade_curre STRING COMMENT 'TRADECURRE',
  instrso_val DECIMAL(20,2) COMMENT 'INSTRSOVAL1',
  instrso_val2 DECIMAL(20,2) COMMENT 'INSTRSOVAL2',
  instrso_val3 DECIMAL(20,2) COMMENT 'INSTRSOVAL3',
  instrso_val4 DECIMAL(20,2) COMMENT 'INSTRSOVAL4',
  instrso_val5 DECIMAL(20,2) COMMENT 'INSTRSOVAL5',
  instrso_val6 DECIMAL(20,2) COMMENT 'INSTRSOVAL6',
  instrso_val7 DECIMAL(20,2) COMMENT 'INSTRSOVAL7',
  dali_id STRING COMMENT 'DALI_ID',
  fund_id STRING COMMENT 'FUND_ID',
  attachement DECIMAL(20,2) COMMENT 'Attachement',
  detachement DECIMAL(20,2) COMMENT 'Detachement',
  barrier_type STRING COMMENT 'Barrier Type',
  barrier_level BIGINT COMMENT 'Barrier Level',
  underlying_instrument_id STRING COMMENT 'Underlying Instrument Id',
  exercise_style STRING COMMENT 'Exercise Style',
  strike_type STRING COMMENT 'Strike Type',
  default_event STRING COMMENT 'Default Event',
  coupon_type STRING COMMENT 'Coupon Type',
  receive_type STRING COMMENT 'Receive Type',
  pay_type STRING COMMENT 'Pay Type',
  notional_exchange STRING COMMENT 'Notional Exchange',
  option_type STRING COMMENT 'Option Type',
  forward_price STRING COMMENT 'Forward Price',
  premium_frequency STRING COMMENT 'Premium Frequency',
  premium STRING COMMENT 'Premium',
  base_index STRING COMMENT 'BaseIndex',
  proceed_ratio STRING COMMENT 'Proceed Ratio',
  sophis_volatility BIGINT COMMENT 'Sophis volatility',
  counterparty_valuation_date TIMESTAMP COMMENT 'Counterparty valuation date',
  counterparty_valuation_in_instrument_currency STRING COMMENT 'Counterparty valuation in instrument currency',
  counterparty_valuation_in_local_currency_1 BIGINT COMMENT 'Counterparty valuation in local currency',
  counterparty_valuation_in_local_currency_2 BIGINT COMMENT 'Counterparty valuation in local currency',
  sophis_valuation_in_local_currency BIGINT COMMENT 'Sophis valuation in local currency',
  sophis_clean_price BIGINT COMMENT 'Sophis clean price',
  sophis_accrued_interest BIGINT COMMENT 'Sophis accrued interest',
  clearing_broker STRING COMMENT 'Clearing Broker')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/sophis';

CREATE EXTERNAL TABLE IF NOT EXISTS sophis_all (
  alm_country STRING COMMENT 'ALMCOUNTRY',
  alm_company_name_c STRING COMMENT 'ALMCOMPANYNAME_C',
  segment_cell STRING COMMENT 'SEGMENT_CELL',
  fund_extern STRING COMMENT 'FUNDEXTERN',
  fund_curren STRING COMMENT 'FUNDCURREN',
  instrument_type_c STRING COMMENT 'INSTRUMENTTYPE_C',
  sophis_posi STRING COMMENT 'SOPHISPOSI',
  sophis_inst STRING COMMENT 'SOPHISINST',
  instrument_name_c STRING COMMENT 'INSTRUMENTNAME_C',
  trade_comments_ce STRING COMMENT 'TRADECOMMENTS_CE',
  sp_rating STRING COMMENT 'SP_RATING',
  moodys_rat STRING COMMENT 'MOODYS_RAT',
  counterparty_name STRING COMMENT 'COUNTERPARTYNAME',
  collateral STRING COMMENT 'COLLATERAL',
  trade_date TIMESTAMP COMMENT 'TRADEDATE_',
  eff_date TIMESTAMP COMMENT 'EFFDATE',
  mat_date TIMESTAMP COMMENT 'MATDATE',
  trade_notio DECIMAL(20,2) COMMENT 'TRADENOTIO',
  fixed_amoun STRING COMMENT 'FIXEDAMOUN',
  optionstri STRING COMMENT 'OPTIONSTRI',
  instr_curr STRING COMMENT 'INSTRCURR',
  trade_notioloc_curr STRING COMMENT 'TRADENOTIOLOCCURR',
  received_leg_index STRING COMMENT 'RECEIVEDLEGINDEX',
  received_leg_fre STRING COMMENT 'RECEIVEDLEGFRE',
  received_leg_spr DECIMAL(20,6) COMMENT 'RECEIVEDLEGSPR',
  received_leg_spo DECIMAL(20,6) COMMENT 'RECEIVEDLEGSPO',
  received_leg_cur STRING COMMENT 'RECEIVEDLEGCUR',
  received_leg_ini STRING COMMENT 'RECEIVEDLEGINI',
  paid_leg_index_name STRING COMMENT 'PAIDLEGINDEXNAME',
  paid_leg_fre STRING COMMENT 'PAIDLEGFRE',
  paid_leg_spr DECIMAL(20,6) COMMENT 'PAIDLEGSPR',
  paid_leg_spo DECIMAL(20,6) COMMENT 'PAIDLEGSPO',
  paid_leg_cur STRING COMMENT 'PAIDLEGCUR',
  paid_leg_ini STRING COMMENT 'PAIDLEGINI',
  trade_initi DECIMAL(20,2) COMMENT 'TRADEINITI',
  trade_curre STRING COMMENT 'TRADECURRE',
  instrso_val DECIMAL(20,2) COMMENT 'INSTRSOVAL1',
  instrso_val2 DECIMAL(20,2) COMMENT 'INSTRSOVAL2',
  instrso_val3 DECIMAL(20,2) COMMENT 'INSTRSOVAL3',
  instrso_val4 DECIMAL(20,2) COMMENT 'INSTRSOVAL4',
  instrso_val5 DECIMAL(20,2) COMMENT 'INSTRSOVAL5',
  instrso_val6 DECIMAL(20,2) COMMENT 'INSTRSOVAL6',
  instrso_val7 DECIMAL(20,2) COMMENT 'INSTRSOVAL7',
  dali_id STRING COMMENT 'DALI_ID',
  fund_id STRING COMMENT 'FUND_ID',
  attachement DECIMAL(20,2) COMMENT 'Attachement',
  detachement DECIMAL(20,2) COMMENT 'Detachement',
  barrier_type STRING COMMENT 'Barrier Type',
  barrier_level BIGINT COMMENT 'Barrier Level',
  underlying_instrument_id STRING COMMENT 'Underlying Instrument Id',
  exercise_style STRING COMMENT 'Exercise Style',
  strike_type STRING COMMENT 'Strike Type',
  default_event STRING COMMENT 'Default Event',
  coupon_type STRING COMMENT 'Coupon Type',
  receive_type STRING COMMENT 'Receive Type',
  pay_type STRING COMMENT 'Pay Type',
  notional_exchange STRING COMMENT 'Notional Exchange',
  option_type STRING COMMENT 'Option Type',
  forward_price STRING COMMENT 'Forward Price',
  premium_frequency STRING COMMENT 'Premium Frequency',
  premium STRING COMMENT 'Premium',
  base_index STRING COMMENT 'BaseIndex',
  proceed_ratio STRING COMMENT 'Proceed Ratio',
  sophis_volatility BIGINT COMMENT 'Sophis volatility',
  counterparty_valuation_date TIMESTAMP COMMENT 'Counterparty valuation date',
  counterparty_valuation_in_instrument_currency STRING COMMENT 'Counterparty valuation in instrument currency',
  counterparty_valuation_in_local_currency_1 BIGINT COMMENT 'Counterparty valuation in local currency',
  counterparty_valuation_in_local_currency_2 BIGINT COMMENT 'Counterparty valuation in local currency',
  sophis_valuation_in_local_currency BIGINT COMMENT 'Sophis valuation in local currency',
  sophis_clean_price BIGINT COMMENT 'Sophis clean price',
  sophis_accrued_interest BIGINT COMMENT 'Sophis accrued interest',
  clearing_broker STRING COMMENT 'Clearing Broker')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/sophis';


CREATE EXTERNAL TABLE IF NOT EXISTS ubs_delta_analytics (
  instrument_id STRING COMMENT 'Instrument ID',
  duration DECIMAL(20,2) COMMENT 'Duration',
  libor_delta DECIMAL(20,2) COMMENT 'LiborDelta1',
  convexity DECIMAL(20,2) COMMENT 'Convexity',
  spread_duration DECIMAL(20,2) COMMENT 'Spread Duration',
  equity_delta DECIMAL(20,2) COMMENT 'Equity Delta (+1%)',
  equity_gamma DECIMAL(20,2) COMMENT 'Equity Gamma (+1%)',
  yield_to_worst DECIMAL(20,2) COMMENT 'Yield to worst',
  fx_delta DECIMAL(20,2) COMMENT 'FX Delta',
  return_3m_rolldown DECIMAL(20,2) COMMENT 'Return (3m rolldown)',
  z_spread DECIMAL(20,2) COMMENT 'ZSpread')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ubs_delta_analytics';

CREATE EXTERNAL TABLE IF NOT EXISTS ubs_delta_analytics_all (
  instrument_id STRING COMMENT 'Instrument ID',
  duration DECIMAL(20,2) COMMENT 'Duration',
  libor_delta DECIMAL(20,2) COMMENT 'LiborDelta1',
  convexity DECIMAL(20,2) COMMENT 'Convexity',
  spread_duration DECIMAL(20,2) COMMENT 'Spread Duration',
  equity_delta DECIMAL(20,2) COMMENT 'Equity Delta (+1%)',
  equity_gamma DECIMAL(20,2) COMMENT 'Equity Gamma (+1%)',
  yield_to_worst DECIMAL(20,2) COMMENT 'Yield to worst',
  fx_delta DECIMAL(20,2) COMMENT 'FX Delta',
  return_3m_rolldown DECIMAL(20,2) COMMENT 'Return (3m rolldown)',
  z_spread DECIMAL(20,2) COMMENT 'ZSpread')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ubs_delta_analytics';


CREATE EXTERNAL TABLE IF NOT EXISTS ubs_delta_cash_flows (
  instrument_id STRING COMMENT 'Instrument ID',
  date TIMESTAMP COMMENT 'Date',
  currency STRING COMMENT 'Currency',
  axa_credit_stec_rating STRING COMMENT 'AXA_Credit_Stec_Rating',
  nominal DECIMAL(20,4) COMMENT 'Nominal',
  prin DECIMAL(20,4) COMMENT 'Prin',
  int DECIMAL(20,4) COMMENT 'Int')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ubs_delta_cash_flows';

CREATE EXTERNAL TABLE IF NOT EXISTS ubs_delta_cash_flows_all (
  instrument_id STRING COMMENT 'Instrument ID',
  date TIMESTAMP COMMENT 'Date',
  currency STRING COMMENT 'Currency',
  axa_credit_stec_rating STRING COMMENT 'AXA_Credit_Stec_Rating',
  nominal DECIMAL(20,4) COMMENT 'Nominal',
  prin DECIMAL(20,4) COMMENT 'Prin',
  int DECIMAL(20,4) COMMENT 'Int')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ubs_delta_cash_flows';


CREATE EXTERNAL TABLE IF NOT EXISTS ubs_delta_performance (
  instrument_id STRING COMMENT 'Instrument ID',
  total DECIMAL(20,2) COMMENT 'Total',
  fx DECIMAL(20,2) COMMENT 'FX',
  fx_carry DECIMAL(20,2) COMMENT 'FX Carry',
  carry DECIMAL(20,2) COMMENT 'Carry',
  cash DECIMAL(20,2) COMMENT 'Cash',
  excess_income DECIMAL(20,2) COMMENT 'Excess Income',
  pull_to_par DECIMAL(20,2) COMMENT 'Pull-To-Par',
  interest_rates DECIMAL(20,2) COMMENT 'Interest Rates',
  interestrates_parallel DECIMAL(20,2) COMMENT 'InterestRates (Parallel)',
  interestrates_residual DECIMAL(20,2) COMMENT 'InterestRates (Residual)',
  spread DECIMAL(20,2) COMMENT 'Spread',
  inflation DECIMAL(20,2) COMMENT 'Inflation',
  inflation_parallel DECIMAL(20,2) COMMENT 'Inflation (Parallel)',
  inflation_residual DECIMAL(20,2) COMMENT 'Inflation (Residual)',
  equity DECIMAL(20,2) COMMENT 'Equity')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ubs_delta_performance';

CREATE EXTERNAL TABLE IF NOT EXISTS ubs_delta_performance_all (
  instrument_id STRING COMMENT 'Instrument ID',
  total DECIMAL(20,2) COMMENT 'Total',
  fx DECIMAL(20,2) COMMENT 'FX',
  fx_carry DECIMAL(20,2) COMMENT 'FX Carry',
  carry DECIMAL(20,2) COMMENT 'Carry',
  cash DECIMAL(20,2) COMMENT 'Cash',
  excess_income DECIMAL(20,2) COMMENT 'Excess Income',
  pull_to_par DECIMAL(20,2) COMMENT 'Pull-To-Par',
  interest_rates DECIMAL(20,2) COMMENT 'Interest Rates',
  interestrates_parallel DECIMAL(20,2) COMMENT 'InterestRates (Parallel)',
  interestrates_residual DECIMAL(20,2) COMMENT 'InterestRates (Residual)',
  spread DECIMAL(20,2) COMMENT 'Spread',
  inflation DECIMAL(20,2) COMMENT 'Inflation',
  inflation_parallel DECIMAL(20,2) COMMENT 'Inflation (Parallel)',
  inflation_residual DECIMAL(20,2) COMMENT 'Inflation (Residual)',
  equity DECIMAL(20,2) COMMENT 'Equity')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ubs_delta_performance';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_ccode (
  company_code STRING,
  company_code_name STRING,
  activity_ccode STRING,
  isin STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ccode';

CREATE EXTERNAL TABLE IF NOT EXISTS activity_ccode_all (
  company_code STRING,
  company_code_name STRING,
  activity_ccode STRING,
  isin STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ccode';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_profit_center (
  profit_center STRING,
  profit_center_name STRING,
  activity_profit_center STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_profit_center';

CREATE EXTERNAL TABLE IF NOT EXISTS activity_profit_center_all (
  profit_center STRING,
  profit_center_name STRING,
  activity_profit_center STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_profit_center';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_ptf_type (
  portfolio_type_of_portfolio_key BIGINT,
  portfolio_type_of_portfolio_long_name STRING,
  activity_ptf_type STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ptf_type';

CREATE EXTERNAL TABLE IF NOT EXISTS activity_ptf_type_all (
  portfolio_type_of_portfolio_key BIGINT,
  portfolio_type_of_portfolio_long_name STRING,
  activity_ptf_type STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_ptf_type';


CREATE EXTERNAL TABLE IF NOT EXISTS activity_split (
  company_code STRING,
  company_code_name STRING,
  activity_split STRING,
  split_ratio DECIMAL(10,6))
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_split';

CREATE EXTERNAL TABLE IF NOT EXISTS activity_split_all (
  company_code STRING,
  company_code_name STRING,
  activity_split STRING,
  split_ratio DECIMAL(10,6))
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/activity_split';


CREATE EXTERNAL TABLE IF NOT EXISTS alternative_credit_fund_name (
  dali_id STRING,
  description STRING,
  alternative_credit_fund_name STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/alternative_credit_fund_name';

CREATE EXTERNAL TABLE IF NOT EXISTS alternative_credit_fund_name_all (
  dali_id STRING,
  description STRING,
  alternative_credit_fund_name STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/alternative_credit_fund_name';


CREATE EXTERNAL TABLE IF NOT EXISTS area_region_entity (
  company_code STRING,
  company_code_name STRING,
  area STRING,
  region STRING,
  entity STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/area_region_entity';

CREATE EXTERNAL TABLE IF NOT EXISTS area_region_entity_all (
  company_code STRING,
  company_code_name STRING,
  area STRING,
  region STRING,
  entity STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/area_region_entity';


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


CREATE EXTERNAL TABLE IF NOT EXISTS crdb_industry (
  client STRING,
  industry STRING,
  crdb_industry_sector STRING,
  crdb_industry_sector_description STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_industry';

CREATE EXTERNAL TABLE IF NOT EXISTS crdb_industry_all (
  client STRING,
  industry STRING,
  crdb_industry_sector STRING,
  crdb_industry_sector_description STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/crdb_industry';


CREATE EXTERNAL TABLE IF NOT EXISTS flow (
  business_transaction_year STRING,
  business_transaction_category_name STRING,
  flow STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/flow';

CREATE EXTERNAL TABLE IF NOT EXISTS flow_all (
  business_transaction_year STRING,
  business_transaction_category_name STRING,
  flow STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/flow';


CREATE EXTERNAL TABLE IF NOT EXISTS fx_rate_used (
  valuation_currency STRING,
  fx_rate_used DECIMAL(10,6),
  fx_rate_date TIMESTAMP)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/fx_rate_used';

CREATE EXTERNAL TABLE IF NOT EXISTS fx_rate_used_all (
  valuation_currency STRING,
  fx_rate_used DECIMAL(10,6),
  fx_rate_date TIMESTAMP)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/fx_rate_used';


CREATE EXTERNAL TABLE IF NOT EXISTS ig_big (
  rating STRING,
  rating_name STRING,
  ig_big STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ig_big';

CREATE EXTERNAL TABLE IF NOT EXISTS ig_big_all (
  rating STRING,
  rating_name STRING,
  ig_big STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ig_big';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_aar (
  aar STRING,
  aar_name STRING,
  ip_asset_class_aar STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_aar';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_aar_all (
  aar STRING,
  aar_name STRING,
  ip_asset_class_aar STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_aar';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_apc (
  first_asset_class STRING,
  ip_asset_class_loantype STRING,
  asset_pool_classification BIGINT,
  asset_pool_classification_name STRING,
  ip_asset_class_apc STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_apc';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_apc_all (
  first_asset_class STRING,
  ip_asset_class_loantype STRING,
  asset_pool_classification BIGINT,
  asset_pool_classification_name STRING,
  ip_asset_class_apc STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_apc';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_country (
  first_asset_class STRING,
  issuer_fiscal_country_isv_key STRING,
  issuer_fiscal_country_isv_name STRING,
  ip_asset_class_country STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_country';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_country_all (
  first_asset_class STRING,
  issuer_fiscal_country_isv_key STRING,
  issuer_fiscal_country_isv_name STRING,
  ip_asset_class_country STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_country';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_inframidcap (
  issuer STRING,
  issuer_long_name STRING,
  strategies STRING,
  ip_asset_class_inframidcap STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_inframidcap';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_inframidcap_all (
  issuer STRING,
  issuer_long_name STRING,
  strategies STRING,
  ip_asset_class_inframidcap STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_inframidcap';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer (
  issuer STRING,
  issuer_name STRING,
  temp1 STRING,
  ip_asset_class_issuer STRING,
  comments_aar_et_matthieu STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer_all (
  issuer STRING,
  issuer_name STRING,
  temp1 STRING,
  ip_asset_class_issuer STRING,
  comments_aar_et_matthieu STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer_type (
  first_asset_class STRING,
  ip_asset_class_loan_type STRING,
  issuer_type BIGINT,
  issuer_type_name STRING,
  ip_asset_class_issuer_type STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer_type';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_issuer_type_all (
  first_asset_class STRING,
  ip_asset_class_loan_type STRING,
  issuer_type BIGINT,
  issuer_type_name STRING,
  ip_asset_class_issuer_type STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_issuer_type';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_loan_type (
  first_asset_class STRING,
  product_bnl_security_type_key STRING,
  product_bnl_security_type_name STRING,
  subordination_level STRING,
  ip_asset_class_loantype STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_loan_type';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_loan_type_all (
  first_asset_class STRING,
  product_bnl_security_type_key STRING,
  product_bnl_security_type_name STRING,
  subordination_level STRING,
  ip_asset_class_loantype STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_loan_type';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_sector (
  ip_asset_class_seniority STRING,
  crdb_industry_sector STRING,
  industry_name STRING,
  ip_asset_class_sector STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_sector';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_sector_all (
  ip_asset_class_seniority STRING,
  crdb_industry_sector STRING,
  industry_name STRING,
  ip_asset_class_sector STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_sector';


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_seniority (
  ip_asset_class_issuertype STRING,
  ip_asset_class_apc STRING,
  seniority STRING,
  seniority_name STRING,
  ip_asset_class_seniority STRING,
  comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_seniority';

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


CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_strategy (
  strategy_pi2 STRING,
  temp2 STRING,
  ip_asset_class_strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_strategy';

CREATE EXTERNAL TABLE IF NOT EXISTS ip_asset_class_strategy_all (
  strategy_pi2 STRING,
  temp2 STRING,
  ip_asset_class_strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ip_asset_class_strategy';


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


CREATE EXTERNAL TABLE IF NOT EXISTS ltf_code (
  company_code STRING,
  company_code_name STRING,
  ltf_code STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_code';

CREATE EXTERNAL TABLE IF NOT EXISTS ltf_code_all (
  company_code STRING,
  company_code_name STRING,
  ltf_code STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_code';


CREATE EXTERNAL TABLE IF NOT EXISTS ltf_flag (
  security_id STRING,
  security_id_name STRING,
  investment_in_ltf_flag STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_flag';

CREATE EXTERNAL TABLE IF NOT EXISTS ltf_flag_all (
  security_id STRING,
  security_id_name STRING,
  investment_in_ltf_flag STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ltf_flag';


CREATE EXTERNAL TABLE IF NOT EXISTS rate (
  bond_classification BIGINT,
  bond_classification_name STRING,
  rate STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/rate';

CREATE EXTERNAL TABLE IF NOT EXISTS rate_all (
  bond_classification BIGINT,
  bond_classification_name STRING,
  rate STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/rate';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_dali_id (
  entity STRING,
  dali_id STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_dali_id';

CREATE EXTERNAL TABLE IF NOT EXISTS strategy_dali_id_all (
  entity STRING,
  dali_id STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_dali_id';


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_isin (
  entity STRING,
  local_code_type STRING,
  local_code STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_isin';

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


CREATE EXTERNAL TABLE IF NOT EXISTS strategy_non_ltf (
  entity STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_non_ltf';

CREATE EXTERNAL TABLE IF NOT EXISTS strategy_non_ltf_all (
  entity STRING,
  mutual_fund_code STRING,
  mutual_fund_name STRING,
  strategy STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/strategy_non_ltf';


CREATE EXTERNAL TABLE IF NOT EXISTS temp1 (
  first_asset_class STRING,
  temp1 STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp1';

CREATE EXTERNAL TABLE IF NOT EXISTS temp1_all (
  first_asset_class STRING,
  temp1 STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp1';


CREATE EXTERNAL TABLE IF NOT EXISTS temp2 (
  second_asset_class STRING,
  temp2 STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp2';

CREATE EXTERNAL TABLE IF NOT EXISTS temp2_all (
  second_asset_class STRING,
  temp2 STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/temp2';


CREATE EXTERNAL TABLE IF NOT EXISTS vorratsvermoegen_flag (
  company_code STRING,
  securities_account STRING,
  vorratsvermoegen_flag STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/vorratsvermoegen_flag';

CREATE EXTERNAL TABLE IF NOT EXISTS vorratsvermoegen_flag_all (
  company_code STRING,
  securities_account STRING,
  vorratsvermoegen_flag STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/vorratsvermoegen_flag';


CREATE EXTERNAL TABLE IF NOT EXISTS month_future (
  starting_month STRING COMMENT 'Month of field  Starting Date ',
  month_future STRING COMMENT 'Month Future')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/month_future';

CREATE EXTERNAL TABLE IF NOT EXISTS month_future_all (
  starting_month STRING COMMENT 'Month of field  Starting Date ',
  month_future STRING COMMENT 'Month Future')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/month_future';


CREATE EXTERNAL TABLE IF NOT EXISTS cms_tensor (
  rl_index_name STRING COMMENT 'RL Index Name',
  cms_tenor STRING COMMENT 'CMS tenor')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/cms_tensor';

CREATE EXTERNAL TABLE IF NOT EXISTS cms_tensor_all (
  rl_index_name STRING COMMENT 'RL Index Name',
  cms_tenor STRING COMMENT 'CMS tenor')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/cms_tensor';


CREATE EXTERNAL TABLE IF NOT EXISTS ticker_future_sec_code (
  pl_security_code STRING,
  rl_security_code STRING,
  ticker_future_sec_pl STRING,
  ticker_future_sec_rl STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ticker_future_sec_code';

CREATE EXTERNAL TABLE IF NOT EXISTS ticker_future_sec_code_all (
  pl_security_code STRING,
  rl_security_code STRING,
  ticker_future_sec_pl STRING,
  ticker_future_sec_rl STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ticker_future_sec_code';


CREATE EXTERNAL TABLE IF NOT EXISTS ticker_future_index (
  pl_index_name STRING,
  rl_index_name STRING,
  ticker_future_index_pl STRING,
  ticker_future_index_rl STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ticker_future_index';

CREATE EXTERNAL TABLE IF NOT EXISTS ticker_future_index_all (
  pl_index_name STRING,
  rl_index_name STRING,
  ticker_future_index_pl STRING,
  ticker_future_index_rl STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/ticker_future_index';


CREATE EXTERNAL TABLE IF NOT EXISTS index_name_normalized (
  pl_index_name STRING COMMENT 'pl_index_name',
  pl_index_name_normalized STRING COMMENT 'pl_index_name_normalized')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/index_name_normalized';

CREATE EXTERNAL TABLE IF NOT EXISTS index_name_normalized_all (
  pl_index_name STRING COMMENT 'pl_index_name',
  pl_index_name_normalized STRING COMMENT 'pl_index_name_normalized')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/pisquare/data/index_name_normalized';


