cubeA = LOAD '$phase1_repertoir' USING PigStorage('|') AS 
(T0_cubea_a_l_indicator:chararray,
T0_cubea_account_symbol_d_c:chararray,
T0_cubea_acquisition_date:chararray,
T0_cubea_actassmtref:chararray,
T0_cubea_alternative_account:chararray,
T0_cubea_asset_altern_acc:chararray,
T0_cubea_asset_manager_code:chararray,
T0_cubea_atras_id:chararray,
T0_cubea_balance_sheet_acct:chararray,
T0_cubea_business_area:chararray,
T0_cubea_business_trans_cat:chararray,
T0_cubea_business_transaction:chararray,
T0_cubea_chart_of_accounts:chararray,
T0_cubea_comp_code_look_thro:chararray,
T0_cubea_company_code:chararray,
T0_cubea_contract_type:chararray,
T0_cubea_controlling_area:chararray,
T0_cubea_copernic_magnitude_c:chararray,
T0_cubea_debit_credit:chararray,
T0_cubea_due_date:chararray,
T0_cubea_fair_value_hierarchy:chararray,
T0_cubea_financial_trans_:chararray,
T0_cubea_flag_carry_forward:chararray,
T0_cubea_flow_number:chararray,
T0_cubea_flow_type:chararray,
T0_cubea_g_l_account:chararray,
T0_cubea_gaap_difference_just:chararray,
T0_cubea_gen_bus_trans_cat:chararray,
T0_cubea_gen_business_transa:chararray,
T0_cubea_gen_quant_change_ca:chararray,
T0_cubea_group_of_risk_solv:chararray,
T0_cubea_house_bank:chararray,
T0_cubea_house_bank_account:chararray,
T0_cubea_idx_infl_lk_bond_pur:chararray,
T0_cubea_ifrs_investments_cla:chararray,
T0_cubea_ledger:chararray,
T0_cubea_legder_posting_sts:chararray,
T0_cubea_long_short:chararray,
T0_cubea_look_through_flag:chararray,
T0_cubea_lot:chararray,
T0_cubea_mag_accnt_from_pos_a:chararray,
T0_cubea_magnitude_package:chararray,
T0_cubea_movement_type:chararray,
T0_cubea_o_pos_acqu_date_lot:chararray,
T0_cubea_partner_company:chararray,
T0_cubea_payment_date:chararray,
T0_cubea_position_account:chararray,
T0_cubea_position_change_cat:chararray,
T0_cubea_position_indicator_1:chararray,
T0_cubea_position_indicator_2:chararray,
T0_cubea_position_value_date:chararray,
T0_cubea_posting_status:chararray,
T0_cubea_price_source:chararray,
T0_cubea_product:chararray,
T0_cubea_product_category:chararray,
T0_cubea_product_company_code:chararray,
T0_cubea_product_type:chararray,
T0_cubea_profit_center:chararray,
T0_cubea_quantity_change_cat:chararray,
T0_cubea_risk_partner:chararray,
T0_cubea_segmen:chararray,
T0_cubea_solv_ii_cluster_acc:chararray,
T0_cubea_source:chararray,
T0_cubea_source_system:chararray,
T0_cubea_subscription_rights:chararray,
T0_cubea_valuation_area:chararray,
T0_cubea_valuation_class:chararray,
T0_cubea_calendar_day:chararray,
T0_cubea_fiscal_year:chararray,
T0_cubea_fiscal_year_variant:chararray,
T0_cubea_fiscal_year_period:chararray,
T0_cubea_posting_period:chararray,
T0_cubea_position_currency:chararray,
T0_cubea_valuation_currency:chararray,
T0_cubea_amount_in_pos_curr:chararray,
T0_cubea_amount_in_val_crcy:float,
T0_cubea_d_cl_pd_def_taxc_pc:chararray,
T0_cubea_d_cl_pd_def_taxc_vc:chararray,
T0_cubea_d_impairment_poscrcy:chararray,
T0_cubea_d_impairment_valcrcy:chararray,
T0_cubea_d_val_fx_aav_in_vc:chararray,
T0_cubea_d_swap_mar_a_d_pc:chararray,
T0_cubea_d_vaco_fc_nonpl_vc:chararray,
T0_cubea_d_vaco_sec_nonpl_pc:chararray,
T0_cubea_d_vaco_sec_nonpl_vc:chararray,
T0_cubea_del_fc_val_nonpl_vc:chararray,
T0_cubea_del_amort_acq_val_pc:chararray,
T0_cubea_del_amort_acq_val_vc:chararray,
T0_cubea_del_bval_ex_costs_pc:chararray,
T0_cubea_del_bval_ex_costs_vc:chararray,
T0_cubea_del_sec_val_nonpl_pc:chararray,
T0_cubea_del_sec_val_nonpl_vc:chararray,
T0_cubea_del_spot_val_purc_vc:chararray,
T0_cubea_del_spot_val_salc_vc:chararray,
T0_cubea_del_val_fc_costs_vc:chararray,
T0_cubea_del_val_se_costs_pc:chararray,
T0_cubea_del_val_se_costs_vc:chararray,
T0_cubea_delta_acc_int_pc:chararray,
T0_cubea_delta_acc_int_vc:chararray,
T0_cubea_delta_accum_repay_pc:chararray,
T0_cubea_delta_accum_repay_vc:chararray,
T0_cubea_delta_acq_val_pc:chararray,
T0_cubea_delta_acq_val_vc:chararray,
T0_cubea_delta_amort_neg_pc:chararray,
T0_cubea_delta_amort_neg_vc:chararray,
T0_cubea_delta_amortizat_pc:chararray,
T0_cubea_delta_amortizat_vc:chararray,
T0_cubea_delta_book_val_pc:chararray,
T0_cubea_delta_book_val_vc:chararray,
T0_cubea_delta_costs_pc:chararray,
T0_cubea_delta_costs_vc:chararray,
T0_cubea_delta_fc_val_vc:chararray,
T0_cubea_delta_fx_impairmt_vc:chararray,
T0_cubea_delta_no_of_units:chararray,
T0_cubea_delta_nom_amnt_pc:chararray,
T0_cubea_delta_orig_nomamt_pc:chararray,
T0_cubea_delta_purch_amnt_pc:chararray,
T0_cubea_delta_purch_amnt_vc:chararray,
T0_cubea_delta_sec_val_pc:chararray,
T0_cubea_delta_sec_val_vc:chararray,
T0_cubea_delta_swap_val_vc:chararray,
T0_cubea_delta_swapmar_a_d_vc:chararray,
T0_cubea_delta_var_margin_pc:chararray,
T0_cubea_delta_var_margin_vc:chararray,
T0_cubea_index_clean_amount_p:chararray,
T0_cubea_qty_interest_dividen:chararray,
T12_zitsde048_medium_description:chararray,
T10_ziasde002_securities_account:chararray,
T5_zitsde006_long_description:chararray,
T2_zitsde035_medium_description:chararray,
T3_zitsde001_description:chararray,
T7_ziasde001_crdb_issuer_sector:chararray,
T7_ziasde001_fiscal_country_with_isv:chararray,
T8_ziasde006_general_security_classification:chararray,
T8_ziasde006_borrower_s_note_loan_security_type:chararray,
T8_ziasde006_issuer_type:chararray,
T8_ziasde006_asset_pool_classification:chararray,
T8_ziasde006_crdb_seniority:chararray,
T8_ziasde006_dali_unique_identifier:chararray,
T8_ziasde006_maturity_date:chararray,
T8_ziasde006_bond_classification:chararray,
T8_ziasde006_additive_margin:chararray,
T1_zitsde032_long_description:chararray,
T6_zitsde007_long_description:chararray,
T9_ziasde007_axa_rating:chararray,
T9_ziasde007_fitch_rating:chararray,
T9_ziasde007_s_p_rating:chararray,
T9_ziasde007_axa_internal_rating:chararray,
T9_ziasde007_local_zkb_rating_:chararray,
T9_ziasde007_local_risk_mgmt_rating:chararray,
T9_ziasde007_local_ubs_rating:chararray,
T9_ziasde007_local_credit_suisse_rating:chararray,
T4_zitsde004_medium_description:chararray,
T11_ziasde004_type_of_portfolio:chararray,
T12_zitsde048_language_key:chararray,
T2_zitsde035_language_key:chararray);

