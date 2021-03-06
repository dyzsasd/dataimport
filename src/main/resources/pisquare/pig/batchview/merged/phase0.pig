shp_flows_w1 = LOAD '/group/pisquare/data/shp_flows_w1/yyyy=*/mm=*/dd=*/hhmmss=*' USING PigStorage('|') AS(
T0_cubea_a_l_indicator:chararray,
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
T0_cubea_qty_interest_dividen:chararray);

shp_flows_rw = LOAD '/group/pisquare/data/shp_flows_rw/yyyy=*/mm=*/dd=*/hhmmss=*' USING PigStorage('|') AS(
T0_cubea_a_l_indicator:chararray,
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
T0_cubea_qty_interest_dividen:chararray);

shp_flows_fr = LOAD '/group/pisquare/data/shp_flows_fr/yyyy=*/mm=*/dd=*/hhmmss=*' USING PigStorage('|') AS(
T0_cubea_a_l_indicator:chararray,
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
T0_cubea_qty_interest_dividen:chararray);

shp_flows_de = LOAD '/group/pisquare/data/shp_flows_de/yyyy=*/mm=*/dd=*/hhmmss=*' USING PigStorage('|') AS(
T0_cubea_a_l_indicator:chararray,
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
T0_cubea_qty_interest_dividen:chararray);

shp_flows_be = LOAD '/group/pisquare/data/shp_flows_be/yyyy=*/mm=*/dd=*/hhmmss=*' USING PigStorage('|') AS(
T0_cubea_a_l_indicator:chararray,
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
T0_cubea_qty_interest_dividen:chararray);

shp_flows_be_filtered = FILTER shp_flows_be BY (T0_cubea_debit_credit == 'D')
AND (T0_cubea_posting_status == 'F')
AND ( (T0_cubea_business_trans_cat == '2001') OR (T0_cubea_business_trans_cat == '2002') OR (T0_cubea_business_trans_cat == '2020') OR (T0_cubea_business_trans_cat == '2305') OR (T0_cubea_business_trans_cat == '4002') OR (T0_cubea_business_trans_cat == '4003') )
AND (T0_cubea_ledger == '0L')
AND ( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetYear(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):GetYear(ToDate('1000-01-01 00:00:00', '$CubeADateFormat'))) == GetYear(ToDate('$today', '$SystemDateFormat')) )
AND( (T0_cubea_flow_type == 'SE1000') OR (T0_cubea_flow_type == 'SE2000') OR (T0_cubea_flow_type == 'RHT0001') OR (T0_cubea_flow_type matches '^SE399.*') OR (T0_cubea_flow_type matches '^CSE.*') );

shp_flows_de_filtered = FILTER shp_flows_de BY (T0_cubea_debit_credit == 'D')
AND (T0_cubea_posting_status == 'F')
AND ( (T0_cubea_business_trans_cat == '2001') OR (T0_cubea_business_trans_cat == '2002') OR (T0_cubea_business_trans_cat == '2020') OR (T0_cubea_business_trans_cat == '2305') OR (T0_cubea_business_trans_cat == '4002') OR (T0_cubea_business_trans_cat == '4003') )
AND (T0_cubea_ledger == '0L')
AND ( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetYear(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):GetYear(ToDate('1000-01-01 00:00:00', '$CubeADateFormat'))) == GetYear(ToDate('$today', '$SystemDateFormat')) )
AND( (T0_cubea_flow_type == 'SE1000') OR (T0_cubea_flow_type == 'SE2000') OR (T0_cubea_flow_type == 'RHT0001') OR (T0_cubea_flow_type matches '^SE399.*') OR (T0_cubea_flow_type matches '^CSE.*') );

