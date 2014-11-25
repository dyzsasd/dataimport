T35 = LOAD '$phase3_repertoir' USING PigStorage('|') AS 
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
T0_cubea_amount_in_val_crcy:chararray,
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
country,
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
iaci_ip_asset_class_issuer:chararray,
lc_ltf_code:chararray,
s_1_strategy:chararray,
s_2_strategy:chararray,
s_3_strategy:chararray,
pi2_strategy:chararray,
iacimc_ip_asset_class_inframidcap:chararray,
acfn_alternative_credit_fund_name:chararray,
d1:chararray,
d2:chararray,
is_cash:chararray,
ip_asset_class_maturity:chararray,
vf_vorratsvermoegen_flag:chararray,
pi2_rating:chararray);

ig_big = LOAD '$ig_big' USING PigStorage(';') AS 
(ib_rating:chararray, 
ib_rating_name:chararray, 
ib_ig_big:chararray);

temp2 = LOAD '$temp2' USING PigStorage(';') AS 
(t_second_asset_class:chararray, 
t_temp2:chararray);

ip_asset_class_strategy = LOAD '$ip_asset_class_strategy' USING PigStorage(';') AS 
(iacstg_strategy_pi2:chararray, 
iacstg_temp2:chararray, 
iacstg_ip_asset_class_strategy:chararray);

flow = LOAD '$flow' USING PigStorage(';') AS 
(f_business_transaction_category_name:chararray, 
f_flow:chararray);

rate = LOAD '$rate' USING PigStorage(';') AS 
(r_bond_classification:chararray, 
r_bond_classification_name:chararray, 
r_rate:chararray);

fx_rate_used = LOAD '$fx_rate_used' USING PigStorage(';') AS 
(fru_valuation_currency:chararray, 
fru_fx_rate_used:chararray, 
fru_fx_rate_date:chararray);

ltf_flag = LOAD '$ltf_flag' USING PigStorage(';') AS 
(lf_security_id:chararray, 
lf_security_id_name:chararray, 
lf_investment_in_ltf_flag:chararray, 
lf_trades_source:chararray);

ip_asset_class_country = LOAD '$ip_asset_class_country' USING PigStorage(';') AS 
(iacc_first_asset_class:chararray, 
iacc_issuer_fiscal_country_isv_key:chararray, 
iacc_issuer_fiscal_country_isv_name:chararray, 
iacc_ip_asset_class_country:chararray);

asset_class_hierarchy =  LOAD '$asset_class_hierarchy' USING PigStorage(';') AS 
(ach_final_ip_asset_class:chararray,
ach_asset_class:chararray,
ach_caa:chararray,
ach_saa:chararray,
ach_funded_name:chararray,
ach_total:chararray,
ach_sub_total:chararray);


J13 = JOIN T35 BY pi2_rating LEFT, ig_big BY ib_rating USING 'replicated';

T14 = FOREACH J13 GENERATE *, (
        ifac_first_asset_class == 'Convertible' ?
        CONCAT(ib_ig_big, ' Convertible') : (
            iacsec_ip_asset_class_sector IS NOT NULL ?
            CONCAT(CONCAT(ib_ig_big, ' '), iacsec_ip_asset_class_sector) : NULL
        )
) AS ip_asset_class_rating1;

T14bis = FOREACH T14 GENERATE *, (
    iacs_ip_asset_class_seniority == 'Covered Bond' AND (iacs_ip_asset_class_seniority IS NOT NULL)? 
    CONCAT(ib_ig_big, ' Covered Bond') : ip_asset_class_rating1
) AS ip_asset_class_rating;

J15 = JOIN T14bis BY (ifac_first_asset_class, T7_ziasde001_fiscal_country_with_isv) LEFT, ip_asset_class_country BY (iacc_first_asset_class, iacc_issuer_fiscal_country_isv_key);

T16 = FOREACH J15 GENERATE *, (
    iacc_ip_asset_class_country IS NOT NULL ?
    iacc_ip_asset_class_country : (
        ip_asset_class_rating IS NOT NULL ?
        ip_asset_class_rating : (
            iacsec_ip_asset_class_sector IS NOT NULL ?
            iacsec_ip_asset_class_sector : (
                iacs_ip_asset_class_seniority IS NOT NULL ?
                iacs_ip_asset_class_seniority : (
                    ifaca_ip_asset_class_apc IS NOT NULL ?
                    ifaca_ip_asset_class_apc : (
                        ifaci_ip_asset_class_issuertype IS NOT NULL ? 
                        ifaci_ip_asset_class_issuertype : (
                            ifaclt_ip_asset_class_loantype IS NOT NULL ?
                            ifaclt_ip_asset_class_loantype : ifac_first_asset_class
                        )
                    )
                )
            )
        )
    )
) AS second_asset_class;

J26 = JOIN T16 BY second_asset_class LEFT, temp2 BY t_second_asset_class USING 'replicated';

J26_Complet = FOREACH J26 GENERATE *, (t_temp2 IS NOT NULL? t_temp2:'-1') AS t_temp2_Complet;

ip_asset_class_strategy_Complet = FOREACH ip_asset_class_strategy GENERATE *, (iacstg_temp2 IS NOT NULL? iacstg_temp2:'-1') AS iacstg_temp2_Complet;