area_region_entity = LOAD '$area_region_entity' USING PigStorage(';') AS 
(are_company_code:chararray, 
are_company_code_name:chararray, 
are_area:chararray,
are_region:chararray, 
are_entity:chararray, 
are_a_verifier:chararray);

activity_profit_center = LOAD '$activity_profit_center' USING PigStorage(';') AS 
(apc_profit_center:chararray, 
apc_profit_center_name:chararray, 
apc_activity_profit_center:chararray);

activity_ccode = LOAD '$activity_ccode' USING PigStorage(';') AS 
(acc_company_code:chararray, 
acc_company_code_name:chararray, 
acc_activity_ccode:chararray, 
acc_isin:chararray);

activity_ptf_type = LOAD '$activity_ptf_type' USING PigStorage(';') AS 
(apt_portfolio_type_of_portfolio_key:chararray, 
apt_portfolio_type_of_portfolio_long_name:chararray, 
apt_activity_ptf_type:chararray);

activity_split = LOAD '$activity_split' USING PigStorage(';') AS 
(as_company_code:chararray, 
as_company_code_name:chararray, 
as_activity_split:chararray,
as_split_ratio:chararray);

ip_first_asset_class = LOAD '$ip_first_asset_class' USING PigStorage(';') AS 
(ifac_product_category:chararray, 
ifac_product_category_name:chararray, 
ifac_product_type:chararray,
ifac_product_type_name:chararray, 
ifac_security_classification:chararray, 
ifac_security_classification_name:chararray, 
ifac_first_asset_class:chararray);