shp_flows_fr_filtered = FILTER shp_flows_fr BY (T0_cubea_debit_credit == 'D')
AND (T0_cubea_posting_status == 'F')
AND ( (T0_cubea_business_trans_cat == '2001') OR (T0_cubea_business_trans_cat == '2002') OR (T0_cubea_business_trans_cat == '2020') OR (T0_cubea_business_trans_cat == '2305') OR (T0_cubea_business_trans_cat == '4002') OR (T0_cubea_business_trans_cat == '4003') )
AND (T0_cubea_ledger == '0L')
AND ( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetYear(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):GetYear(ToDate('1000-01-01 00:00:00', '$CubeADateFormat'))) == GetYear(ToDate('$today', '$SystemDateFormat')) )
AND( (T0_cubea_flow_type == 'SE1000') OR (T0_cubea_flow_type == 'SE2000') OR (T0_cubea_flow_type == 'RHT0001') OR (T0_cubea_flow_type matches '^SE399.*') OR (T0_cubea_flow_type matches '^CSE.*') );

shp_flows_rw_filtered = FILTER shp_flows_rw BY (T0_cubea_debit_credit == 'D')
AND (T0_cubea_posting_status == 'F')
AND ( (T0_cubea_business_trans_cat == '2001') OR (T0_cubea_business_trans_cat == '2002') OR (T0_cubea_business_trans_cat == '2020') OR (T0_cubea_business_trans_cat == '2305') OR (T0_cubea_business_trans_cat == '4002') OR (T0_cubea_business_trans_cat == '4003') )
AND (T0_cubea_ledger == '0L')
AND ( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetYear(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):GetYear(ToDate('1000-01-01 00:00:00', '$CubeADateFormat'))) == GetYear(ToDate('$today', '$SystemDateFormat')) )
AND( (T0_cubea_flow_type == 'SE1000') OR (T0_cubea_flow_type == 'SE2000') OR (T0_cubea_flow_type == 'RHT0001') OR (T0_cubea_flow_type matches '^SE399.*') OR (T0_cubea_flow_type matches '^CSE.*') );

shp_flows_w1_filtered = FILTER shp_flows_w1 BY (T0_cubea_debit_credit == 'D')
AND (T0_cubea_posting_status == 'F')
AND ( (T0_cubea_business_trans_cat == '2001') OR (T0_cubea_business_trans_cat == '2002') OR (T0_cubea_business_trans_cat == '2020') OR (T0_cubea_business_trans_cat == '2305') OR (T0_cubea_business_trans_cat == '4002') OR (T0_cubea_business_trans_cat == '4003') )
AND (T0_cubea_ledger == '0L')
AND ( ((T0_cubea_position_value_date matches '\\d\\d\\d\\d-\\d\\d-\\d\\d \\d\\d:\\d\\d:\\d\\d')?GetYear(ToDate(T0_cubea_position_value_date, '$CubeADateFormat')):GetYear(ToDate('1000-01-01 00:00:00', '$CubeADateFormat'))) == GetYear(ToDate('$today', '$SystemDateFormat')) )
AND( (T0_cubea_flow_type == 'SE1000') OR (T0_cubea_flow_type == 'SE2000') OR (T0_cubea_flow_type == 'RHT0001') OR (T0_cubea_flow_type matches '^SE399.*') OR (T0_cubea_flow_type matches '^CSE.*') );

shp_flows_be_attr = FOREACH shp_flows_be_filtered GENERATE *, 'be' AS country;
shp_flows_de_attr = FOREACH shp_flows_de_filtered GENERATE *, 'de' AS country;
shp_flows_fr_attr = FOREACH shp_flows_fr_filtered GENERATE *, 'fr' AS country;
shp_flows_rw_attr = FOREACH shp_flows_rw_filtered GENERATE *, 'rw' AS country;
shp_flows_w1_attr = FOREACH shp_flows_w1_filtered GENERATE *, 'w1' AS country;

cubeA = UNION ONSCHEMA shp_flows_be_attr, shp_flows_de_attr, shp_flows_fr_attr, shp_flows_rw_attr, shp_flows_w1_attr;

STORE cubeA INTO '$phase0_repertoir' USING PigStorage('|');

