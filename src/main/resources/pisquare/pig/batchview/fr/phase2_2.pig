J24 = LOAD '$phase2_repertoir' USING PigStorage('|') AS 
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
are_area:chararray,
are_region:chararray,
are_entity:chararray,
apc_activity_profit_center:chararray,
apc_profit_center_name:chararray,
acc_activity_ccode:chararray,
apt_activity_ptf_type:chararray,
as_split_ratio:chararray,
as_activity_split:chararray,
activity_pi2:chararray,
ifac_first_asset_class:chararray,
ifaclt_ip_asset_class_loantype:chararray,
ifaci_ip_asset_class_issuertype:chararray,
ifaci_issuer_type_name:chararray,
ifaca_ip_asset_class_apc:chararray,
iacs_ip_asset_class_seniority:chararray,
iacsec_ip_asset_class_sector:chararray,
iacsec_industry_name:chararray,
isca_ip_asset_class_aar:chararray,
t_temp1:chararray,
iaci_ip_asset_class_issuer:chararray);

ltf_code = LOAD '$ltf_code' USING PigStorage(';') AS 
(lc_company_code:chararray, 
lc_company_code_name:chararray, 
lc_ltf_code:chararray);

strategy_1 = LOAD '$strategy_isin' USING PigStorage(';') AS 
(s_1_entity:chararray, 
s_1_local_code_type:chararray, 
s_1_local_code:chararray, 
s_1_mutual_fund_code:chararray, 
s_1_mutual_fund_name:chararray, 
s_1_strategy:chararray);

strategy_2 = LOAD '$strategy_dali_id' USING PigStorage(';') AS 
(s_2_entity:chararray, 
s_2_dali_id:chararray, 
s_2_mutual_fund_code:chararray, 
s_2_mutual_fund_name:chararray, 
s_2_strategy:chararray);

strategy_3 = LOAD '$strategy_non_ltf' USING PigStorage(';') AS 
(s_3_entity:chararray, 
s_3_mutual_fund_code:chararray, 
s_3_mutual_fund_name:chararray, 
s_3_strategy:chararray);

ip_asset_class_inframidcap = LOAD '$ip_asset_class_inframidcap' USING PigStorage(';') AS 
(iacimc_issuer:chararray, 
iacimc_issuer_long_name:chararray, 
iacimc_strategies:chararray, 
iacimc_ip_asset_class_inframidcap);

alternative_credit_fund_name = LOAD '$alternative_credit_fund_name' USING PigStorage(';') AS 
(acfn_dali_id:chararray,
acfn_description:chararray, 
acfn_alternative_credit_fund_name:chararray);

vorratsvermoegen_flag = LOAD '$vorratsvermoegen_flag' USING PigStorage(';') AS 
(vf_company_code:chararray, 
vf_securities_account:chararray, 
vf_vorratsvermoegen_flag:chararray);

J25 = JOIN J24 BY T0_cubea_company_code LEFT, ltf_code BY lc_company_code USING 'replicated';

strategy_1_complet = FOREACH strategy_1 GENERATE*, (s_1_entity IS NOT NULL?s_1_entity:'-1') AS s_1_entity_Complet, (s_1_mutual_fund_code IS NOT NULL?s_1_mutual_fund_code:'-1') AS s_1_mutual_fund_code_Complet, (s_1_local_code IS NOT NULL?s_1_local_code:'-1') AS s_1_local_code_Complet;

strategy_2_complet = FOREACH strategy_2 GENERATE*, (s_2_entity IS NOT NULL?s_2_entity:'-1') AS s_2_entity_Complet, (s_2_mutual_fund_code IS NOT NULL?s_2_mutual_fund_code:'-1') AS s_2_mutual_fund_code_Complet, (s_2_dali_id IS NOT NULL?s_2_dali_id:'-1') AS s_2_dali_id_Complet;

J25_complet = FOREACH J25 GENERATE*, (are_entity IS NOT NULL?are_entity:'-1') AS are_entity_Complet, (lc_ltf_code IS NOT NULL?lc_ltf_code:'-1') AS lc_ltf_code_Complet, (T0_cubea_product IS NOT NULL?T0_cubea_product:'-1') AS T0_cubea_product_Complet, (T8_ziasde006_dali_unique_identifier IS NOT NULL?T8_ziasde006_dali_unique_identifier:'-1') AS T8_ziasde006_dali_unique_identifier_Complet;


-- the number in T0_cubea_product is with a format 15 digitals, but it isn't the same fomat for s_1_local_code_Complet and s_3_mutual_fund_code in mapping table. The format should be coherent. !!!!!!!!!!!!!!!!!!!!!!!!!