ip_first_asset_class_loan_type = LOAD '$ip_asset_class_loan_type' USING PigStorage(';') AS 
(ifaclt_first_asset_class:chararray, 
ifaclt_product_bnl_security_type_key:chararray, 
ifaclt_product_bnl_security_type_name:chararray, 
ifaclt_subordination_level:chararray, 
ifaclt_ip_asset_class_loantype:chararray);

ip_first_asset_class_issuertype = LOAD '$ip_asset_class_issuer_type' USING PigStorage(';') AS 
(ifaci_first_asset_class:chararray, 
ifaci_ip_asset_class_loantype:chararray, 
ifaci_issuer_type:chararray,
ifaci_issuer_type_name:chararray, 
ifaci_ip_asset_class_issuertype:chararray, 
ifaci_to_be_refined:chararray);

ip_first_asset_class_apc = LOAD '$ip_asset_class_apc' USING PigStorage(';') AS 
(ifaca_first_asset_class:chararray, 
ifaca_ip_asset_class_loantype:chararray, 
ifaca_asset_pool_classification:chararray, 
ifaca_asset_pool_classification_name:chararray, 
ifaca_ip_asset_class_apc:chararray);

ip_asset_class_seniority = LOAD '$ip_asset_class_seniority' USING PigStorage(';') AS 
(iacs_ip_asset_class_issuertype:chararray, 
iacs_ip_asset_class_apc:chararray,
iacs_seniority:chararray, 
iacs_seniority_name:chararray, 
iacs_ip_asset_class_seniority:chararray);

ip_asset_class_sector = LOAD '$ip_asset_class_sector' USING PigStorage(';') AS 
(iacsec_ip_asset_class_seniority:chararray, 
iacsec_crdb_industry_sector:chararray,
iacsec_industry_name:chararray, 
iacsec_ip_asset_class_sector:chararray);

ip_asset_class_aar = LOAD '$ip_asset_class_aar' USING PigStorage(';') AS 
(isca_aar:chararray, 
isca_aar_name:chararray, 
isca_ip_asset_class_aar:chararray);

temp1 = LOAD '$temp1' USING PigStorage(';') AS 
(t_first_asset_class:chararray, 
t_temp1:chararray);

ip_asset_class_issuer = LOAD '$ip_asset_class_issuer' USING PigStorage(';') AS 
(iaci_issuer:chararray, 
iaci_issuer_name:chararray, 
iaci_temp1:chararray, 
iaci_ip_asset_class_issuer:chararray, 
iaci_Comments:chararray);

J1 = JOIN cubeA BY T0_cubea_company_code LEFT, area_region_entity BY are_company_code USING 'replicated'; --Join for Area, Region, Etity

J2 = JOIN J1 BY T0_cubea_profit_center LEFT, activity_profit_center BY apc_profit_center USING 'replicated';

J3 = JOIN J2 BY T0_cubea_company_code LEFT, activity_ccode BY acc_company_code USING 'replicated';

J4 = JOIN J3 BY T11_ziasde004_type_of_portfolio LEFT, activity_ptf_type BY apt_portfolio_type_of_portfolio_key USING 'replicated';

J5 = JOIN J4 BY T0_cubea_company_code LEFT, activity_split BY as_company_code USING 'replicated';