J27 = JOIN J26_Complet BY (pi2_strategy, t_temp2_Complet) LEFT, ip_asset_class_strategy_Complet BY (iacstg_strategy_pi2, iacstg_temp2_Complet) USING 'replicated';

T33 = FOREACH J27 GENERATE *, (
    ip_asset_class_maturity IS NOT NULL ?
    ip_asset_class_maturity : (
       acfn_alternative_credit_fund_name IS NOT NULL ?
        acfn_alternative_credit_fund_name : (
            iacimc_ip_asset_class_inframidcap IS NOT NULL ?
            iacimc_ip_asset_class_inframidcap : (
		iacstg_ip_asset_class_strategy IS NOT NULL ?
		iacstg_ip_asset_class_strategy :(
                    iaci_ip_asset_class_issuer IS NOT NULL ?
                    iaci_ip_asset_class_issuer : (
                        isca_ip_asset_class_aar IS NOT NULL ?
                        isca_ip_asset_class_aar : second_asset_class
                    )
                )
            )
        )
    )
) AS final_ip_asset_class;

T36 = FOREACH T33 GENERATE *, (T0_cubea_position_currency) AS instrument_ccy;

T37 = FOREACH T36 GENERATE *, (T7_ziasde001_fiscal_country_with_isv) AS issuer_country;

T42 = FOREACH T37 GENERATE *, 
( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetYear(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):NULL) ) AS year, 
( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetMonth(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):NULL) ) AS month;

J45 = JOIN T42 BY T0_cubea_business_trans_cat LEFT, flow BY f_business_transaction_category_name USING 'replicated';

J46 = JOIN J45 BY T8_ziasde006_bond_classification LEFT, rate BY r_bond_classification USING 'replicated';

J47 = JOIN J46 BY T0_cubea_valuation_currency LEFT, fx_rate_used BY fru_valuation_currency USING 'replicated';

JLtf = JOIN J47 BY T0_cubea_product LEFT, ltf_flag BY lf_security_id USING 'replicated';

JACH = JOIN JLtf BY final_ip_asset_class LEFT, asset_class_hierarchy BY ach_final_ip_asset_class USING 'replicated';

resf = FILTER JACH BY (are_area != 'OUT OF SCOPE') AND (are_area IS NOT NULL)
AND (activity_pi2 != 'UL') AND (activity_pi2 IS NOT NULL)
AND ( (T0_cubea_flow_type == 'SE1000') OR (T0_cubea_flow_type == 'SE2000') OR (T0_cubea_flow_type == 'RHT0001') OR (T0_cubea_flow_type matches '^SE399.*') OR (T0_cubea_flow_type matches '^CSE.*') )
AND (vf_vorratsvermoegen_flag IS NULL)
AND (lf_investment_in_ltf_flag IS NULL);

T47 = FOREACH resf GENERATE *, T0_cubea_amount_in_val_crcy AS amount, (T8_ziasde006_additive_margin) AS spread;

resfinal = FOREACH T47 Generate
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
country,
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
as_activity_split,
activity_pi2,
as_split_ratio,
ifac_first_asset_class,
ifaclt_ip_asset_class_loantype,
ifaci_ip_asset_class_issuertype,
ifaci_issuer_type_name,
ifaca_ip_asset_class_apc,
iacs_ip_asset_class_seniority,
iacsec_ip_asset_class_sector,
iacsec_industry_name,
ib_ig_big,
ib_rating_name,
ip_asset_class_rating,
iacc_ip_asset_class_country,
second_asset_class,
isca_ip_asset_class_aar,
t_temp1,
iaci_ip_asset_class_issuer,
lc_ltf_code,
t_temp2,
iacstg_ip_asset_class_strategy,
iacimc_ip_asset_class_inframidcap,
acfn_alternative_credit_fund_name,
is_cash,
ip_asset_class_maturity,
final_ip_asset_class,
vf_vorratsvermoegen_flag,
pi2_rating,
instrument_ccy,
issuer_country,
s_1_strategy,
s_2_strategy,
s_3_strategy,
pi2_strategy,
year,
month,
'Real' AS period,
f_flow,
f_business_transaction_category_name,
r_rate,
r_bond_classification_name,
lf_investment_in_ltf_flag,
ach_asset_class,
ach_caa,
ach_saa,
ach_funded_name,
ach_total,
ach_sub_total,
amount;

shp_flows_be = FILTER resfinal BY (country == 'be');
shp_flows_de = FILTER resfinal BY (country == 'de');
shp_flows_fr = FILTER resfinal BY (country == 'fr');
shp_flows_rw = FILTER resfinal BY (country == 'rw');

STORE shp_flows_be INTO '$rep_shp_flows_be' USING PigStorage('|');
STORE shp_flows_de INTO '$rep_shp_flows_de' USING PigStorage('|');
STORE shp_flows_fr INTO '$rep_shp_flows_fr' USING PigStorage('|');
STORE shp_flows_rw INTO '$rep_shp_flows_rw' USING PigStorage('|');
STORE shp_flows_w1 INTO '$rep_shp_flows_w1' USING PigStorage('|');

