CREATE EXTERNAL TABLE IF NOT EXISTS shp_flows_de (
  a_l_indicator STRING COMMENT 'A L Indicator',
  account_symbol_d_c STRING COMMENT 'Account Symbol D C',
  acquisition_date TIMESTAMP COMMENT 'Acquisition Date',
  actassmtref STRING COMMENT 'ActAssmtRef',
  alternative_account STRING COMMENT 'Alternative Account',
  asset_altern_acc STRING COMMENT 'Asset Altern  Acc',
  asset_manager_code STRING COMMENT 'Asset Manager Code',
  atras_id STRING COMMENT 'ATRAS ID',
  balance_sheet_acct STRING COMMENT 'Balance Sheet Acct',
  business_area STRING COMMENT 'Business area',
  business_trans_cat STRING COMMENT 'Business Trans  Cat ',
  business_transaction STRING COMMENT 'Business Transaction',
  chart_of_accounts STRING COMMENT 'Chart of accounts',
  comp_code_look_thro STRING COMMENT 'Comp  Code Look-Thro',
  company_code STRING COMMENT 'Company code',
  contract_type STRING COMMENT 'Contract Type',
  controlling_area STRING COMMENT 'Controlling Area',
  copernic_magnitude_c STRING COMMENT 'Copernic Magnitude C',
  debit_credit STRING COMMENT 'Debit Credit',
  due_date TIMESTAMP COMMENT 'Due Date',
  fair_value_hierarchy STRING COMMENT 'Fair value hierarchy',
  financial_trans STRING COMMENT 'Financial Trans ',
  flag_carry_forward STRING COMMENT 'Flag Carry Forward',
  flow_number STRING COMMENT 'Flow Number',
  flow_type STRING COMMENT 'Flow Type',
  g_l_account STRING COMMENT 'G L Account',
  gaap_difference_just STRING COMMENT 'Gaap difference just',
  gen_bus_trans_cat STRING COMMENT 'Gen  Bus Trans  Cat ',
  gen_business_transa STRING COMMENT 'Gen  Business Transa',
  gen_quant_change_ca STRING COMMENT 'Gen  Quant Change Ca',
  group_of_risk_solv STRING COMMENT 'Group of risk   Solv',
  house_bank STRING COMMENT 'House Bank',
  house_bank_account STRING COMMENT 'House Bank Account',
  idx_infl_lk_bond_pur STRING COMMENT 'Idx infl Lk Bond Pur',
  ifrs_investments_cla STRING COMMENT 'IFRS Investments Cla',
  ledger STRING COMMENT 'Ledger',
  legder_posting_sts STRING COMMENT 'Legder Posting Sts',
  long_short STRING COMMENT 'Long Short',
  look_through_flag STRING COMMENT 'Look-Through Flag',
  lot STRING COMMENT 'Lot',
  mag_accnt_from_pos_a STRING COMMENT 'Mag Accnt from Pos A',
  magnitude_package STRING COMMENT 'Magnitude Package',
  movement_type STRING COMMENT 'Movement Type',
  o_pos_acqu_date_lot TIMESTAMP COMMENT 'O Pos Acqu Date Lot',
  partner_company STRING COMMENT 'Partner Company',
  payment_date TIMESTAMP COMMENT 'Payment Date',
  position_account STRING COMMENT 'Position Account',
  position_change_cat STRING COMMENT 'Position Change Cat ',
  position_indicator_1 STRING COMMENT 'Position Indicator 1',
  position_indicator_2 STRING COMMENT 'Position Indicator 2',
  position_value_date TIMESTAMP COMMENT 'Position Value Date',
  posting_status STRING COMMENT 'Posting Status',
  price_source STRING COMMENT 'Price Source',
  product STRING COMMENT 'Product',
  product_category STRING COMMENT 'Product Category',
  product_company_code STRING COMMENT 'Product Company Code',
  product_type STRING COMMENT 'Product Type',
  profit_center STRING COMMENT 'Profit Center',
  quantity_change_cat STRING COMMENT 'Quantity Change Cat ',
  risk_partner STRING COMMENT 'Risk Partner',
  segmen STRING COMMENT 'Segmen',
  solv_ii_cluster_acc STRING COMMENT 'Solv  II Cluster Acc',
  source STRING COMMENT 'Source',
  source_system STRING COMMENT 'Source System',
  subscription_rights STRING COMMENT 'Subscription Rights',
  valuation_area STRING COMMENT 'Valuation Area',
  valuation_class STRING COMMENT 'Valuation Class',
  calendar_day TIMESTAMP COMMENT 'Calendar day',
  fiscal_year STRING COMMENT 'Fiscal year',
  fiscal_year_variant STRING COMMENT 'Fiscal Year Variant',
  fiscal_year_period STRING COMMENT 'Fiscal year period',
  posting_period STRING COMMENT 'Posting period',
  position_currency STRING COMMENT 'Position Currency',
  valuation_currency STRING COMMENT 'Valuation Currency',
  amount_in_pos_curr DECIMAL(17,2) COMMENT 'Amount in Pos Curr ',
  amount_in_val_crcy DECIMAL(17,2) COMMENT 'Amount in Val Crcy',
  d_cl_pd_def_taxc_pc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC PC',
  d_cl_pd_def_taxc_vc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC VC',
  d_impairment_poscrcy DECIMAL(17,2) COMMENT 'D Impairment PosCrcy',
  d_impairment_valcrcy DECIMAL(17,2) COMMENT 'D Impairment ValCrcy',
  d_val_fx_aav_in_vc DECIMAL(17,2) COMMENT 'D Val FX AAV in VC',
  d_swap_mar_a_d_pc DECIMAL(17,2) COMMENT 'D  Swap Mar  A D PC',
  d_vaco_fc_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(FC) NonPL VC',
  d_vaco_sec_nonpl_pc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL PC',
  d_vaco_sec_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL VC',
  del_fc_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del  FC Val NonPL VC',
  del_amort_acq_val_pc DECIMAL(17,2) COMMENT 'Del Amort Acq Val PC',
  del_amort_acq_val_vc DECIMAL(17,2) COMMENT 'Del Amort Acq Val VC',
  del_bval_ex_costs_pc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs PC',
  del_bval_ex_costs_vc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs VC',
  del_sec_val_nonpl_pc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL PC',
  del_sec_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL VC',
  del_spot_val_purc_vc DECIMAL(17,2) COMMENT 'Del Spot Val PurC VC',
  del_spot_val_salc_vc DECIMAL(17,2) COMMENT 'Del Spot Val SalC VC',
  del_val_fc_costs_vc DECIMAL(17,2) COMMENT 'Del Val  FC Costs VC',
  del_val_se_costs_pc DECIMAL(17,2) COMMENT 'Del Val  SE Costs PC',
  del_val_se_costs_vc DECIMAL(17,2) COMMENT 'Del Val  SE Costs VC',
  delta_acc_int_pc DECIMAL(17,2) COMMENT 'Delta Acc  Int  PC',
  delta_acc_int_vc DECIMAL(17,2) COMMENT 'Delta Acc  Int  VC',
  delta_accum_repay_pc DECIMAL(17,2) COMMENT 'Delta Accum Repay PC',
  delta_accum_repay_vc DECIMAL(17,2) COMMENT 'Delta Accum Repay VC',
  delta_acq_val_pc DECIMAL(17,2) COMMENT 'Delta Acq Val  PC',
  delta_acq_val_vc DECIMAL(17,2) COMMENT 'Delta Acq Val  VC',
  delta_amort_neg_pc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  PC',
  delta_amort_neg_vc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  VC',
  delta_amortizat_pc DECIMAL(17,2) COMMENT 'Delta Amortizat  PC',
  delta_amortizat_vc DECIMAL(17,2) COMMENT 'Delta Amortizat  VC',
  delta_book_val_pc DECIMAL(17,2) COMMENT 'Delta Book Val  PC',
  delta_book_val_vc DECIMAL(17,2) COMMENT 'Delta Book Val  VC',
  delta_costs_pc DECIMAL(17,2) COMMENT 'Delta Costs PC',
  delta_costs_vc DECIMAL(17,2) COMMENT 'Delta Costs VC',
  delta_fc_val_vc DECIMAL(17,2) COMMENT 'Delta FC Val  VC',
  delta_fx_impairmt_vc DECIMAL(17,2) COMMENT 'Delta FX Impairmt VC',
  delta_no_of_units DECIMAL(17,3) COMMENT 'Delta No  of Units',
  delta_nom_amnt_pc DECIMAL(17,2) COMMENT 'Delta Nom  Amnt PC',
  delta_orig_nomamt_pc DECIMAL(17,2) COMMENT 'Delta Orig NomAmt PC',
  delta_purch_amnt_pc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt PC',
  delta_purch_amnt_vc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt VC',
  delta_sec_val_pc DECIMAL(17,2) COMMENT 'Delta Sec Val  PC',
  delta_sec_val_vc DECIMAL(17,2) COMMENT 'Delta Sec Val  VC',
  delta_swap_val_vc DECIMAL(17,2) COMMENT 'Delta Swap Val  VC',
  delta_swapmar_a_d_vc DECIMAL(17,2) COMMENT 'Delta SwapMar A D VC',
  delta_var_margin_pc DECIMAL(17,2) COMMENT 'Delta Var Margin PC',
  delta_var_margin_vc DECIMAL(17,2) COMMENT 'Delta Var Margin VC',
  index_clean_amount_p DECIMAL(17,2) COMMENT 'Index Clean Amount P',
  qty_interest_dividen DECIMAL(17,3) COMMENT 'Qty interest dividen')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_flows_de';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_flows_fr (
  a_l_indicator STRING COMMENT 'A L Indicator',
  account_symbol_d_c STRING COMMENT 'Account Symbol D C',
  acquisition_date TIMESTAMP COMMENT 'Acquisition Date',
  actassmtref STRING COMMENT 'ActAssmtRef',
  alternative_account STRING COMMENT 'Alternative Account',
  asset_altern_acc STRING COMMENT 'Asset Altern  Acc',
  asset_manager_code STRING COMMENT 'Asset Manager Code',
  atras_id STRING COMMENT 'ATRAS ID',
  balance_sheet_acct STRING COMMENT 'Balance Sheet Acct',
  business_area STRING COMMENT 'Business area',
  business_trans_cat STRING COMMENT 'Business Trans  Cat ',
  business_transaction STRING COMMENT 'Business Transaction',
  chart_of_accounts STRING COMMENT 'Chart of accounts',
  comp_code_look_thro STRING COMMENT 'Comp  Code Look-Thro',
  company_code STRING COMMENT 'Company code',
  contract_type STRING COMMENT 'Contract Type',
  controlling_area STRING COMMENT 'Controlling Area',
  copernic_magnitude_c STRING COMMENT 'Copernic Magnitude C',
  debit_credit STRING COMMENT 'Debit Credit',
  due_date TIMESTAMP COMMENT 'Due Date',
  fair_value_hierarchy STRING COMMENT 'Fair value hierarchy',
  financial_trans STRING COMMENT 'Financial Trans ',
  flag_carry_forward STRING COMMENT 'Flag Carry Forward',
  flow_number STRING COMMENT 'Flow Number',
  flow_type STRING COMMENT 'Flow Type',
  g_l_account STRING COMMENT 'G L Account',
  gaap_difference_just STRING COMMENT 'Gaap difference just',
  gen_bus_trans_cat STRING COMMENT 'Gen  Bus Trans  Cat ',
  gen_business_transa STRING COMMENT 'Gen  Business Transa',
  gen_quant_change_ca STRING COMMENT 'Gen  Quant Change Ca',
  group_of_risk_solv STRING COMMENT 'Group of risk   Solv',
  house_bank STRING COMMENT 'House Bank',
  house_bank_account STRING COMMENT 'House Bank Account',
  idx_infl_lk_bond_pur STRING COMMENT 'Idx infl Lk Bond Pur',
  ifrs_investments_cla STRING COMMENT 'IFRS Investments Cla',
  ledger STRING COMMENT 'Ledger',
  legder_posting_sts STRING COMMENT 'Legder Posting Sts',
  long_short STRING COMMENT 'Long Short',
  look_through_flag STRING COMMENT 'Look-Through Flag',
  lot STRING COMMENT 'Lot',
  mag_accnt_from_pos_a STRING COMMENT 'Mag Accnt from Pos A',
  magnitude_package STRING COMMENT 'Magnitude Package',
  movement_type STRING COMMENT 'Movement Type',
  o_pos_acqu_date_lot TIMESTAMP COMMENT 'O Pos Acqu Date Lot',
  partner_company STRING COMMENT 'Partner Company',
  payment_date TIMESTAMP COMMENT 'Payment Date',
  position_account STRING COMMENT 'Position Account',
  position_change_cat STRING COMMENT 'Position Change Cat ',
  position_indicator_1 STRING COMMENT 'Position Indicator 1',
  position_indicator_2 STRING COMMENT 'Position Indicator 2',
  position_value_date TIMESTAMP COMMENT 'Position Value Date',
  posting_status STRING COMMENT 'Posting Status',
  price_source STRING COMMENT 'Price Source',
  product STRING COMMENT 'Product',
  product_category STRING COMMENT 'Product Category',
  product_company_code STRING COMMENT 'Product Company Code',
  product_type STRING COMMENT 'Product Type',
  profit_center STRING COMMENT 'Profit Center',
  quantity_change_cat STRING COMMENT 'Quantity Change Cat ',
  risk_partner STRING COMMENT 'Risk Partner',
  segmen STRING COMMENT 'Segmen',
  solv_ii_cluster_acc STRING COMMENT 'Solv  II Cluster Acc',
  source STRING COMMENT 'Source',
  source_system STRING COMMENT 'Source System',
  subscription_rights STRING COMMENT 'Subscription Rights',
  valuation_area STRING COMMENT 'Valuation Area',
  valuation_class STRING COMMENT 'Valuation Class',
  calendar_day TIMESTAMP COMMENT 'Calendar day',
  fiscal_year STRING COMMENT 'Fiscal year',
  fiscal_year_variant STRING COMMENT 'Fiscal Year Variant',
  fiscal_year_period STRING COMMENT 'Fiscal year period',
  posting_period STRING COMMENT 'Posting period',
  position_currency STRING COMMENT 'Position Currency',
  valuation_currency STRING COMMENT 'Valuation Currency',
  amount_in_pos_curr DECIMAL(17,2) COMMENT 'Amount in Pos Curr ',
  amount_in_val_crcy DECIMAL(17,2) COMMENT 'Amount in Val Crcy',
  d_cl_pd_def_taxc_pc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC PC',
  d_cl_pd_def_taxc_vc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC VC',
  d_impairment_poscrcy DECIMAL(17,2) COMMENT 'D Impairment PosCrcy',
  d_impairment_valcrcy DECIMAL(17,2) COMMENT 'D Impairment ValCrcy',
  d_val_fx_aav_in_vc DECIMAL(17,2) COMMENT 'D Val FX AAV in VC',
  d_swap_mar_a_d_pc DECIMAL(17,2) COMMENT 'D  Swap Mar  A D PC',
  d_vaco_fc_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(FC) NonPL VC',
  d_vaco_sec_nonpl_pc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL PC',
  d_vaco_sec_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL VC',
  del_fc_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del  FC Val NonPL VC',
  del_amort_acq_val_pc DECIMAL(17,2) COMMENT 'Del Amort Acq Val PC',
  del_amort_acq_val_vc DECIMAL(17,2) COMMENT 'Del Amort Acq Val VC',
  del_bval_ex_costs_pc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs PC',
  del_bval_ex_costs_vc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs VC',
  del_sec_val_nonpl_pc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL PC',
  del_sec_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL VC',
  del_spot_val_purc_vc DECIMAL(17,2) COMMENT 'Del Spot Val PurC VC',
  del_spot_val_salc_vc DECIMAL(17,2) COMMENT 'Del Spot Val SalC VC',
  del_val_fc_costs_vc DECIMAL(17,2) COMMENT 'Del Val  FC Costs VC',
  del_val_se_costs_pc DECIMAL(17,2) COMMENT 'Del Val  SE Costs PC',
  del_val_se_costs_vc DECIMAL(17,2) COMMENT 'Del Val  SE Costs VC',
  delta_acc_int_pc DECIMAL(17,2) COMMENT 'Delta Acc  Int  PC',
  delta_acc_int_vc DECIMAL(17,2) COMMENT 'Delta Acc  Int  VC',
  delta_accum_repay_pc DECIMAL(17,2) COMMENT 'Delta Accum Repay PC',
  delta_accum_repay_vc DECIMAL(17,2) COMMENT 'Delta Accum Repay VC',
  delta_acq_val_pc DECIMAL(17,2) COMMENT 'Delta Acq Val  PC',
  delta_acq_val_vc DECIMAL(17,2) COMMENT 'Delta Acq Val  VC',
  delta_amort_neg_pc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  PC',
  delta_amort_neg_vc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  VC',
  delta_amortizat_pc DECIMAL(17,2) COMMENT 'Delta Amortizat  PC',
  delta_amortizat_vc DECIMAL(17,2) COMMENT 'Delta Amortizat  VC',
  delta_book_val_pc DECIMAL(17,2) COMMENT 'Delta Book Val  PC',
  delta_book_val_vc DECIMAL(17,2) COMMENT 'Delta Book Val  VC',
  delta_costs_pc DECIMAL(17,2) COMMENT 'Delta Costs PC',
  delta_costs_vc DECIMAL(17,2) COMMENT 'Delta Costs VC',
  delta_fc_val_vc DECIMAL(17,2) COMMENT 'Delta FC Val  VC',
  delta_fx_impairmt_vc DECIMAL(17,2) COMMENT 'Delta FX Impairmt VC',
  delta_no_of_units DECIMAL(17,3) COMMENT 'Delta No  of Units',
  delta_nom_amnt_pc DECIMAL(17,2) COMMENT 'Delta Nom  Amnt PC',
  delta_orig_nomamt_pc DECIMAL(17,2) COMMENT 'Delta Orig NomAmt PC',
  delta_purch_amnt_pc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt PC',
  delta_purch_amnt_vc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt VC',
  delta_sec_val_pc DECIMAL(17,2) COMMENT 'Delta Sec Val  PC',
  delta_sec_val_vc DECIMAL(17,2) COMMENT 'Delta Sec Val  VC',
  delta_swap_val_vc DECIMAL(17,2) COMMENT 'Delta Swap Val  VC',
  delta_swapmar_a_d_vc DECIMAL(17,2) COMMENT 'Delta SwapMar A D VC',
  delta_var_margin_pc DECIMAL(17,2) COMMENT 'Delta Var Margin PC',
  delta_var_margin_vc DECIMAL(17,2) COMMENT 'Delta Var Margin VC',
  index_clean_amount_p DECIMAL(17,2) COMMENT 'Index Clean Amount P',
  qty_interest_dividen DECIMAL(17,3) COMMENT 'Qty interest dividen',
  sezione STRING COMMENT 'Sezione',
  affectation_a5_code STRING COMMENT 'Affectation (A5 code)',
  a5_estimation STRING COMMENT 'A5 Estimation',
  t2_classification STRING COMMENT 'T2 Classification')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_flows_fr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_flows_be (
  a_l_indicator STRING COMMENT 'A L Indicator',
  account_symbol_d_c STRING COMMENT 'Account Symbol D C',
  acquisition_date TIMESTAMP COMMENT 'Acquisition Date',
  actassmtref STRING COMMENT 'ActAssmtRef',
  alternative_account STRING COMMENT 'Alternative Account',
  asset_altern_acc STRING COMMENT 'Asset Altern  Acc',
  asset_manager_code STRING COMMENT 'Asset Manager Code',
  atras_id STRING COMMENT 'ATRAS ID',
  balance_sheet_acct STRING COMMENT 'Balance Sheet Acct',
  business_area STRING COMMENT 'Business area',
  business_trans_cat STRING COMMENT 'Business Trans  Cat ',
  business_transaction STRING COMMENT 'Business Transaction',
  chart_of_accounts STRING COMMENT 'Chart of accounts',
  comp_code_look_thro STRING COMMENT 'Comp  Code Look-Thro',
  company_code STRING COMMENT 'Company code',
  contract_type STRING COMMENT 'Contract Type',
  controlling_area STRING COMMENT 'Controlling Area',
  copernic_magnitude_c STRING COMMENT 'Copernic Magnitude C',
  debit_credit STRING COMMENT 'Debit Credit',
  due_date TIMESTAMP COMMENT 'Due Date',
  fair_value_hierarchy STRING COMMENT 'Fair value hierarchy',
  financial_trans STRING COMMENT 'Financial Trans ',
  flag_carry_forward STRING COMMENT 'Flag Carry Forward',
  flow_number STRING COMMENT 'Flow Number',
  flow_type STRING COMMENT 'Flow Type',
  g_l_account STRING COMMENT 'G L Account',
  gaap_difference_just STRING COMMENT 'Gaap difference just',
  gen_bus_trans_cat STRING COMMENT 'Gen  Bus Trans  Cat ',
  gen_business_transa STRING COMMENT 'Gen  Business Transa',
  gen_quant_change_ca STRING COMMENT 'Gen  Quant Change Ca',
  group_of_risk_solv STRING COMMENT 'Group of risk   Solv',
  house_bank STRING COMMENT 'House Bank',
  house_bank_account STRING COMMENT 'House Bank Account',
  idx_infl_lk_bond_pur STRING COMMENT 'Idx infl Lk Bond Pur',
  ifrs_investments_cla STRING COMMENT 'IFRS Investments Cla',
  ledger STRING COMMENT 'Ledger',
  legder_posting_sts STRING COMMENT 'Legder Posting Sts',
  long_short STRING COMMENT 'Long Short',
  look_through_flag STRING COMMENT 'Look-Through Flag',
  lot STRING COMMENT 'Lot',
  mag_accnt_from_pos_a STRING COMMENT 'Mag Accnt from Pos A',
  magnitude_package STRING COMMENT 'Magnitude Package',
  movement_type STRING COMMENT 'Movement Type',
  o_pos_acqu_date_lot TIMESTAMP COMMENT 'O Pos Acqu Date Lot',
  partner_company STRING COMMENT 'Partner Company',
  payment_date TIMESTAMP COMMENT 'Payment Date',
  position_account STRING COMMENT 'Position Account',
  position_change_cat STRING COMMENT 'Position Change Cat ',
  position_indicator_1 STRING COMMENT 'Position Indicator 1',
  position_indicator_2 STRING COMMENT 'Position Indicator 2',
  position_value_date TIMESTAMP COMMENT 'Position Value Date',
  posting_status STRING COMMENT 'Posting Status',
  price_source STRING COMMENT 'Price Source',
  product STRING COMMENT 'Product',
  product_category STRING COMMENT 'Product Category',
  product_company_code STRING COMMENT 'Product Company Code',
  product_type STRING COMMENT 'Product Type',
  profit_center STRING COMMENT 'Profit Center',
  quantity_change_cat STRING COMMENT 'Quantity Change Cat ',
  risk_partner STRING COMMENT 'Risk Partner',
  segmen STRING COMMENT 'Segmen',
  solv_ii_cluster_acc STRING COMMENT 'Solv  II Cluster Acc',
  source STRING COMMENT 'Source',
  source_system STRING COMMENT 'Source System',
  subscription_rights STRING COMMENT 'Subscription Rights',
  valuation_area STRING COMMENT 'Valuation Area',
  valuation_class STRING COMMENT 'Valuation Class',
  calendar_day TIMESTAMP COMMENT 'Calendar day',
  fiscal_year STRING COMMENT 'Fiscal year',
  fiscal_year_variant STRING COMMENT 'Fiscal Year Variant',
  fiscal_year_period STRING COMMENT 'Fiscal year period',
  posting_period STRING COMMENT 'Posting period',
  position_currency STRING COMMENT 'Position Currency',
  valuation_currency STRING COMMENT 'Valuation Currency',
  amount_in_pos_curr DECIMAL(17,2) COMMENT 'Amount in Pos Curr ',
  amount_in_val_crcy DECIMAL(17,2) COMMENT 'Amount in Val Crcy',
  d_cl_pd_def_taxc_pc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC PC',
  d_cl_pd_def_taxc_vc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC VC',
  d_impairment_poscrcy DECIMAL(17,2) COMMENT 'D Impairment PosCrcy',
  d_impairment_valcrcy DECIMAL(17,2) COMMENT 'D Impairment ValCrcy',
  d_val_fx_aav_in_vc DECIMAL(17,2) COMMENT 'D Val FX AAV in VC',
  d_swap_mar_a_d_pc DECIMAL(17,2) COMMENT 'D  Swap Mar  A D PC',
  d_vaco_fc_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(FC) NonPL VC',
  d_vaco_sec_nonpl_pc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL PC',
  d_vaco_sec_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL VC',
  del_fc_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del  FC Val NonPL VC',
  del_amort_acq_val_pc DECIMAL(17,2) COMMENT 'Del Amort Acq Val PC',
  del_amort_acq_val_vc DECIMAL(17,2) COMMENT 'Del Amort Acq Val VC',
  del_bval_ex_costs_pc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs PC',
  del_bval_ex_costs_vc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs VC',
  del_sec_val_nonpl_pc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL PC',
  del_sec_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL VC',
  del_spot_val_purc_vc DECIMAL(17,2) COMMENT 'Del Spot Val PurC VC',
  del_spot_val_salc_vc DECIMAL(17,2) COMMENT 'Del Spot Val SalC VC',
  del_val_fc_costs_vc DECIMAL(17,2) COMMENT 'Del Val  FC Costs VC',
  del_val_se_costs_pc DECIMAL(17,2) COMMENT 'Del Val  SE Costs PC',
  del_val_se_costs_vc DECIMAL(17,2) COMMENT 'Del Val  SE Costs VC',
  delta_acc_int_pc DECIMAL(17,2) COMMENT 'Delta Acc  Int  PC',
  delta_acc_int_vc DECIMAL(17,2) COMMENT 'Delta Acc  Int  VC',
  delta_accum_repay_pc DECIMAL(17,2) COMMENT 'Delta Accum Repay PC',
  delta_accum_repay_vc DECIMAL(17,2) COMMENT 'Delta Accum Repay VC',
  delta_acq_val_pc DECIMAL(17,2) COMMENT 'Delta Acq Val  PC',
  delta_acq_val_vc DECIMAL(17,2) COMMENT 'Delta Acq Val  VC',
  delta_amort_neg_pc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  PC',
  delta_amort_neg_vc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  VC',
  delta_amortizat_pc DECIMAL(17,2) COMMENT 'Delta Amortizat  PC',
  delta_amortizat_vc DECIMAL(17,2) COMMENT 'Delta Amortizat  VC',
  delta_book_val_pc DECIMAL(17,2) COMMENT 'Delta Book Val  PC',
  delta_book_val_vc DECIMAL(17,2) COMMENT 'Delta Book Val  VC',
  delta_costs_pc DECIMAL(17,2) COMMENT 'Delta Costs PC',
  delta_costs_vc DECIMAL(17,2) COMMENT 'Delta Costs VC',
  delta_fc_val_vc DECIMAL(17,2) COMMENT 'Delta FC Val  VC',
  delta_fx_impairmt_vc DECIMAL(17,2) COMMENT 'Delta FX Impairmt VC',
  delta_no_of_units DECIMAL(17,3) COMMENT 'Delta No  of Units',
  delta_nom_amnt_pc DECIMAL(17,2) COMMENT 'Delta Nom  Amnt PC',
  delta_orig_nomamt_pc DECIMAL(17,2) COMMENT 'Delta Orig NomAmt PC',
  delta_purch_amnt_pc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt PC',
  delta_purch_amnt_vc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt VC',
  delta_sec_val_pc DECIMAL(17,2) COMMENT 'Delta Sec Val  PC',
  delta_sec_val_vc DECIMAL(17,2) COMMENT 'Delta Sec Val  VC',
  delta_swap_val_vc DECIMAL(17,2) COMMENT 'Delta Swap Val  VC',
  delta_swapmar_a_d_vc DECIMAL(17,2) COMMENT 'Delta SwapMar A D VC',
  delta_var_margin_pc DECIMAL(17,2) COMMENT 'Delta Var Margin PC',
  delta_var_margin_vc DECIMAL(17,2) COMMENT 'Delta Var Margin VC',
  index_clean_amount_p DECIMAL(17,2) COMMENT 'Index Clean Amount P',
  qty_interest_dividen DECIMAL(17,3) COMMENT 'Qty interest dividen',
  securities_account STRING COMMENT 'Securities Account',
  premium_date TIMESTAMP COMMENT 'Premium Date')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_flows_be';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_flows_w1 (
  a_l_indicator STRING COMMENT 'A L Indicator',
  account_symbol_d_c STRING COMMENT 'Account Symbol D C',
  acquisition_date TIMESTAMP COMMENT 'Acquisition Date',
  actassmtref STRING COMMENT 'ActAssmtRef',
  alternative_account STRING COMMENT 'Alternative Account',
  asset_altern_acc STRING COMMENT 'Asset Altern  Acc',
  asset_manager_code STRING COMMENT 'Asset Manager Code',
  atras_id STRING COMMENT 'ATRAS ID',
  balance_sheet_acct STRING COMMENT 'Balance Sheet Acct',
  business_area STRING COMMENT 'Business area',
  business_trans_cat STRING COMMENT 'Business Trans  Cat ',
  business_transaction STRING COMMENT 'Business Transaction',
  chart_of_accounts STRING COMMENT 'Chart of accounts',
  comp_code_look_thro STRING COMMENT 'Comp  Code Look-Thro',
  company_code STRING COMMENT 'Company code',
  contract_type STRING COMMENT 'Contract Type',
  controlling_area STRING COMMENT 'Controlling Area',
  copernic_magnitude_c STRING COMMENT 'Copernic Magnitude C',
  debit_credit STRING COMMENT 'Debit Credit',
  due_date TIMESTAMP COMMENT 'Due Date',
  fair_value_hierarchy STRING COMMENT 'Fair value hierarchy',
  financial_trans STRING COMMENT 'Financial Trans ',
  flag_carry_forward STRING COMMENT 'Flag Carry Forward',
  flow_number STRING COMMENT 'Flow Number',
  flow_type STRING COMMENT 'Flow Type',
  g_l_account STRING COMMENT 'G L Account',
  gaap_difference_just STRING COMMENT 'Gaap difference just',
  gen_bus_trans_cat STRING COMMENT 'Gen  Bus Trans  Cat ',
  gen_business_transa STRING COMMENT 'Gen  Business Transa',
  gen_quant_change_ca STRING COMMENT 'Gen  Quant Change Ca',
  group_of_risk_solv STRING COMMENT 'Group of risk   Solv',
  house_bank STRING COMMENT 'House Bank',
  house_bank_account STRING COMMENT 'House Bank Account',
  idx_infl_lk_bond_pur STRING COMMENT 'Idx infl Lk Bond Pur',
  ifrs_investments_cla STRING COMMENT 'IFRS Investments Cla',
  ledger STRING COMMENT 'Ledger',
  legder_posting_sts STRING COMMENT 'Legder Posting Sts',
  long_short STRING COMMENT 'Long Short',
  look_through_flag STRING COMMENT 'Look-Through Flag',
  lot STRING COMMENT 'Lot',
  mag_accnt_from_pos_a STRING COMMENT 'Mag Accnt from Pos A',
  magnitude_package STRING COMMENT 'Magnitude Package',
  movement_type STRING COMMENT 'Movement Type',
  o_pos_acqu_date_lot TIMESTAMP COMMENT 'O Pos Acqu Date Lot',
  partner_company STRING COMMENT 'Partner Company',
  payment_date TIMESTAMP COMMENT 'Payment Date',
  position_account STRING COMMENT 'Position Account',
  position_change_cat STRING COMMENT 'Position Change Cat ',
  position_indicator_1 STRING COMMENT 'Position Indicator 1',
  position_indicator_2 STRING COMMENT 'Position Indicator 2',
  position_value_date TIMESTAMP COMMENT 'Position Value Date',
  posting_status STRING COMMENT 'Posting Status',
  price_source STRING COMMENT 'Price Source',
  product STRING COMMENT 'Product',
  product_category STRING COMMENT 'Product Category',
  product_company_code STRING COMMENT 'Product Company Code',
  product_type STRING COMMENT 'Product Type',
  profit_center STRING COMMENT 'Profit Center',
  quantity_change_cat STRING COMMENT 'Quantity Change Cat ',
  risk_partner STRING COMMENT 'Risk Partner',
  segmen STRING COMMENT 'Segmen',
  solv_ii_cluster_acc STRING COMMENT 'Solv  II Cluster Acc',
  source STRING COMMENT 'Source',
  source_system STRING COMMENT 'Source System',
  subscription_rights STRING COMMENT 'Subscription Rights',
  valuation_area STRING COMMENT 'Valuation Area',
  valuation_class STRING COMMENT 'Valuation Class',
  calendar_day TIMESTAMP COMMENT 'Calendar day',
  fiscal_year STRING COMMENT 'Fiscal year',
  fiscal_year_variant STRING COMMENT 'Fiscal Year Variant',
  fiscal_year_period STRING COMMENT 'Fiscal year period',
  posting_period STRING COMMENT 'Posting period',
  position_currency STRING COMMENT 'Position Currency',
  valuation_currency STRING COMMENT 'Valuation Currency',
  amount_in_pos_curr DECIMAL(17,2) COMMENT 'Amount in Pos Curr ',
  amount_in_val_crcy DECIMAL(17,2) COMMENT 'Amount in Val Crcy',
  d_cl_pd_def_taxc_pc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC PC',
  d_cl_pd_def_taxc_vc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC VC',
  d_impairment_poscrcy DECIMAL(17,2) COMMENT 'D Impairment PosCrcy',
  d_impairment_valcrcy DECIMAL(17,2) COMMENT 'D Impairment ValCrcy',
  d_val_fx_aav_in_vc DECIMAL(17,2) COMMENT 'D Val FX AAV in VC',
  d_swap_mar_a_d_pc DECIMAL(17,2) COMMENT 'D  Swap Mar  A D PC',
  d_vaco_fc_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(FC) NonPL VC',
  d_vaco_sec_nonpl_pc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL PC',
  d_vaco_sec_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL VC',
  del_fc_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del  FC Val NonPL VC',
  del_amort_acq_val_pc DECIMAL(17,2) COMMENT 'Del Amort Acq Val PC',
  del_amort_acq_val_vc DECIMAL(17,2) COMMENT 'Del Amort Acq Val VC',
  del_bval_ex_costs_pc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs PC',
  del_bval_ex_costs_vc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs VC',
  del_sec_val_nonpl_pc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL PC',
  del_sec_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL VC',
  del_spot_val_purc_vc DECIMAL(17,2) COMMENT 'Del Spot Val PurC VC',
  del_spot_val_salc_vc DECIMAL(17,2) COMMENT 'Del Spot Val SalC VC',
  del_val_fc_costs_vc DECIMAL(17,2) COMMENT 'Del Val  FC Costs VC',
  del_val_se_costs_pc DECIMAL(17,2) COMMENT 'Del Val  SE Costs PC',
  del_val_se_costs_vc DECIMAL(17,2) COMMENT 'Del Val  SE Costs VC',
  delta_acc_int_pc DECIMAL(17,2) COMMENT 'Delta Acc  Int  PC',
  delta_acc_int_vc DECIMAL(17,2) COMMENT 'Delta Acc  Int  VC',
  delta_accum_repay_pc DECIMAL(17,2) COMMENT 'Delta Accum Repay PC',
  delta_accum_repay_vc DECIMAL(17,2) COMMENT 'Delta Accum Repay VC',
  delta_acq_val_pc DECIMAL(17,2) COMMENT 'Delta Acq Val  PC',
  delta_acq_val_vc DECIMAL(17,2) COMMENT 'Delta Acq Val  VC',
  delta_amort_neg_pc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  PC',
  delta_amort_neg_vc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  VC',
  delta_amortizat_pc DECIMAL(17,2) COMMENT 'Delta Amortizat  PC',
  delta_amortizat_vc DECIMAL(17,2) COMMENT 'Delta Amortizat  VC',
  delta_book_val_pc DECIMAL(17,2) COMMENT 'Delta Book Val  PC',
  delta_book_val_vc DECIMAL(17,2) COMMENT 'Delta Book Val  VC',
  delta_costs_pc DECIMAL(17,2) COMMENT 'Delta Costs PC',
  delta_costs_vc DECIMAL(17,2) COMMENT 'Delta Costs VC',
  delta_fc_val_vc DECIMAL(17,2) COMMENT 'Delta FC Val  VC',
  delta_fx_impairmt_vc DECIMAL(17,2) COMMENT 'Delta FX Impairmt VC',
  delta_no_of_units DECIMAL(17,3) COMMENT 'Delta No  of Units',
  delta_nom_amnt_pc DECIMAL(17,2) COMMENT 'Delta Nom  Amnt PC',
  delta_orig_nomamt_pc DECIMAL(17,2) COMMENT 'Delta Orig NomAmt PC',
  delta_purch_amnt_pc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt PC',
  delta_purch_amnt_vc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt VC',
  delta_sec_val_pc DECIMAL(17,2) COMMENT 'Delta Sec Val  PC',
  delta_sec_val_vc DECIMAL(17,2) COMMENT 'Delta Sec Val  VC',
  delta_swap_val_vc DECIMAL(17,2) COMMENT 'Delta Swap Val  VC',
  delta_swapmar_a_d_vc DECIMAL(17,2) COMMENT 'Delta SwapMar A D VC',
  delta_var_margin_pc DECIMAL(17,2) COMMENT 'Delta Var Margin PC',
  delta_var_margin_vc DECIMAL(17,2) COMMENT 'Delta Var Margin VC',
  index_clean_amount_p DECIMAL(17,2) COMMENT 'Index Clean Amount P',
  qty_interest_dividen DECIMAL(17,3) COMMENT 'Qty interest dividen',
  sezione STRING COMMENT 'Sezione')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_flows_w1';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_flows_rw (
  a_l_indicator STRING COMMENT 'A L Indicator',
  account_symbol_d_c STRING COMMENT 'Account Symbol D C',
  acquisition_date TIMESTAMP COMMENT 'Acquisition Date',
  actassmtref STRING COMMENT 'ActAssmtRef',
  alternative_account STRING COMMENT 'Alternative Account',
  asset_altern_acc STRING COMMENT 'Asset Altern  Acc',
  asset_manager_code STRING COMMENT 'Asset Manager Code',
  atras_id STRING COMMENT 'ATRAS ID',
  balance_sheet_acct STRING COMMENT 'Balance Sheet Acct',
  business_area STRING COMMENT 'Business area',
  business_trans_cat STRING COMMENT 'Business Trans  Cat ',
  business_transaction STRING COMMENT 'Business Transaction',
  chart_of_accounts STRING COMMENT 'Chart of accounts',
  comp_code_look_thro STRING COMMENT 'Comp  Code Look-Thro',
  company_code STRING COMMENT 'Company code',
  contract_type STRING COMMENT 'Contract Type',
  controlling_area STRING COMMENT 'Controlling Area',
  copernic_magnitude_c STRING COMMENT 'Copernic Magnitude C',
  debit_credit STRING COMMENT 'Debit Credit',
  due_date TIMESTAMP COMMENT 'Due Date',
  fair_value_hierarchy STRING COMMENT 'Fair value hierarchy',
  financial_trans STRING COMMENT 'Financial Trans ',
  flag_carry_forward STRING COMMENT 'Flag Carry Forward',
  flow_number STRING COMMENT 'Flow Number',
  flow_type STRING COMMENT 'Flow Type',
  g_l_account STRING COMMENT 'G L Account',
  gaap_difference_just STRING COMMENT 'Gaap difference just',
  gen_bus_trans_cat STRING COMMENT 'Gen  Bus Trans  Cat ',
  gen_business_transa STRING COMMENT 'Gen  Business Transa',
  gen_quant_change_ca STRING COMMENT 'Gen  Quant Change Ca',
  group_of_risk_solv STRING COMMENT 'Group of risk   Solv',
  house_bank STRING COMMENT 'House Bank',
  house_bank_account STRING COMMENT 'House Bank Account',
  idx_infl_lk_bond_pur STRING COMMENT 'Idx infl Lk Bond Pur',
  ifrs_investments_cla STRING COMMENT 'IFRS Investments Cla',
  ledger STRING COMMENT 'Ledger',
  legder_posting_sts STRING COMMENT 'Legder Posting Sts',
  long_short STRING COMMENT 'Long Short',
  look_through_flag STRING COMMENT 'Look-Through Flag',
  lot STRING COMMENT 'Lot',
  mag_accnt_from_pos_a STRING COMMENT 'Mag Accnt from Pos A',
  magnitude_package STRING COMMENT 'Magnitude Package',
  movement_type STRING COMMENT 'Movement Type',
  o_pos_acqu_date_lot TIMESTAMP COMMENT 'O Pos Acqu Date Lot',
  partner_company STRING COMMENT 'Partner Company',
  payment_date TIMESTAMP COMMENT 'Payment Date',
  position_account STRING COMMENT 'Position Account',
  position_change_cat STRING COMMENT 'Position Change Cat ',
  position_indicator_1 STRING COMMENT 'Position Indicator 1',
  position_indicator_2 STRING COMMENT 'Position Indicator 2',
  position_value_date TIMESTAMP COMMENT 'Position Value Date',
  posting_status STRING COMMENT 'Posting Status',
  price_source STRING COMMENT 'Price Source',
  product STRING COMMENT 'Product',
  product_category STRING COMMENT 'Product Category',
  product_company_code STRING COMMENT 'Product Company Code',
  product_type STRING COMMENT 'Product Type',
  profit_center STRING COMMENT 'Profit Center',
  quantity_change_cat STRING COMMENT 'Quantity Change Cat ',
  risk_partner STRING COMMENT 'Risk Partner',
  segmen STRING COMMENT 'Segmen',
  solv_ii_cluster_acc STRING COMMENT 'Solv  II Cluster Acc',
  source STRING COMMENT 'Source',
  source_system STRING COMMENT 'Source System',
  subscription_rights STRING COMMENT 'Subscription Rights',
  valuation_area STRING COMMENT 'Valuation Area',
  valuation_class STRING COMMENT 'Valuation Class',
  calendar_day TIMESTAMP COMMENT 'Calendar day',
  fiscal_year STRING COMMENT 'Fiscal year',
  fiscal_year_variant STRING COMMENT 'Fiscal Year Variant',
  fiscal_year_period STRING COMMENT 'Fiscal year period',
  posting_period STRING COMMENT 'Posting period',
  position_currency STRING COMMENT 'Position Currency',
  valuation_currency STRING COMMENT 'Valuation Currency',
  amount_in_pos_curr DECIMAL(17,2) COMMENT 'Amount in Pos Curr ',
  amount_in_val_crcy DECIMAL(17,2) COMMENT 'Amount in Val Crcy',
  d_cl_pd_def_taxc_pc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC PC',
  d_cl_pd_def_taxc_vc DECIMAL(17,2) COMMENT 'D Cl PD Def  TaxC VC',
  d_impairment_poscrcy DECIMAL(17,2) COMMENT 'D Impairment PosCrcy',
  d_impairment_valcrcy DECIMAL(17,2) COMMENT 'D Impairment ValCrcy',
  d_val_fx_aav_in_vc DECIMAL(17,2) COMMENT 'D Val FX AAV in VC',
  d_swap_mar_a_d_pc DECIMAL(17,2) COMMENT 'D  Swap Mar  A D PC',
  d_vaco_fc_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(FC) NonPL VC',
  d_vaco_sec_nonpl_pc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL PC',
  d_vaco_sec_nonpl_vc DECIMAL(17,2) COMMENT 'D VaCo(Sec) NonPL VC',
  del_fc_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del  FC Val NonPL VC',
  del_amort_acq_val_pc DECIMAL(17,2) COMMENT 'Del Amort Acq Val PC',
  del_amort_acq_val_vc DECIMAL(17,2) COMMENT 'Del Amort Acq Val VC',
  del_bval_ex_costs_pc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs PC',
  del_bval_ex_costs_vc DECIMAL(17,2) COMMENT 'Del BVal Ex Costs VC',
  del_sec_val_nonpl_pc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL PC',
  del_sec_val_nonpl_vc DECIMAL(17,2) COMMENT 'Del Sec Val NonPL VC',
  del_spot_val_purc_vc DECIMAL(17,2) COMMENT 'Del Spot Val PurC VC',
  del_spot_val_salc_vc DECIMAL(17,2) COMMENT 'Del Spot Val SalC VC',
  del_val_fc_costs_vc DECIMAL(17,2) COMMENT 'Del Val  FC Costs VC',
  del_val_se_costs_pc DECIMAL(17,2) COMMENT 'Del Val  SE Costs PC',
  del_val_se_costs_vc DECIMAL(17,2) COMMENT 'Del Val  SE Costs VC',
  delta_acc_int_pc DECIMAL(17,2) COMMENT 'Delta Acc  Int  PC',
  delta_acc_int_vc DECIMAL(17,2) COMMENT 'Delta Acc  Int  VC',
  delta_accum_repay_pc DECIMAL(17,2) COMMENT 'Delta Accum Repay PC',
  delta_accum_repay_vc DECIMAL(17,2) COMMENT 'Delta Accum Repay VC',
  delta_acq_val_pc DECIMAL(17,2) COMMENT 'Delta Acq Val  PC',
  delta_acq_val_vc DECIMAL(17,2) COMMENT 'Delta Acq Val  VC',
  delta_amort_neg_pc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  PC',
  delta_amort_neg_vc DECIMAL(17,2) COMMENT 'Delta Amort  Neg  VC',
  delta_amortizat_pc DECIMAL(17,2) COMMENT 'Delta Amortizat  PC',
  delta_amortizat_vc DECIMAL(17,2) COMMENT 'Delta Amortizat  VC',
  delta_book_val_pc DECIMAL(17,2) COMMENT 'Delta Book Val  PC',
  delta_book_val_vc DECIMAL(17,2) COMMENT 'Delta Book Val  VC',
  delta_costs_pc DECIMAL(17,2) COMMENT 'Delta Costs PC',
  delta_costs_vc DECIMAL(17,2) COMMENT 'Delta Costs VC',
  delta_fc_val_vc DECIMAL(17,2) COMMENT 'Delta FC Val  VC',
  delta_fx_impairmt_vc DECIMAL(17,2) COMMENT 'Delta FX Impairmt VC',
  delta_no_of_units DECIMAL(17,3) COMMENT 'Delta No  of Units',
  delta_nom_amnt_pc DECIMAL(17,2) COMMENT 'Delta Nom  Amnt PC',
  delta_orig_nomamt_pc DECIMAL(17,2) COMMENT 'Delta Orig NomAmt PC',
  delta_purch_amnt_pc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt PC',
  delta_purch_amnt_vc DECIMAL(17,2) COMMENT 'Delta Purch  Amnt VC',
  delta_sec_val_pc DECIMAL(17,2) COMMENT 'Delta Sec Val  PC',
  delta_sec_val_vc DECIMAL(17,2) COMMENT 'Delta Sec Val  VC',
  delta_swap_val_vc DECIMAL(17,2) COMMENT 'Delta Swap Val  VC',
  delta_swapmar_a_d_vc DECIMAL(17,2) COMMENT 'Delta SwapMar A D VC',
  delta_var_margin_pc DECIMAL(17,2) COMMENT 'Delta Var Margin PC',
  delta_var_margin_vc DECIMAL(17,2) COMMENT 'Delta Var Margin VC',
  index_clean_amount_p DECIMAL(17,2) COMMENT 'Index Clean Amount P',
  qty_interest_dividen DECIMAL(17,3) COMMENT 'Qty interest dividen',
  sezione STRING COMMENT 'Sezione')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_flows_rw';