T6 = FOREACH J5 GENERATE *, (
apt_activity_ptf_type == 'UL'?
'UL':(
as_activity_split IS NOT NULL ?
as_activity_split : (
    acc_activity_ccode IS NOT NULL ?
    acc_activity_ccode : (
        SUBSTRING(T0_cubea_company_code, 0, 2) == 'CH' AND  apc_activity_profit_center IS NOT NULL ?
        apc_activity_profit_center : apt_activity_ptf_type
        )
    )
)
) AS activity_pi2;

T6_complet = FOREACH T6 GENERATE*, (T8_ziasde006_general_security_classification IS NOT NULL?T8_ziasde006_general_security_classification:'#') AS T8_ziasde006_general_security_classification_complet;

J7 = JOIN T6_complet BY (T0_cubea_product_category, T0_cubea_product_type, T8_ziasde006_general_security_classification_complet) LEFT, ip_first_asset_class BY (ifac_product_category, ifac_product_type, ifac_security_classification) USING 'replicated';

-- in the origin mapping table, there "ifaclt_product_bnl_security_type_key" has three digitals, but "T8_ziasde006_borrower_s_note_loan_security_type" has only two digitals. temporarily I have transformed "ifaclt_product_bnl_security_type_key" to two digitals

J8 = JOIN J7 BY (T8_ziasde006_borrower_s_note_loan_security_type, ifac_first_asset_class) LEFT, ip_first_asset_class_loan_type BY (ifaclt_product_bnl_security_type_key, ifaclt_first_asset_class) USING 'replicated';

J8_Complet = FOREACH J8 GENERATE*, (ifaclt_ip_asset_class_loantype IS NOT NULL ? ifaclt_ip_asset_class_loantype:'-1') AS ifaclt_ip_asset_class_loantype_Complet;

ip_first_asset_class_issuertype_Complet = FOREACH ip_first_asset_class_issuertype GENERATE *, (ifaci_ip_asset_class_loantype IS NOT NULL? ifaci_ip_asset_class_loantype:'-1') AS ifaci_ip_asset_class_loantype_Complet;

J9 = JOIN J8_Complet BY (ifac_first_asset_class, ifaclt_ip_asset_class_loantype_Complet, T8_ziasde006_issuer_type) LEFT, ip_first_asset_class_issuertype_Complet BY (ifaci_first_asset_class, ifaci_ip_asset_class_loantype_Complet, ifaci_issuer_type) USING 'replicated';

ip_first_asset_class_apc_Complet = FOREACH ip_first_asset_class_apc GENERATE *, (ifaca_ip_asset_class_loantype IS NOT NULL ? ifaca_ip_asset_class_loantype:'-1') AS ifaca_ip_asset_class_loantype_Complet;

J9_complet = FOREACH J9 GENERATE *, (T8_ziasde006_asset_pool_classification IS NOT NULL ? T8_ziasde006_asset_pool_classification:'#') AS T8_ziasde006_asset_pool_classification_complet, (ifaclt_ip_asset_class_loantype_Complet IS NOT NULL ? ifaclt_ip_asset_class_loantype_Complet:'-1') AS ifaclt_ip_asset_class_loantype_Complet2;

J10 = JOIN J9_complet BY (ifac_first_asset_class, ifaclt_ip_asset_class_loantype_Complet2, T8_ziasde006_asset_pool_classification_complet) LEFT, ip_first_asset_class_apc_Complet BY (ifaca_first_asset_class, ifaca_ip_asset_class_loantype_Complet, ifaca_asset_pool_classification) USING 'replicated';

J10_Complet = FOREACH J10 GENERATE*, (ifaclt_ip_asset_class_loantype IS NOT NULL?ifaclt_ip_asset_class_loantype:'-1') AS ifaclt_ip_asset_class_loantype_Complet, (ifaca_ip_asset_class_apc IS NOT NULL?ifaca_ip_asset_class_apc:'-1') AS ifaca_ip_asset_class_apc_Complet;

ip_asset_class_seniority_Complet = FOREACH ip_asset_class_seniority GENERATE*, (iacs_ip_asset_class_apc IS NOT NULL?iacs_ip_asset_class_apc:'-1') AS iacs_ip_asset_class_apc_Complet;

J11 = JOIN J10_Complet BY (ifaci_ip_asset_class_issuertype, ifaca_ip_asset_class_apc_Complet, T8_ziasde006_crdb_seniority) LEFT, ip_asset_class_seniority_Complet BY (iacs_ip_asset_class_issuertype, iacs_ip_asset_class_apc_Complet, iacs_seniority) USING 'replicated';