J38 = JOIN J25_complet BY (are_entity_Complet, lc_ltf_code_Complet, T0_cubea_product_Complet	) LEFT, strategy_1_complet BY (s_1_entity_Complet, s_1_mutual_fund_code_Complet, s_1_local_code_Complet) USING 'replicated';		--column strategy with isin

J39 = JOIN J38 BY (are_entity_Complet, lc_ltf_code_Complet, T8_ziasde006_dali_unique_identifier_Complet) LEFT, strategy_2_complet BY (s_2_entity_Complet, s_2_mutual_fund_code_Complet, s_2_dali_id_Complet) USING 'replicated';		--column strategy with 

J40 = JOIN J39 BY (are_entity, T0_cubea_product) LEFT, strategy_3 BY (s_3_entity, s_3_mutual_fund_code) USING 'replicated';						--column strategy non looked-through funds

T41 = FOREACH J40 GENERATE *, (
	s_1_strategy IS NOT NULL ?
	s_1_strategy:(
		s_2_strategy IS NOT NULL ?
		s_2_strategy:s_3_strategy
	)
) AS pi2_strategy;

-- Format problem, T0_cubea_risk_partner has 12 digitals, but iacimc_issuer doesn't. temporary transformation, should be tested

J28 = JOIN T41 BY T0_cubea_risk_partner LEFT, ip_asset_class_inframidcap BY iacimc_issuer USING 'replicated';

-- Format problem T8_ziasde006_dali_unique_identifier has 20 digitals, but acfn_dali_id doesn't. Temporary transformation, should be tested

J29 = JOIN J28 BY T8_ziasde006_dali_unique_identifier LEFT, alternative_credit_fund_name BY acfn_dali_id USING 'replicated';

--J30 = JOIN J29 BY acfn_alternative_credit_fund_name LEFT, ip_asset_class_issue BY iacie_fund_name USING 'replicated';

Tmp31 = FOREACH J29 GENERATE *, 
( (T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d') ? 
ToDate(T0_cubea_position_value_date, '$CubeADateFormat'):ToDate('1000-01-01 00:00:00', '$CubeADateFormat')) AS d1, 
( (T8_ziasde006_maturity_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')? 
ToDate(T8_ziasde006_maturity_date, '$MasterDateFormat'):ToDate('1000-01-01 00:00:00', '$MasterDateFormat') ) AS d2;

T31bis = FOREACH Tmp31 GENERATE *, (d1 IS NOT NULL? (int)GetYear(d1):0) AS y1, (d2 IS NOT NULL? (int)GetYear(d2):2) AS y2, (d2 IS NOT NULL? (int)GetMonth(d2):0) AS m2, (d1 IS NOT NULL? (int)GetMonth(d1):0) AS m1;

T31 = FOREACH T31bis GENERATE *, (  ((m2-m1<4) AND (y1==y2)) or ((m1-m2>8) AND (y2-y1==1)) ?'x':NULL) AS is_cash;

T32 = FOREACH T31 GENERATE *, (is_cash IS NOT NULL?'Cash':NULL) AS ip_asset_class_maturity;

J34 = JOIN T32 BY ( T0_cubea_company_code, T10_ziasde002_securities_account) LEFT, vorratsvermoegen_flag BY (vf_company_code, vf_securities_account) USING 'replicated';

T35 = FOREACH J34 GENERATE *, (
    T9_ziasde007_axa_rating IS NOT NULL ?
    T9_ziasde007_axa_rating : (
        T9_ziasde007_fitch_rating != 'Not assigned' ?
        T9_ziasde007_fitch_rating : (
            T9_ziasde007_s_p_rating != 'Not assigned' ?
            T9_ziasde007_s_p_rating : (
                T9_ziasde007_axa_internal_rating != 'Not assigned' ? 
                T9_ziasde007_axa_internal_rating : (
                    T9_ziasde007_local_zkb_rating_ != 'Not assigned' ?
                    T9_ziasde007_local_zkb_rating_ : (
                        T9_ziasde007_local_risk_mgmt_rating != 'Not assigned' ?
                        T9_ziasde007_local_risk_mgmt_rating : (
				T9_ziasde007_local_ubs_rating != 'Not assigned' ?
				T9_ziasde007_local_ubs_rating:T9_ziasde007_local_credit_suisse_rating

			)
                   )
                )
            )
        )
    )
) AS pi2_rating;

res = FOREACH T35 GENERATE
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
iaci_ip_asset_class_issuer,
lc_ltf_code,
s_1_strategy,
s_2_strategy,
s_3_strategy,
pi2_strategy,
iacimc_ip_asset_class_inframidcap,
acfn_alternative_credit_fund_name,
d1,
d2,
is_cash,
ip_asset_class_maturity,
vf_vorratsvermoegen_flag,
pi2_rating;

STORE res INTO '$phase3_repertoir' USING PigStorage('|');