-- In Mapping table, iacsec_crdb_industry_sector has only 2 digitals, but the format of T7_ziasde001_crdb_issuer_sector is 10 digitals. I have transformed it temporarily. this should be tested.

J12 = JOIN J11 BY (iacs_ip_asset_class_seniority, T7_ziasde001_crdb_issuer_sector) LEFT, ip_asset_class_sector BY (iacsec_ip_asset_class_seniority, iacsec_crdb_industry_sector) USING 'replicated';

--J21 = JOIN J12 BY (company_code, portfolio, security_id) LEFT, aar BY(aar_company_code, aar_portfolio, aar_security_id) USING 'replicated';

J22 = JOIN J12 BY T0_cubea_actassmtref LEFT, ip_asset_class_aar BY isca_aar USING 'replicated';

J23 = JOIN J22 BY ifac_first_asset_class LEFT, temp1 BY t_first_asset_class USING 'replicated';

J23_Complet = FOREACH J23 GENERATE*,(t_temp1 IS NOT NULL?t_temp1:'-1') AS t_temp1_Complet;

ip_asset_class_issuer_Complet = FOREACH ip_asset_class_issuer GENERATE *, (iaci_temp1 IS NOT NULL?iaci_temp1:'-1') AS iaci_temp1_Complet;

J24 = JOIN J23_Complet BY (T0_cubea_risk_partner, t_temp1_Complet) LEFT, ip_asset_class_issuer_Complet BY (iaci_issuer, iaci_temp1_Complet) USING 'replicated';

res = FOREACH J24 GENERATE
T0_cubea_a_l_indicator,
T0_cubea_account_symbol_d_c,
T0_cubea_acquisition_date,
T0_cubea_actassmtref,
T0_cubea_alternative_account,
T0_cubea_asset_altern_acc,
T0_cubea_asset_manager_code,
T0_cubea_atras_id,
T0_cubea_balance_sheet_acct,
T0_cubea_business_area,
T0_cubea_business_trans_cat,
T0_cubea_business_transaction,
T0_cubea_chart_of_accounts,
T0_cubea_comp_code_look_thro,
T0_cubea_company_code,
T0_cubea_contract_type,
T0_cubea_controlling_area,
T0_cubea_copernic_magnitude_c,
T0_cubea_debit_credit,
T0_cubea_due_date,
T0_cubea_fair_value_hierarchy,
T0_cubea_financial_trans_,
T0_cubea_flag_carry_forward,
T0_cubea_flow_number,
T0_cubea_flow_type,
T0_cubea_g_l_account,
T0_cubea_gaap_difference_just,
T0_cubea_gen_bus_trans_cat,
T0_cubea_gen_business_transa,
T0_cubea_gen_quant_change_ca,
T0_cubea_group_of_risk_solv,
T0_cubea_house_bank,
T0_cubea_house_bank_account,
T0_cubea_idx_infl_lk_bond_pur,
T0_cubea_ifrs_investments_cla,
T0_cubea_ledger,
T0_cubea_legder_posting_sts,
T0_cubea_long_short,
T0_cubea_look_through_flag,
T0_cubea_lot,
T0_cubea_mag_accnt_from_pos_a,
T0_cubea_magnitude_package,
T0_cubea_movement_type,
T0_cubea_o_pos_acqu_date_lot,
T0_cubea_partner_company,
T0_cubea_payment_date,
T0_cubea_position_account,
T0_cubea_position_change_cat,
T0_cubea_position_indicator_1,
T0_cubea_position_indicator_2,
T0_cubea_position_value_date,
T0_cubea_posting_status,
T0_cubea_price_source,
T0_cubea_product,
T0_cubea_product_category,
T0_cubea_product_company_code,
T0_cubea_product_type,
T0_cubea_profit_center,
T0_cubea_quantity_change_cat,
T0_cubea_risk_partner,
T0_cubea_segmen,
T0_cubea_solv_ii_cluster_acc,
T0_cubea_source,
T0_cubea_source_system,
T0_cubea_subscription_rights,
T0_cubea_valuation_area,
T0_cubea_valuation_class,
T0_cubea_calendar_day,
T0_cubea_fiscal_year,
T0_cubea_fiscal_year_variant,
T0_cubea_fiscal_year_period,
T0_cubea_posting_period,
T0_cubea_position_currency,
T0_cubea_valuation_currency,
T0_cubea_amount_in_pos_curr,
T0_cubea_amount_in_val_crcy,
T0_cubea_d_cl_pd_def_taxc_pc,
T0_cubea_d_cl_pd_def_taxc_vc,
T0_cubea_d_impairment_poscrcy,
T0_cubea_d_impairment_valcrcy,
T0_cubea_d_val_fx_aav_in_vc,
T0_cubea_d_swap_mar_a_d_pc,
T0_cubea_d_vaco_fc_nonpl_vc,
T0_cubea_d_vaco_sec_nonpl_pc,
T0_cubea_d_vaco_sec_nonpl_vc,
T0_cubea_del_fc_val_nonpl_vc,
T0_cubea_del_amort_acq_val_pc,
T0_cubea_del_amort_acq_val_vc,
T0_cubea_del_bval_ex_costs_pc,
T0_cubea_del_bval_ex_costs_vc,
T0_cubea_del_sec_val_nonpl_pc,
T0_cubea_del_sec_val_nonpl_vc,
T0_cubea_del_spot_val_purc_vc,
T0_cubea_del_spot_val_salc_vc,
T0_cubea_del_val_fc_costs_vc,
T0_cubea_del_val_se_costs_pc,
T0_cubea_del_val_se_costs_vc,
T0_cubea_delta_acc_int_pc,
T0_cubea_delta_acc_int_vc,
T0_cubea_delta_accum_repay_pc,
T0_cubea_delta_accum_repay_vc,
T0_cubea_delta_acq_val_pc,
T0_cubea_delta_acq_val_vc,
T0_cubea_delta_amort_neg_pc,
T0_cubea_delta_amort_neg_vc,
T0_cubea_delta_amortizat_pc,
T0_cubea_delta_amortizat_vc,
T0_cubea_delta_book_val_pc,
T0_cubea_delta_book_val_vc,
T0_cubea_delta_costs_pc,
T0_cubea_delta_costs_vc,
T0_cubea_delta_fc_val_vc,
T0_cubea_delta_fx_impairmt_vc,
T0_cubea_delta_no_of_units,
T0_cubea_delta_nom_amnt_pc,
T0_cubea_delta_orig_nomamt_pc,
T0_cubea_delta_purch_amnt_pc,
T0_cubea_delta_purch_amnt_vc,
T0_cubea_delta_sec_val_pc,
T0_cubea_delta_sec_val_vc,
T0_cubea_delta_swap_val_vc,
T0_cubea_delta_swapmar_a_d_vc,
T0_cubea_delta_var_margin_pc,
T0_cubea_delta_var_margin_vc,
T0_cubea_index_clean_amount_p,
T0_cubea_qty_interest_dividen,
T12_zitsde048_medium_description,
T10_ziasde002_securities_account,
T5_zitsde006_long_description,
T2_zitsde035_medium_description,
T3_zitsde001_description,
T7_ziasde001_crdb_issuer_sector,
T7_ziasde001_fiscal_country_with_isv,
T8_ziasde006_general_security_classification,
T8_ziasde006_borrower_s_note_loan_security_type,
T8_ziasde006_issuer_type,
T8_ziasde006_asset_pool_classification,
T8_ziasde006_crdb_seniority,
T8_ziasde006_dali_unique_identifier,
T8_ziasde006_maturity_date,
T8_ziasde006_bond_classification,
T8_ziasde006_additive_margin,
T1_zitsde032_long_description,
T6_zitsde007_long_description,
T9_ziasde007_axa_rating,
T9_ziasde007_fitch_rating,
T9_ziasde007_s_p_rating,
T9_ziasde007_axa_internal_rating,
T9_ziasde007_local_zkb_rating_,
T9_ziasde007_local_risk_mgmt_rating,
T9_ziasde007_local_ubs_rating,
T9_ziasde007_local_credit_suisse_rating,
T4_zitsde004_medium_description,
T11_ziasde004_type_of_portfolio,

are_area,
are_region,
are_entity,
apc_activity_profit_center,
apc_profit_center_name,
acc_activity_ccode,
apt_activity_ptf_type,
as_split_ratio,
as_activity_split,
activity_pi2,
ifac_first_asset_class,
ifaclt_ip_asset_class_loantype,
ifaci_ip_asset_class_issuertype,
ifaci_issuer_type_name,
ifaca_ip_asset_class_apc,
iacs_ip_asset_class_seniority,
iacsec_ip_asset_class_sector,
iacsec_industry_name,
isca_ip_asset_class_aar,
t_temp1,
iaci_ip_asset_class_issuer;


STORE res INTO '$phase2_repertoir' USING PigStorage('|');
