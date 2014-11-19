CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysac_ref_text (
  bic_ysac_ref STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysac_ref_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysac_ref_text_all (
  bic_ysac_ref STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysac_ref_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycaltacc1_attr (
  chrt_accts STRING,
  bic_ycaltacc STRING,
  bal_flag STRING,
  incst_flag STRING,
  glaccext STRING,
  bic_ycacctgrp STRING,
  bic_ycngaapme STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycaltacc1_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycaltacc1_attr_all (
  chrt_accts STRING,
  bic_ycaltacc STRING,
  bal_flag STRING,
  incst_flag STRING,
  glaccext STRING,
  bic_ycacctgrp STRING,
  bic_ycngaapme STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycaltacc1_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycaltacc1_text (
  chrt_accts STRING,
  bic_ycaltacc STRING,
  langu STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycaltacc1_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycaltacc1_text_all (
  chrt_accts STRING,
  bic_ycaltacc STRING,
  langu STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycaltacc1_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysasatacc_attr (
  chrt_accts STRING,
  bic_ysasatacc STRING,
  bal_flag STRING,
  incst_flag STRING,
  glaccext STRING,
  bic_ycacctgrp STRING,
  bic_ycngaapme STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysasatacc_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysasatacc_attr_all (
  chrt_accts STRING,
  bic_ysasatacc STRING,
  bal_flag STRING,
  incst_flag STRING,
  glaccext STRING,
  bic_ycacctgrp STRING,
  bic_ycngaapme STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysasatacc_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysasatacc_text (
  chrt_accts STRING,
  bic_ysasatacc STRING,
  langu STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysasatacc_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysasatacc_text_all (
  chrt_accts STRING,
  bic_ysasatacc STRING,
  langu STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysasatacc_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yreassid_attr (
  bic_yreasstp STRING,
  bic_yreassid STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_yreasscod STRING,
  bic_yreownoc STRING,
  bic_yretown STRING,
  bic_yrezip STRING,
  bic_yrectrcd STRING,
  bic_yreregion STRING,
  bic_yrelglfrm STRING,
  bic_yreregcd STRING,
  bic_yrecapit STRING,
  bic_yrelegadd STRING,
  bic_yrestat STRING,
  bic_yrepdmtus STRING,
  bic_yreartot STRING,
  bic_yreuntmsr STRING,
  bic_yreprknbr STRING,
  bic_yreasmncd STRING,
  bic_yrevaldat TIMESTAMP,
  bic_yreglval STRING,
  bic_yreuntnav STRING,
  bic_yreshrnbr STRING,
  bic_yrecmpcur STRING,
  bic_yrecapdat TIMESTAMP,
  bic_yremkapdt STRING,
  bic_yrerfapdt TIMESTAMP,
  bic_yrevalcat STRING,
  bic_yreassman STRING,
  bic_yrefasstp STRING,
  bic_yrepchsr STRING,
  bic_zsdestkba STRING,
  bic_zsdemw670 STRING,
  bic_zsdemw67 STRING,
  bic_zsdedvuan STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yreassid_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yreassid_attr_all (
  bic_yreasstp STRING,
  bic_yreassid STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_yreasscod STRING,
  bic_yreownoc STRING,
  bic_yretown STRING,
  bic_yrezip STRING,
  bic_yrectrcd STRING,
  bic_yreregion STRING,
  bic_yrelglfrm STRING,
  bic_yreregcd STRING,
  bic_yrecapit STRING,
  bic_yrelegadd STRING,
  bic_yrestat STRING,
  bic_yrepdmtus STRING,
  bic_yreartot STRING,
  bic_yreuntmsr STRING,
  bic_yreprknbr STRING,
  bic_yreasmncd STRING,
  bic_yrevaldat TIMESTAMP,
  bic_yreglval STRING,
  bic_yreuntnav STRING,
  bic_yreshrnbr STRING,
  bic_yrecmpcur STRING,
  bic_yrecapdat TIMESTAMP,
  bic_yremkapdt STRING,
  bic_yrerfapdt TIMESTAMP,
  bic_yrevalcat STRING,
  bic_yreassman STRING,
  bic_yrefasstp STRING,
  bic_yrepchsr STRING,
  bic_zsdestkba STRING,
  bic_zsdemw670 STRING,
  bic_zsdemw67 STRING,
  bic_zsdedvuan STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yreassid_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yreassid_text (
  bic_yreasstp STRING,
  bic_yreassid STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yreassid_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yreassid_text_all (
  bic_yreasstp STRING,
  bic_yreassid STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yreassid_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysasstmng_text (
  bic_ysasstmng STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysasstmng_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysasstmng_text_all (
  bic_ysasstmng STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysasstmng_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysatrasid_attr (
  fs_ctr_tp STRING,
  bic_ysatrasid STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_zptbascot STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysatrasid_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysatrasid_attr_all (
  fs_ctr_tp STRING,
  bic_ysatrasid STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_zptbascot STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysatrasid_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysatrasid_text (
  fs_ctr_tp STRING,
  bic_ysatrasid STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysatrasid_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysatrasid_text_all (
  fs_ctr_tp STRING,
  bic_ysatrasid STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysatrasid_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosicr (
  company STRING,
  bic_ysbpartnr STRING,
  fs_co_rel STRING,
  recordmode STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosicr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosicr_all (
  company STRING,
  bic_ysbpartnr STRING,
  fs_co_rel STRING,
  recordmode STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosicr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_bus_area_attr (
  bus_area STRING,
  soursystem STRING,
  logsys STRING,
  country STRING,
  bic_ycregion STRING,
  bic_yclocabrc STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_bus_area_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_bus_area_attr_all (
  bus_area STRING,
  soursystem STRING,
  logsys STRING,
  country STRING,
  bic_ycregion STRING,
  bic_yclocabrc STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_bus_area_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_bus_area_text (
  bus_area STRING,
  langu STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_bus_area_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_bus_area_text_all (
  bus_area STRING,
  langu STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_bus_area_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_bt_ct_attr (
  cfm_bt_ct STRING,
  bic_yscpdvdmv STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_bt_ct_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_bt_ct_attr_all (
  cfm_bt_ct STRING,
  bic_yscpdvdmv STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_bt_ct_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_bt_ct_text (
  cfm_bt_ct STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_bt_ct_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_bt_ct_text_all (
  cfm_bt_ct STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_bt_ct_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_chrt_accts_attr (
  chrt_accts STRING,
  logsys STRING,
  bic_ycretearn STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_chrt_accts_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_chrt_accts_attr_all (
  chrt_accts STRING,
  logsys STRING,
  bic_ycretearn STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_chrt_accts_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_chrt_accts_text (
  chrt_accts STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_chrt_accts_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_chrt_accts_text_all (
  chrt_accts STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_chrt_accts_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_comp_code_attr (
  comp_code STRING,
  country STRING,
  currency STRING,
  bic_ycrepposi STRING,
  chrt_accts STRING,
  bic_ycretearn STRING,
  addr_short STRING,
  postal_cd STRING,
  city STRING,
  vat_reg_no STRING,
  bic_yclegform STRING,
  bic_ycregcmp STRING,
  bic_ycconsocd STRING,
  fiscvarnt STRING,
  co_area STRING,
  house_num STRING,
  bic_ycbpartne STRING,
  bic_ysciaxa STRING,
  bic_ysopcomp STRING,
  bic_yccountry STRING,
  bic_ycinter9b STRING,
  bic_ycinter_0 STRING,
  bic_ycloi STRING,
  bic_ycinsur STRING,
  bic_ycsol2 STRING,
  bic_ycbank STRING,
  bic_ycisship STRING,
  bic_yciscop STRING,
  bic_ycdummy0 STRING,
  bic_ycdummy02 STRING,
  bic_ycdummy03 STRING,
  bic_ycdummy04 STRING,
  bic_ycdummy05 STRING,
  bic_ycgrpcpcd STRING,
  bic_ycrky_lc2 STRING,
  bic_zsdecrdid STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_comp_code_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_comp_code_attr_all (
  comp_code STRING,
  country STRING,
  currency STRING,
  bic_ycrepposi STRING,
  chrt_accts STRING,
  bic_ycretearn STRING,
  addr_short STRING,
  postal_cd STRING,
  city STRING,
  vat_reg_no STRING,
  bic_yclegform STRING,
  bic_ycregcmp STRING,
  bic_ycconsocd STRING,
  fiscvarnt STRING,
  co_area STRING,
  house_num STRING,
  bic_ycbpartne STRING,
  bic_ysciaxa STRING,
  bic_ysopcomp STRING,
  bic_yccountry STRING,
  bic_ycinter9b STRING,
  bic_ycinter_0 STRING,
  bic_ycloi STRING,
  bic_ycinsur STRING,
  bic_ycsol2 STRING,
  bic_ycbank STRING,
  bic_ycisship STRING,
  bic_yciscop STRING,
  bic_ycdummy0 STRING,
  bic_ycdummy02 STRING,
  bic_ycdummy03 STRING,
  bic_ycdummy04 STRING,
  bic_ycdummy05 STRING,
  bic_ycgrpcpcd STRING,
  bic_ycrky_lc2 STRING,
  bic_zsdecrdid STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_comp_code_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_comp_code_text (
  comp_code STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_comp_code_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_comp_code_text_all (
  comp_code STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_comp_code_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_ctr_tp_text (
  fs_ctr_tp STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_ctr_tp_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_ctr_tp_text_all (
  fs_ctr_tp STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_ctr_tp_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_co_area_text (
  co_area STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_co_area_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_co_area_text_all (
  co_area STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_co_area_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgrpacc_attr (
  bic_ycgrpacc STRING,
  bic_yccatrul STRING,
  bic_ycsignrul STRING,
  bic_ycngaapme STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgrpacc_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgrpacc_attr_all (
  bic_ycgrpacc STRING,
  bic_yccatrul STRING,
  bic_ycsignrul STRING,
  bic_ycngaapme STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgrpacc_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgrpacc_text (
  bic_ycgrpacc STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgrpacc_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgrpacc_text_all (
  bic_ycgrpacc STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgrpacc_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysfinantr_attr (
  comp_code STRING,
  fs_ctr_tp STRING,
  bic_ysfinantr STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  ba_objnrt STRING,
  cfm_ir DECIMAL(38,10),
  hc_creuser STRING,
  cr_on_i TIMESTAMP,
  crea_time STRING,
  fs_updusr STRING,
  fs_upd_d TIMESTAMP,
  fs_upd_t STRING,
  fs_sec_ct STRING,
  fs_prd_tp STRING,
  cfm_tra_ct STRING,
  cfm_act_ct STRING,
  cfm_tra_tp STRING,
  fs_trms_d TIMESTAMP,
  fs_trme_d TIMESTAMP,
  cfm_notcd TIMESTAMP,
  cfm_cc_d TIMESTAMP,
  cfm_cc_t STRING,
  cfm_trader STRING,
  cfm_contct STRING,
  cfm_bp_gua STRING,
  cfm_ex_ref STRING,
  cfm_pfdeal STRING,
  cfm_finprj STRING,
  cfm_mas_ag STRING,
  cfm_assmt STRING,
  cfm_in_ref STRING,
  cfm_charc STRING,
  fs_cvalcl STRING,
  cfm_fac_no STRING,
  cfm_cc_fac STRING,
  cfm_actsta STRING,
  cfm_rel_st STRING,
  cfm_rvresn STRING,
  cfm_tr_cur STRING,
  cfm_in_cur STRING,
  cfm_ou_cur STRING,
  cfm_0021 DECIMAL(17,2),
  cfmp0030 DECIMAL(17,2),
  cfmp0032 DECIMAL(17,2),
  cfm_ld_cur STRING,
  cfm_fo_cur STRING,
  cfm_fxrt DECIMAL(17,3),
  cfm_spotrt DECIMAL(17,3),
  cfm_swaprt DECIMAL(17,3),
  cfm_sec_ac STRING,
  cfm_sec_id STRING,
  cfm_pos_ac STRING,
  cfm_ctyid STRING,
  unit STRING,
  cfm_quanty DECIMAL(17,3),
  cfm_fwdprc DECIMAL(17,3),
  cfm_ctyspt DECIMAL(17,3),
  cfm_conbac DECIMAL(17,3),
  cfmp0730 DECIMAL(17,3),
  fs_effir STRING,
  fs_ymeth STRING,
  fs_typir STRING,
  fs_refir STRING,
  fs_rfspr DECIMAL(17,3),
  fs_ir_frm STRING,
  fs_ir_amnt DECIMAL(17,2),
  cfm_irctin STRING,
  cfm_ir_in DECIMAL(17,3),
  cfm_refiri STRING,
  fs_rfsprin DECIMAL(17,3),
  cfm_frm_in STRING,
  fs_iramtin DECIMAL(17,2),
  cfm_irctou STRING,
  cfm_ir_out DECIMAL(17,3),
  cfm_refiro STRING,
  fs_rfsprou DECIMAL(17,3),
  cfm_frm_ou STRING,
  fs_iramtou DECIMAL(17,2),
  cfm_exty STRING,
  cfm_pcid STRING,
  fs_ddate TIMESTAMP,
  cfm_st_cur STRING,
  cfm_pc_cur STRING,
  cfm_bstr DECIMAL(17,2),
  cfm_seid STRING,
  cfm_oppt STRING,
  cfm_bstrdr STRING,
  cfm_bar_ct STRING,
  cfm_ldcrul STRING,
  cfm_focrul STRING,
  cfm_barr1 DECIMAL(17,3),
  cfm_barr2 DECIMAL(17,3),
  cfm_prctrd DECIMAL(17,3),
  cfm_ccyunt STRING,
  cfm_nomtrd DECIMAL(17,2),
  cfm_nogtrd DECIMAL(17,2),
  cfm_nmbtrd DECIMAL(17,3),
  cfm_qu_cur STRING,
  cfm_0646 DECIMAL(17,2),
  fs_pytcur STRING,
  cfm_0645 DECIMAL(17,2),
  cfmp0640 DECIMAL(17,2),
  loc_currcy STRING,
  cfm_0642 DECIMAL(17,2),
  fs_icm STRING,
  fs_icm_in STRING,
  fs_icm_out STRING,
  cfm_quotat STRING,
  cfm_lo_sh STRING,
  bic_ystendund TIMESTAMP,
  bic_yststrund TIMESTAMP,
  bic_yscontdat TIMESTAMP,
  bic_yscap DECIMAL(17,3),
  bic_ysfloor DECIMAL(17,3),
  bic_ysmultspr DECIMAL(17,3),
  bic_ysaditspr DECIMAL(17,3),
  bic_yspayflta DECIMAL(17,3),
  bic_yspayfltb DECIMAL(17,3),
  bic_ysrecflta DECIMAL(17,3),
  bic_ysrecfltb DECIMAL(17,3),
  bic_yspaycap DECIMAL(17,3),
  bic_yspayfloo DECIMAL(17,3),
  bic_yspaypfr DECIMAL(17,3),
  bic_yspayratc DECIMAL(17,3),
  bic_yspayref DECIMAL(17,3),
  bic_yspayrest DECIMAL(17,3),
  bic_ysreccap DECIMAL(17,3),
  bic_ysrecfloo DECIMAL(17,3),
  bic_ysrecratc DECIMAL(17,3),
  bic_ysrecrest DECIMAL(17,3),
  bic_ysdivpayc STRING,
  contrend TIMESTAMP,
  contrstart TIMESTAMP,
  bic_ysmultflw STRING,
  bic_ysrecpfr DECIMAL(17,3),
  bic_ysrecref DECIMAL(17,3),
  fs_rptyp STRING,
  bic_ysfrequen DECIMAL(17,3),
  bic_yscaldate TIMESTAMP,
  bic_ysmatdat TIMESTAMP,
  bic_ycondtype STRING,
  bic_ysciprate STRING,
  bic_yscoi_cur STRING,
  bic_yspaytime STRING,
  bic_yspaytype STRING,
  bic_ysrectype STRING,
  bic_ysorddate TIMESTAMP,
  bic_ysbuptcon STRING,
  bic_ysexpkey STRING,
  bic_ysstrikep DECIMAL(38,10),
  bic_ysdpbakn STRING,
  bic_zptcic STRING,
  bic_ysfddate TIMESTAMP,
  bic_ysundtyp STRING,
  bic_yslcurrrt DECIMAL(17,3),
  currency STRING,
  bic_ysnom DECIMAL(17,2),
  bic_ysunitsno DECIMAL(17,3),
  bic_ysexerdt TIMESTAMP,
  bic_ysund STRING,
  bic_zshedgstr STRING,
  bic_zsfrgvcr3 STRING,
  bic_zsinflatn STRING,
  bic_ysissuerf STRING,
  bic_ys_soursy STRING,
  bic_ysunpdtp STRING,
  bic_zsdeliqsp STRING,
  bic_ysoprdtp STRING,
  bic_ysrfhazul STRING,
  bic_ysintfs STRING,
  bic_ysintfl STRING,
  bic_zchaacat STRING,
  bic_ysratpvd STRING,
  bic_zbesiuval DECIMAL(17,3),
  bic_ysncpdate TIMESTAMP,
  bic_yslcpdate TIMESTAMP,
  cfm_vtick DECIMAL(17,2),
  bic_zbesswtyp STRING,
  bic_zbesmfltp STRING,
  bic_zbesilsmt STRING,
  bic_zbesoutnu DECIMAL(17,3),
  bic_zbesincna DECIMAL(17,2),
  bic_zbespcurr STRING,
  bic_zbesbdate TIMESTAMP,
  bic_yscmpcode STRING,
  bic_yscicland STRING,
  bic_yscicacls STRING,
  bic_zbesefff TIMESTAMP,
  bic_ysncpdout TIMESTAMP)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysfinantr_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysfinantr_attr_all (
  comp_code STRING,
  fs_ctr_tp STRING,
  bic_ysfinantr STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  ba_objnrt STRING,
  cfm_ir DECIMAL(38,10),
  hc_creuser STRING,
  cr_on_i TIMESTAMP,
  crea_time STRING,
  fs_updusr STRING,
  fs_upd_d TIMESTAMP,
  fs_upd_t STRING,
  fs_sec_ct STRING,
  fs_prd_tp STRING,
  cfm_tra_ct STRING,
  cfm_act_ct STRING,
  cfm_tra_tp STRING,
  fs_trms_d TIMESTAMP,
  fs_trme_d TIMESTAMP,
  cfm_notcd TIMESTAMP,
  cfm_cc_d TIMESTAMP,
  cfm_cc_t STRING,
  cfm_trader STRING,
  cfm_contct STRING,
  cfm_bp_gua STRING,
  cfm_ex_ref STRING,
  cfm_pfdeal STRING,
  cfm_finprj STRING,
  cfm_mas_ag STRING,
  cfm_assmt STRING,
  cfm_in_ref STRING,
  cfm_charc STRING,
  fs_cvalcl STRING,
  cfm_fac_no STRING,
  cfm_cc_fac STRING,
  cfm_actsta STRING,
  cfm_rel_st STRING,
  cfm_rvresn STRING,
  cfm_tr_cur STRING,
  cfm_in_cur STRING,
  cfm_ou_cur STRING,
  cfm_0021 DECIMAL(17,2),
  cfmp0030 DECIMAL(17,2),
  cfmp0032 DECIMAL(17,2),
  cfm_ld_cur STRING,
  cfm_fo_cur STRING,
  cfm_fxrt DECIMAL(17,3),
  cfm_spotrt DECIMAL(17,3),
  cfm_swaprt DECIMAL(17,3),
  cfm_sec_ac STRING,
  cfm_sec_id STRING,
  cfm_pos_ac STRING,
  cfm_ctyid STRING,
  unit STRING,
  cfm_quanty DECIMAL(17,3),
  cfm_fwdprc DECIMAL(17,3),
  cfm_ctyspt DECIMAL(17,3),
  cfm_conbac DECIMAL(17,3),
  cfmp0730 DECIMAL(17,3),
  fs_effir STRING,
  fs_ymeth STRING,
  fs_typir STRING,
  fs_refir STRING,
  fs_rfspr DECIMAL(17,3),
  fs_ir_frm STRING,
  fs_ir_amnt DECIMAL(17,2),
  cfm_irctin STRING,
  cfm_ir_in DECIMAL(17,3),
  cfm_refiri STRING,
  fs_rfsprin DECIMAL(17,3),
  cfm_frm_in STRING,
  fs_iramtin DECIMAL(17,2),
  cfm_irctou STRING,
  cfm_ir_out DECIMAL(17,3),
  cfm_refiro STRING,
  fs_rfsprou DECIMAL(17,3),
  cfm_frm_ou STRING,
  fs_iramtou DECIMAL(17,2),
  cfm_exty STRING,
  cfm_pcid STRING,
  fs_ddate TIMESTAMP,
  cfm_st_cur STRING,
  cfm_pc_cur STRING,
  cfm_bstr DECIMAL(17,2),
  cfm_seid STRING,
  cfm_oppt STRING,
  cfm_bstrdr STRING,
  cfm_bar_ct STRING,
  cfm_ldcrul STRING,
  cfm_focrul STRING,
  cfm_barr1 DECIMAL(17,3),
  cfm_barr2 DECIMAL(17,3),
  cfm_prctrd DECIMAL(17,3),
  cfm_ccyunt STRING,
  cfm_nomtrd DECIMAL(17,2),
  cfm_nogtrd DECIMAL(17,2),
  cfm_nmbtrd DECIMAL(17,3),
  cfm_qu_cur STRING,
  cfm_0646 DECIMAL(17,2),
  fs_pytcur STRING,
  cfm_0645 DECIMAL(17,2),
  cfmp0640 DECIMAL(17,2),
  loc_currcy STRING,
  cfm_0642 DECIMAL(17,2),
  fs_icm STRING,
  fs_icm_in STRING,
  fs_icm_out STRING,
  cfm_quotat STRING,
  cfm_lo_sh STRING,
  bic_ystendund TIMESTAMP,
  bic_yststrund TIMESTAMP,
  bic_yscontdat TIMESTAMP,
  bic_yscap DECIMAL(17,3),
  bic_ysfloor DECIMAL(17,3),
  bic_ysmultspr DECIMAL(17,3),
  bic_ysaditspr DECIMAL(17,3),
  bic_yspayflta DECIMAL(17,3),
  bic_yspayfltb DECIMAL(17,3),
  bic_ysrecflta DECIMAL(17,3),
  bic_ysrecfltb DECIMAL(17,3),
  bic_yspaycap DECIMAL(17,3),
  bic_yspayfloo DECIMAL(17,3),
  bic_yspaypfr DECIMAL(17,3),
  bic_yspayratc DECIMAL(17,3),
  bic_yspayref DECIMAL(17,3),
  bic_yspayrest DECIMAL(17,3),
  bic_ysreccap DECIMAL(17,3),
  bic_ysrecfloo DECIMAL(17,3),
  bic_ysrecratc DECIMAL(17,3),
  bic_ysrecrest DECIMAL(17,3),
  bic_ysdivpayc STRING,
  contrend TIMESTAMP,
  contrstart TIMESTAMP,
  bic_ysmultflw STRING,
  bic_ysrecpfr DECIMAL(17,3),
  bic_ysrecref DECIMAL(17,3),
  fs_rptyp STRING,
  bic_ysfrequen DECIMAL(17,3),
  bic_yscaldate TIMESTAMP,
  bic_ysmatdat TIMESTAMP,
  bic_ycondtype STRING,
  bic_ysciprate STRING,
  bic_yscoi_cur STRING,
  bic_yspaytime STRING,
  bic_yspaytype STRING,
  bic_ysrectype STRING,
  bic_ysorddate TIMESTAMP,
  bic_ysbuptcon STRING,
  bic_ysexpkey STRING,
  bic_ysstrikep DECIMAL(38,10),
  bic_ysdpbakn STRING,
  bic_zptcic STRING,
  bic_ysfddate TIMESTAMP,
  bic_ysundtyp STRING,
  bic_yslcurrrt DECIMAL(17,3),
  currency STRING,
  bic_ysnom DECIMAL(17,2),
  bic_ysunitsno DECIMAL(17,3),
  bic_ysexerdt TIMESTAMP,
  bic_ysund STRING,
  bic_zshedgstr STRING,
  bic_zsfrgvcr3 STRING,
  bic_zsinflatn STRING,
  bic_ysissuerf STRING,
  bic_ys_soursy STRING,
  bic_ysunpdtp STRING,
  bic_zsdeliqsp STRING,
  bic_ysoprdtp STRING,
  bic_ysrfhazul STRING,
  bic_ysintfs STRING,
  bic_ysintfl STRING,
  bic_zchaacat STRING,
  bic_ysratpvd STRING,
  bic_zbesiuval DECIMAL(17,3),
  bic_ysncpdate TIMESTAMP,
  bic_yslcpdate TIMESTAMP,
  cfm_vtick DECIMAL(17,2),
  bic_zbesswtyp STRING,
  bic_zbesmfltp STRING,
  bic_zbesilsmt STRING,
  bic_zbesoutnu DECIMAL(17,3),
  bic_zbesincna DECIMAL(17,2),
  bic_zbespcurr STRING,
  bic_zbesbdate TIMESTAMP,
  bic_yscmpcode STRING,
  bic_yscicland STRING,
  bic_yscicacls STRING,
  bic_zbesefff TIMESTAMP,
  bic_ysncpdout TIMESTAMP)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysfinantr_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysfinantr_text (
  comp_code STRING,
  fs_ctr_tp STRING,
  bic_ysfinantr STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysfinantr_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysfinantr_text_all (
  comp_code STRING,
  fs_ctr_tp STRING,
  bic_ysfinantr STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysfinantr_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysflotp_attr (
  bic_ys_soursy STRING,
  bic_ysflotp STRING,
  bic_yspayrel STRING,
  bic_yssign STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysflotp_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysflotp_attr_all (
  bic_ys_soursy STRING,
  bic_ysflotp STRING,
  bic_yspayrel STRING,
  bic_yssign STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysflotp_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysflotp_text (
  bic_ys_soursy STRING,
  bic_ysflotp STRING,
  langu STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysflotp_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysflotp_text_all (
  bic_ys_soursy STRING,
  bic_ysflotp STRING,
  langu STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysflotp_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_gl_account_attr (
  chrt_accts STRING,
  gl_account STRING,
  bal_flag STRING,
  incst_flag STRING,
  glaccext STRING,
  bic_ycacctgrp STRING,
  bic_ycngaapme STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_gl_account_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_gl_account_attr_all (
  chrt_accts STRING,
  gl_account STRING,
  bal_flag STRING,
  incst_flag STRING,
  glaccext STRING,
  bic_ycacctgrp STRING,
  bic_ycngaapme STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_gl_account_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_gl_account_text (
  chrt_accts STRING,
  gl_account STRING,
  langu STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_gl_account_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_gl_account_text_all (
  chrt_accts STRING,
  gl_account STRING,
  langu STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_gl_account_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_zsdeso06 (
  bic_zsdebshie STRING,
  bic_zsdeseqnb STRING,
  gl_account STRING,
  chrt_accts STRING,
  recordmode STRING,
  bic_zsdenode STRING,
  bic_zsdelevel STRING,
  bic_zsdeparid STRING,
  bic_zsdechild STRING,
  bic_zsdenext STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_zsdebspar STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_zsdeso06';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_zsdeso06_all (
  bic_zsdebshie STRING,
  bic_zsdeseqnb STRING,
  gl_account STRING,
  chrt_accts STRING,
  recordmode STRING,
  bic_zsdenode STRING,
  bic_zsdelevel STRING,
  bic_zsdeparid STRING,
  bic_zsdechild STRING,
  bic_zsdenext STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_zsdebspar STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_zsdeso06';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgaapdif_text (
  bic_ycgaapdif STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgaapdif_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgaapdif_text_all (
  bic_ycgaapdif STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgaapdif_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgaccmap_attr (
  bic_ycgrprisk STRING,
  bic_ycifrscl STRING,
  bic_ycglaccfr STRING,
  bic_ycgaccmap STRING,
  bic_ycgrpacc STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgaccmap_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgaccmap_attr_all (
  bic_ycgrprisk STRING,
  bic_ycifrscl STRING,
  bic_ycglaccfr STRING,
  bic_ycgaccmap STRING,
  bic_ycgrpacc STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgaccmap_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgrprisk_text (
  bic_ycgrprisk STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgrprisk_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycgrprisk_text_all (
  bic_ycgrprisk STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycgrprisk_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yshouseb_attr (
  comp_code STRING,
  bic_ys_soursy STRING,
  bic_yshouseb STRING,
  houseb_num STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yshouseb_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yshouseb_attr_all (
  comp_code STRING,
  bic_ys_soursy STRING,
  bic_yshouseb STRING,
  houseb_num STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yshouseb_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yshouseb_text (
  comp_code STRING,
  bic_ys_soursy STRING,
  bic_yshouseb STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yshouseb_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yshouseb_text_all (
  comp_code STRING,
  bic_ys_soursy STRING,
  bic_yshouseb STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yshouseb_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yshouseba_attr (
  comp_code STRING,
  bic_yshouseb STRING,
  bic_ys_soursy STRING,
  bic_yshouseba STRING,
  bankacct STRING,
  currency STRING,
  chrt_accts STRING,
  gl_account STRING,
  bic_yspositi STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yshouseba_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yshouseba_attr_all (
  comp_code STRING,
  bic_yshouseb STRING,
  bic_ys_soursy STRING,
  bic_yshouseba STRING,
  bankacct STRING,
  currency STRING,
  chrt_accts STRING,
  gl_account STRING,
  bic_yspositi STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yshouseba_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycifrscl_text (
  bic_ycifrscl STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycifrscl_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycifrscl_text_all (
  bic_ycifrscl STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycifrscl_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ac_ledger_text (
  ac_ledger STRING,
  langu STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ac_ledger_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ac_ledger_text_all (
  ac_ledger STRING,
  langu STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ac_ledger_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_lo_sh_text (
  cfm_lo_sh STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_lo_sh_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_lo_sh_text_all (
  cfm_lo_sh STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_lo_sh_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycmagnpak_text (
  bic_ycmagnpak STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycmagnpak_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycmagnpak_text_all (
  bic_ycmagnpak STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycmagnpak_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_move_type_attr (
  move_type STRING,
  bic_ycmvtpbcf STRING,
  bic_ycsubmovt STRING,
  bic_ycngaapme STRING,
  bic_ycopen_cl STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_move_type_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_move_type_attr_all (
  move_type STRING,
  bic_ycmvtpbcf STRING,
  bic_ycsubmovt STRING,
  bic_ycngaapme STRING,
  bic_ycopen_cl STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_move_type_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_move_type_text (
  move_type STRING,
  langu STRING,
  txtsh STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_move_type_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_move_type_text_all (
  move_type STRING,
  langu STRING,
  txtsh STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_move_type_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysngacc_text (
  bic_ysngacc STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysngacc_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysngacc_text_all (
  bic_ysngacc STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysngacc_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycngaapme_text (
  bic_ycngaapme STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycngaapme_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycngaapme_text_all (
  bic_ycngaapme STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycngaapme_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yccompacc_attr (
  comp_code STRING,
  bic_yccompacc STRING,
  bic_ycaltacc STRING,
  bic_ycvatjust STRING,
  bic_ycacclerk STRING,
  bic_yccashtrs STRING,
  bic_ycclsgaap STRING,
  bic_ycclsdir STRING,
  bic_ycclusacc STRING,
  currency STRING,
  bic_ycoperfin STRING,
  bic_ycngaapme STRING,
  chrt_accts STRING,
  bic_ycexchdif STRING,
  bic_ycaltacc STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yccompacc_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yccompacc_attr_all (
  comp_code STRING,
  bic_yccompacc STRING,
  bic_ycaltacc STRING,
  bic_ycvatjust STRING,
  bic_ycacclerk STRING,
  bic_yccashtrs STRING,
  bic_ycclsgaap STRING,
  bic_ycclsdir STRING,
  bic_ycclusacc STRING,
  currency STRING,
  bic_ycoperfin STRING,
  bic_ycngaapme STRING,
  chrt_accts STRING,
  bic_ycexchdif STRING,
  bic_ycaltacc STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yccompacc_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_bp_is (
  bpartner STRING,
  ind_numsys STRING,
  ind_sec STRING,
  flgdefault STRING,
  recordmode STRING,
  flgdeleted STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_bp_is';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_bp_is_all (
  bpartner STRING,
  ind_numsys STRING,
  ind_sec STRING,
  flgdefault STRING,
  recordmode STRING,
  flgdeleted STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_bp_is';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_amtct_attr (
  cfm_amtct STRING,
  bic_yspcomp STRING,
  bic_yspcomp2 STRING,
  bic_yspchrule STRING,
  bic_yspccusg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_amtct_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_amtct_attr_all (
  cfm_amtct STRING,
  bic_yspcomp STRING,
  bic_yspcomp2 STRING,
  bic_yspchrule STRING,
  bic_yspccusg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_amtct_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_amtct_text (
  cfm_amtct STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_amtct_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_cfm_amtct_text_all (
  cfm_amtct STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_cfm_amtct_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi1_attr (
  comp_code STRING,
  bic_yspositi STRING,
  bic_zptsof_cd STRING,
  bic_zptsisp STRING,
  bic_zptsclisr STRING,
  bic_zptsasstp STRING,
  bic_ystypport STRING,
  co_area STRING,
  profit_ctr STRING,
  bic_ysasstmng STRING,
  bic_ysnatfund STRING,
  bic_ysporttyp STRING,
  bic_ysprtmose STRING,
  bic_zptispcod STRING,
  bic_ysaraport STRING,
  bic_zchstdty STRING,
  bic_zchsclisr STRING,
  bic_zchstckcd STRING,
  bic_ycinvport STRING,
  bic_ysdepocnc STRING,
  bic_zsdecover STRING,
  bic_ysaxaimcd STRING,
  bic_zbesassig STRING,
  bic_zbesactvt STRING,
  bic_zbesportg STRING,
  bic_zbesfcpc STRING,
  bic_zbesbrnch STRING,
  bic_zbescovr STRING,
  bic_zbesefngm STRING,
  bic_zbesefwtc STRING,
  country STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi1_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi1_attr_all (
  comp_code STRING,
  bic_yspositi STRING,
  bic_zptsof_cd STRING,
  bic_zptsisp STRING,
  bic_zptsclisr STRING,
  bic_zptsasstp STRING,
  bic_ystypport STRING,
  co_area STRING,
  profit_ctr STRING,
  bic_ysasstmng STRING,
  bic_ysnatfund STRING,
  bic_ysporttyp STRING,
  bic_ysprtmose STRING,
  bic_zptispcod STRING,
  bic_ysaraport STRING,
  bic_zchstdty STRING,
  bic_zchsclisr STRING,
  bic_zchstckcd STRING,
  bic_ycinvport STRING,
  bic_ysdepocnc STRING,
  bic_zsdecover STRING,
  bic_ysaxaimcd STRING,
  bic_zbesassig STRING,
  bic_zbesactvt STRING,
  bic_zbesportg STRING,
  bic_zbesfcpc STRING,
  bic_zbesbrnch STRING,
  bic_zbescovr STRING,
  bic_zbesefngm STRING,
  bic_zbesefwtc STRING,
  country STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi1_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi1_text (
  comp_code STRING,
  bic_yspositi STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi1_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi1_text_all (
  comp_code STRING,
  bic_yspositi STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi1_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi2_attr (
  comp_code STRING,
  bic_yspositi2 STRING,
  bic_ysprtmose STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi2_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi2_attr_all (
  comp_code STRING,
  bic_yspositi2 STRING,
  bic_ysprtmose STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi2_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi2_text (
  comp_code STRING,
  bic_yspositi2 STRING,
  langu STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi2_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yspositi2_text_all (
  comp_code STRING,
  bic_yspositi2 STRING,
  langu STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yspositi2_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysprsrc_attr (
  bic_ysprsrc STRING,
  bic_zptbascot STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysprsrc_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysprsrc_attr_all (
  bic_ysprsrc STRING,
  bic_zptbascot STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysprsrc_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysprsrc_text (
  bic_ysprsrc STRING,
  txtsh STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysprsrc_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysprsrc_text_all (
  bic_ysprsrc STRING,
  txtsh STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysprsrc_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysproduct_attr (
  fs_ctr_tp STRING,
  bic_yscompco STRING,
  bic_ysproduct STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  fs_prd_tp STRING,
  cfm_tra_tp STRING,
  bic_zchsedol STRING,
  bic_yscusip STRING,
  bic_zchaacat STRING,
  bic_zitcdeuro STRING,
  bic_zitbalsct STRING,
  bic_zitbllsti STRING,
  bic_zitindex2 STRING,
  bic_zptriskep STRING,
  bic_zptispcod STRING,
  bic_ysisin STRING,
  bic_ysreflidx STRING,
  bic_yscap DECIMAL(17,3),
  bic_ysfloor DECIMAL(17,3),
  bic_zptcic STRING,
  bic_ycexrate DECIMAL(38,10),
  bic_ysfdudate TIMESTAMP,
  bic_ysmktyeld DECIMAL(17,3),
  cfm_fd_tp STRING,
  bic_ysfmdate TIMESTAMP,
  bic_ysfundtyp STRING,
  bic_ysstropt DECIMAL(17,3),
  fs_trme_d TIMESTAMP,
  cfm_bd_cls STRING,
  cfm_fd_ct STRING,
  cfm_fd_pub STRING,
  cfm_sh_str STRING,
  cfm_sh_tp STRING,
  cfm_listed STRING,
  cfm_quotat STRING,
  cfm_ofct STRING,
  cfm_oppt STRING,
  cfm_setm STRING,
  cfm_pcid STRING,
  cfm_seid STRING,
  cfm_exty STRING,
  cfm_expd TIMESTAMP,
  cfm_ltrd TIMESTAMP,
  cfm_setd TIMESTAMP,
  factcal_id STRING,
  cfm_sidul STRING,
  cfm_pc_cur STRING,
  cfm_atick DECIMAL(17,2),
  cfm_itick DECIMAL(17,3),
  cfm_vtick DECIMAL(17,2),
  cfm_nomv DECIMAL(17,2),
  cfm_sunit DECIMAL(17,3),
  cfm_pind DECIMAL(17,2),
  cfm_bstr DECIMAL(17,2),
  cfm_pstr DECIMAL(17,3),
  cfm_sidxul STRING,
  cfm_iss_pr DECIMAL(17,3),
  cfm_issrte DECIMAL(17,3),
  cfm_el_id STRING,
  cfm_ec_id STRING,
  cfm_es_id STRING,
  cfm_nom_ci DECIMAL(17,3),
  cfm_fellw STRING,
  cfm_fd_vol DECIMAL(17,3),
  cfm_issprc DECIMAL(17,3),
  cfm_fgniv STRING,
  cfm_accum STRING,
  cfm_reivdc DECIMAL(17,3),
  cfm_nomtu DECIMAL(17,3),
  cfm_seclo STRING,
  cfm_issyld DECIMAL(17,3),
  fs_rfspr DECIMAL(17,3),
  cfm_vtepsh DECIMAL(17,3),
  cfm_xtrcap DECIMAL(17,3),
  cfm_prcidx STRING,
  cfm_rdpst STRING,
  cfm_shrout DECIMAL(17,3),
  cfm_ir DECIMAL(38,10),
  fs_icm STRING,
  fs_refir STRING,
  fs_ymeth STRING,
  cfm_ctyid STRING,
  unit STRING,
  cfm_cntsiz DECIMAL(17,3),
  cfm_betcty DECIMAL(17,3),
  cfm_bwtcty DECIMAL(17,3),
  cfm_sec_tp STRING,
  fs_rptyp STRING,
  bic_ysmoddurt DECIMAL(38,10),
  bic_ysncldate TIMESTAMP,
  bic_ysncpdate TIMESTAMP,
  fs_trms_d TIMESTAMP,
  cfm_quty STRING,
  bic_ysmacdurt DECIMAL(38,10),
  bic_ysdpbakn STRING,
  bic_ysmultflw STRING,
  bic_yssmltflw STRING,
  bic_ysmtstat STRING,
  bic_ystendund TIMESTAMP,
  bic_yststrund TIMESTAMP,
  fs_cvalcl STRING,
  bic_ysund STRING,
  cfm_lo_sh STRING,
  cfm_refiri STRING,
  cfm_refiro STRING,
  bic_ysissuer STRING,
  bic_ysexcode STRING,
  bic_zchvalrid STRING,
  bic_ysbuptcon STRING,
  cfm_tr_cur STRING,
  bic_yscontdat TIMESTAMP,
  fs_ddate TIMESTAMP,
  bic_ysmultspr DECIMAL(17,3),
  bic_ysaditspr DECIMAL(17,3),
  bic_yspayflta DECIMAL(17,3),
  bic_yspayfltb DECIMAL(17,3),
  bic_ysrecflta DECIMAL(17,3),
  bic_ysrecfltb DECIMAL(17,3),
  bic_ysreccap DECIMAL(17,3),
  bic_ysrecfloo DECIMAL(17,3),
  bic_yspaypfr DECIMAL(17,3),
  bic_yspayrest DECIMAL(17,3),
  bic_ysrecpfr DECIMAL(17,3),
  bic_yspayratc DECIMAL(17,3),
  bic_yspayref DECIMAL(17,3),
  bic_ysrecrest DECIMAL(17,3),
  bic_ysdivpayc STRING,
  bic_ysrecratc DECIMAL(17,3),
  bic_ysrecref DECIMAL(17,3),
  bic_ysaxainr STRING,
  bic_ysfitchr STRING,
  bic_ysmoodyr STRING,
  bic_yssandpr STRING,
  bic_ysotherr STRING,
  bic_ysaxar STRING,
  bic_yspaycap DECIMAL(17,3),
  bic_yspayfloo DECIMAL(17,3),
  bic_yslcpdate TIMESTAMP,
  bic_ys_soursy STRING,
  bic_ysstatus STRING,
  bic_ysnptdate TIMESTAMP,
  bic_ysoptiony STRING,
  bic_ysseniort STRING,
  bic_ysinstpcd STRING,
  bic_yasset_cl STRING,
  bic_ysissuert STRING,
  cfm_0021 DECIMAL(17,2),
  cfm_in_cur STRING,
  cfmp0030 DECIMAL(17,2),
  cfm_ou_cur STRING,
  cfmp0032 DECIMAL(17,2),
  bic_ysfrequen DECIMAL(17,3),
  bic_ysncalrat DECIMAL(17,3),
  bic_ysnputrat DECIMAL(17,3),
  bic_yscallrat DECIMAL(17,3),
  bic_ysputrat DECIMAL(17,3),
  bic_ysdalismf STRING,
  cfm_sec_cl STRING,
  bic_ysmatdat TIMESTAMP,
  cfm_charc STRING,
  cfm_in_ref STRING,
  bic_yscaldate TIMESTAMP,
  bic_ycondtype STRING,
  bic_ysciprate STRING,
  bic_yscoi_cur STRING,
  bic_yspaytime STRING,
  bic_yspaytype STRING,
  bic_ysrectype STRING,
  bic_ysorddate TIMESTAMP,
  bic_ysexpkey STRING,
  bic_ysembderi STRING,
  bic_yscirrate STRING,
  fs_rfsprin DECIMAL(17,3),
  fs_rfsprou DECIMAL(17,3),
  cfm_ir_in DECIMAL(17,3),
  cfm_ir_out DECIMAL(17,3),
  bic_ysstrikep DECIMAL(38,10),
  fs_effir STRING,
  cfm_assmt STRING,
  bic_ysfddate TIMESTAMP,
  bic_ysundtyp STRING,
  bic_ysfrstcpp STRING,
  bic_yslcurrrt DECIMAL(17,3),
  currency STRING,
  bic_ysnom DECIMAL(17,2),
  cfm_st_ct STRING,
  bic_ysunitsno DECIMAL(17,3),
  bic_ysexpdate TIMESTAMP,
  bic_ysidiflbp STRING,
  bic_yscondam DECIMAL(17,2),
  bic_ysaxrtdat TIMESTAMP,
  bic_ysfltprc STRING,
  bic_ysintgrt STRING,
  bic_ysopcvm DECIMAL(38,10),
  bic_yselgibl STRING,
  bic_ysaditmrg DECIMAL(38,10),
  bic_yscgfxfdt TIMESTAMP,
  bic_zsopcvmtp STRING,
  bic_zsamfclas STRING,
  bic_zsgarantt STRING,
  bic_zsmmobdt STRING,
  bic_zsgvcr332 STRING,
  bic_zstemisv STRING,
  bic_zshedgstr STRING,
  bic_zsfrgvcr3 STRING,
  bic_zsinflatn STRING,
  bic_zsallege STRING,
  bic_ysissuerf STRING,
  bic_ysabspcla STRING,
  fs_dimeth TIMESTAMP,
  cml_bnlst STRING,
  bic_ysunpdtp STRING,
  bic_ysfcpdate TIMESTAMP,
  bic_zsdedvno STRING,
  bic_zsdemw670 STRING,
  bic_zsdemw67 STRING,
  bic_zsdestkba STRING,
  bic_zsdedvuan STRING,
  bic_zsdetypba STRING,
  bic_zsdemspar STRING,
  bic_zsbloom STRING,
  bic_zsdesdepm STRING,
  bic_zsdeliqsp STRING,
  bic_ysoprdtp STRING,
  bic_zsdervind STRING,
  bic_zsdenotic STRING,
  bic_zsdeguaid STRING,
  bic_zsdecdo STRING,
  bic_zsdenpcal TIMESTAMP,
  bic_zsdenpput TIMESTAMP,
  bic_zsdegthal STRING,
  bic_zsdepbfnd STRING,
  bic_zsdemtsec STRING,
  bic_zsdelnsec STRING,
  bic_zsdespred DECIMAL(17,3),
  bic_zsdecolty STRING,
  bic_zsdescal TIMESTAMP,
  bic_zsdecrate DECIMAL(17,3),
  bic_zsdetaxcl STRING,
  bic_zsde_emtn STRING,
  bic_yslrmr STRING,
  bic_yslcsr STRING,
  bic_yslubsr STRING,
  bic_yslzkbr STRING,
  bic_ysrfhazul STRING,
  bic_zsisp_cla STRING,
  cfm_ex_ref STRING,
  bic_ysulparnr STRING,
  bic_zsdeesfon STRING,
  bic_zsdecorp STRING,
  bic_zsdemulmt STRING,
  bic_zsdenw673 STRING,
  bic_ysintfs STRING,
  bic_ysintfl STRING,
  contrstart TIMESTAMP,
  bic_ysperc_rt DECIMAL(38,10),
  fs_loan_tp STRING,
  bic_zbesaccac STRING,
  bic_zbesardti STRING,
  bic_zbesacomc STRING,
  bic_zbesocasc STRING,
  bic_zbesrefcd STRING,
  bic_zbesatc STRING,
  bic_zbesncdat TIMESTAMP,
  bic_zbesaincp DECIMAL(17,2),
  bic_zlusardti STRING,
  bic_zlusrefcd STRING,
  bic_zlusatc STRING,
  bic_zbesiuval DECIMAL(17,3),
  cfm_fwdprc DECIMAL(17,3),
  cfm_spotrt DECIMAL(17,3),
  bic_zbesswtyp STRING,
  cfmp0640 DECIMAL(17,2),
  loc_currcy STRING,
  cfm_0642 DECIMAL(17,2),
  bic_zbesmfltp STRING,
  bic_zbesoutnu DECIMAL(17,3),
  bic_zbesloang STRING,
  bic_zlusloang STRING,
  bic_zsdecntry STRING,
  bic_yslagency STRING,
  bic_yspoolfac DECIMAL(38,10),
  bic_yscicland STRING,
  bic_yscicacls STRING,
  bic_ysncpdout TIMESTAMP)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysproduct_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysproduct_attr_all (
  fs_ctr_tp STRING,
  bic_yscompco STRING,
  bic_ysproduct STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  fs_prd_tp STRING,
  cfm_tra_tp STRING,
  bic_zchsedol STRING,
  bic_yscusip STRING,
  bic_zchaacat STRING,
  bic_zitcdeuro STRING,
  bic_zitbalsct STRING,
  bic_zitbllsti STRING,
  bic_zitindex2 STRING,
  bic_zptriskep STRING,
  bic_zptispcod STRING,
  bic_ysisin STRING,
  bic_ysreflidx STRING,
  bic_yscap DECIMAL(17,3),
  bic_ysfloor DECIMAL(17,3),
  bic_zptcic STRING,
  bic_ycexrate DECIMAL(38,10),
  bic_ysfdudate TIMESTAMP,
  bic_ysmktyeld DECIMAL(17,3),
  cfm_fd_tp STRING,
  bic_ysfmdate TIMESTAMP,
  bic_ysfundtyp STRING,
  bic_ysstropt DECIMAL(17,3),
  fs_trme_d TIMESTAMP,
  cfm_bd_cls STRING,
  cfm_fd_ct STRING,
  cfm_fd_pub STRING,
  cfm_sh_str STRING,
  cfm_sh_tp STRING,
  cfm_listed STRING,
  cfm_quotat STRING,
  cfm_ofct STRING,
  cfm_oppt STRING,
  cfm_setm STRING,
  cfm_pcid STRING,
  cfm_seid STRING,
  cfm_exty STRING,
  cfm_expd TIMESTAMP,
  cfm_ltrd TIMESTAMP,
  cfm_setd TIMESTAMP,
  factcal_id STRING,
  cfm_sidul STRING,
  cfm_pc_cur STRING,
  cfm_atick DECIMAL(17,2),
  cfm_itick DECIMAL(17,3),
  cfm_vtick DECIMAL(17,2),
  cfm_nomv DECIMAL(17,2),
  cfm_sunit DECIMAL(17,3),
  cfm_pind DECIMAL(17,2),
  cfm_bstr DECIMAL(17,2),
  cfm_pstr DECIMAL(17,3),
  cfm_sidxul STRING,
  cfm_iss_pr DECIMAL(17,3),
  cfm_issrte DECIMAL(17,3),
  cfm_el_id STRING,
  cfm_ec_id STRING,
  cfm_es_id STRING,
  cfm_nom_ci DECIMAL(17,3),
  cfm_fellw STRING,
  cfm_fd_vol DECIMAL(17,3),
  cfm_issprc DECIMAL(17,3),
  cfm_fgniv STRING,
  cfm_accum STRING,
  cfm_reivdc DECIMAL(17,3),
  cfm_nomtu DECIMAL(17,3),
  cfm_seclo STRING,
  cfm_issyld DECIMAL(17,3),
  fs_rfspr DECIMAL(17,3),
  cfm_vtepsh DECIMAL(17,3),
  cfm_xtrcap DECIMAL(17,3),
  cfm_prcidx STRING,
  cfm_rdpst STRING,
  cfm_shrout DECIMAL(17,3),
  cfm_ir DECIMAL(38,10),
  fs_icm STRING,
  fs_refir STRING,
  fs_ymeth STRING,
  cfm_ctyid STRING,
  unit STRING,
  cfm_cntsiz DECIMAL(17,3),
  cfm_betcty DECIMAL(17,3),
  cfm_bwtcty DECIMAL(17,3),
  cfm_sec_tp STRING,
  fs_rptyp STRING,
  bic_ysmoddurt DECIMAL(38,10),
  bic_ysncldate TIMESTAMP,
  bic_ysncpdate TIMESTAMP,
  fs_trms_d TIMESTAMP,
  cfm_quty STRING,
  bic_ysmacdurt DECIMAL(38,10),
  bic_ysdpbakn STRING,
  bic_ysmultflw STRING,
  bic_yssmltflw STRING,
  bic_ysmtstat STRING,
  bic_ystendund TIMESTAMP,
  bic_yststrund TIMESTAMP,
  fs_cvalcl STRING,
  bic_ysund STRING,
  cfm_lo_sh STRING,
  cfm_refiri STRING,
  cfm_refiro STRING,
  bic_ysissuer STRING,
  bic_ysexcode STRING,
  bic_zchvalrid STRING,
  bic_ysbuptcon STRING,
  cfm_tr_cur STRING,
  bic_yscontdat TIMESTAMP,
  fs_ddate TIMESTAMP,
  bic_ysmultspr DECIMAL(17,3),
  bic_ysaditspr DECIMAL(17,3),
  bic_yspayflta DECIMAL(17,3),
  bic_yspayfltb DECIMAL(17,3),
  bic_ysrecflta DECIMAL(17,3),
  bic_ysrecfltb DECIMAL(17,3),
  bic_ysreccap DECIMAL(17,3),
  bic_ysrecfloo DECIMAL(17,3),
  bic_yspaypfr DECIMAL(17,3),
  bic_yspayrest DECIMAL(17,3),
  bic_ysrecpfr DECIMAL(17,3),
  bic_yspayratc DECIMAL(17,3),
  bic_yspayref DECIMAL(17,3),
  bic_ysrecrest DECIMAL(17,3),
  bic_ysdivpayc STRING,
  bic_ysrecratc DECIMAL(17,3),
  bic_ysrecref DECIMAL(17,3),
  bic_ysaxainr STRING,
  bic_ysfitchr STRING,
  bic_ysmoodyr STRING,
  bic_yssandpr STRING,
  bic_ysotherr STRING,
  bic_ysaxar STRING,
  bic_yspaycap DECIMAL(17,3),
  bic_yspayfloo DECIMAL(17,3),
  bic_yslcpdate TIMESTAMP,
  bic_ys_soursy STRING,
  bic_ysstatus STRING,
  bic_ysnptdate TIMESTAMP,
  bic_ysoptiony STRING,
  bic_ysseniort STRING,
  bic_ysinstpcd STRING,
  bic_yasset_cl STRING,
  bic_ysissuert STRING,
  cfm_0021 DECIMAL(17,2),
  cfm_in_cur STRING,
  cfmp0030 DECIMAL(17,2),
  cfm_ou_cur STRING,
  cfmp0032 DECIMAL(17,2),
  bic_ysfrequen DECIMAL(17,3),
  bic_ysncalrat DECIMAL(17,3),
  bic_ysnputrat DECIMAL(17,3),
  bic_yscallrat DECIMAL(17,3),
  bic_ysputrat DECIMAL(17,3),
  bic_ysdalismf STRING,
  cfm_sec_cl STRING,
  bic_ysmatdat TIMESTAMP,
  cfm_charc STRING,
  cfm_in_ref STRING,
  bic_yscaldate TIMESTAMP,
  bic_ycondtype STRING,
  bic_ysciprate STRING,
  bic_yscoi_cur STRING,
  bic_yspaytime STRING,
  bic_yspaytype STRING,
  bic_ysrectype STRING,
  bic_ysorddate TIMESTAMP,
  bic_ysexpkey STRING,
  bic_ysembderi STRING,
  bic_yscirrate STRING,
  fs_rfsprin DECIMAL(17,3),
  fs_rfsprou DECIMAL(17,3),
  cfm_ir_in DECIMAL(17,3),
  cfm_ir_out DECIMAL(17,3),
  bic_ysstrikep DECIMAL(38,10),
  fs_effir STRING,
  cfm_assmt STRING,
  bic_ysfddate TIMESTAMP,
  bic_ysundtyp STRING,
  bic_ysfrstcpp STRING,
  bic_yslcurrrt DECIMAL(17,3),
  currency STRING,
  bic_ysnom DECIMAL(17,2),
  cfm_st_ct STRING,
  bic_ysunitsno DECIMAL(17,3),
  bic_ysexpdate TIMESTAMP,
  bic_ysidiflbp STRING,
  bic_yscondam DECIMAL(17,2),
  bic_ysaxrtdat TIMESTAMP,
  bic_ysfltprc STRING,
  bic_ysintgrt STRING,
  bic_ysopcvm DECIMAL(38,10),
  bic_yselgibl STRING,
  bic_ysaditmrg DECIMAL(38,10),
  bic_yscgfxfdt TIMESTAMP,
  bic_zsopcvmtp STRING,
  bic_zsamfclas STRING,
  bic_zsgarantt STRING,
  bic_zsmmobdt STRING,
  bic_zsgvcr332 STRING,
  bic_zstemisv STRING,
  bic_zshedgstr STRING,
  bic_zsfrgvcr3 STRING,
  bic_zsinflatn STRING,
  bic_zsallege STRING,
  bic_ysissuerf STRING,
  bic_ysabspcla STRING,
  fs_dimeth TIMESTAMP,
  cml_bnlst STRING,
  bic_ysunpdtp STRING,
  bic_ysfcpdate TIMESTAMP,
  bic_zsdedvno STRING,
  bic_zsdemw670 STRING,
  bic_zsdemw67 STRING,
  bic_zsdestkba STRING,
  bic_zsdedvuan STRING,
  bic_zsdetypba STRING,
  bic_zsdemspar STRING,
  bic_zsbloom STRING,
  bic_zsdesdepm STRING,
  bic_zsdeliqsp STRING,
  bic_ysoprdtp STRING,
  bic_zsdervind STRING,
  bic_zsdenotic STRING,
  bic_zsdeguaid STRING,
  bic_zsdecdo STRING,
  bic_zsdenpcal TIMESTAMP,
  bic_zsdenpput TIMESTAMP,
  bic_zsdegthal STRING,
  bic_zsdepbfnd STRING,
  bic_zsdemtsec STRING,
  bic_zsdelnsec STRING,
  bic_zsdespred DECIMAL(17,3),
  bic_zsdecolty STRING,
  bic_zsdescal TIMESTAMP,
  bic_zsdecrate DECIMAL(17,3),
  bic_zsdetaxcl STRING,
  bic_zsde_emtn STRING,
  bic_yslrmr STRING,
  bic_yslcsr STRING,
  bic_yslubsr STRING,
  bic_yslzkbr STRING,
  bic_ysrfhazul STRING,
  bic_zsisp_cla STRING,
  cfm_ex_ref STRING,
  bic_ysulparnr STRING,
  bic_zsdeesfon STRING,
  bic_zsdecorp STRING,
  bic_zsdemulmt STRING,
  bic_zsdenw673 STRING,
  bic_ysintfs STRING,
  bic_ysintfl STRING,
  contrstart TIMESTAMP,
  bic_ysperc_rt DECIMAL(38,10),
  fs_loan_tp STRING,
  bic_zbesaccac STRING,
  bic_zbesardti STRING,
  bic_zbesacomc STRING,
  bic_zbesocasc STRING,
  bic_zbesrefcd STRING,
  bic_zbesatc STRING,
  bic_zbesncdat TIMESTAMP,
  bic_zbesaincp DECIMAL(17,2),
  bic_zlusardti STRING,
  bic_zlusrefcd STRING,
  bic_zlusatc STRING,
  bic_zbesiuval DECIMAL(17,3),
  cfm_fwdprc DECIMAL(17,3),
  cfm_spotrt DECIMAL(17,3),
  bic_zbesswtyp STRING,
  cfmp0640 DECIMAL(17,2),
  loc_currcy STRING,
  cfm_0642 DECIMAL(17,2),
  bic_zbesmfltp STRING,
  bic_zbesoutnu DECIMAL(17,3),
  bic_zbesloang STRING,
  bic_zlusloang STRING,
  bic_zsdecntry STRING,
  bic_yslagency STRING,
  bic_yspoolfac DECIMAL(38,10),
  bic_yscicland STRING,
  bic_yscicacls STRING,
  bic_ysncpdout TIMESTAMP)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysproduct_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysproduct_text (
  fs_ctr_tp STRING,
  bic_yscompco STRING,
  bic_ysproduct STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysproduct_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysproduct_text_all (
  fs_ctr_tp STRING,
  bic_yscompco STRING,
  bic_ysproduct STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysproduct_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_sec_ct_attr (
  fs_sec_ct STRING,
  fs_ctr_tp STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_sec_ct_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_sec_ct_attr_all (
  fs_sec_ct STRING,
  fs_ctr_tp STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_sec_ct_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_sec_ct_text (
  fs_sec_ct STRING,
  langu STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_sec_ct_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_sec_ct_text_all (
  fs_sec_ct STRING,
  langu STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_sec_ct_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysprdtyp_text (
  bic_ys_soursy STRING,
  bic_ysprdtyp STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysprdtyp_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysprdtyp_text_all (
  bic_ys_soursy STRING,
  bic_ysprdtyp STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysprdtyp_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_profit_ctr_attr (
  co_area STRING,
  profit_ctr STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  logsys STRING,
  resp_pers STRING,
  soursystem STRING,
  segment STRING,
  country STRING,
  bic_ycfps STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_profit_ctr_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_profit_ctr_attr_all (
  co_area STRING,
  profit_ctr STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  logsys STRING,
  resp_pers STRING,
  soursystem STRING,
  segment STRING,
  country STRING,
  bic_ycfps STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_profit_ctr_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_profit_ctr_text (
  co_area STRING,
  profit_ctr STRING,
  langu STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  txtsh STRING,
  txtmd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_profit_ctr_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_profit_ctr_text_all (
  co_area STRING,
  profit_ctr STRING,
  langu STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  txtsh STRING,
  txtmd STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_profit_ctr_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosorft (
  comp_code STRING,
  validfrom TIMESTAMP,
  cfm_inst STRING,
  bic_ysfinantr STRING,
  fs_ctr_tp STRING,
  cfm_secrat STRING,
  recordmode STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosorft';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosorft_all (
  comp_code STRING,
  validfrom TIMESTAMP,
  cfm_inst STRING,
  bic_ysfinantr STRING,
  fs_ctr_tp STRING,
  cfm_secrat STRING,
  recordmode STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosorft';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosorbp (
  validto TIMESTAMP,
  fp_rtgrmet STRING,
  fp_rtcrit STRING,
  bic_ysbpartnr STRING,
  recordmode STRING,
  validfrom TIMESTAMP,
  fp_rtpermt STRING,
  fp_rtgrade STRING,
  fp_rttendy STRING,
  fp_rtdwhen TIMESTAMP)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosorbp';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosorbp_all (
  validto TIMESTAMP,
  fp_rtgrmet STRING,
  fp_rtcrit STRING,
  bic_ysbpartnr STRING,
  recordmode STRING,
  validfrom TIMESTAMP,
  fp_rtpermt STRING,
  fp_rtgrade STRING,
  fp_rttendy STRING,
  fp_rtdwhen TIMESTAMP)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosorbp';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosorse (
  bic_yssecftd STRING,
  cfm_inst STRING,
  validto TIMESTAMP,
  cfm_secrat STRING,
  recordmode STRING,
  comp_code STRING,
  validfrom TIMESTAMP)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosorse';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ycosorse_all (
  bic_yssecftd STRING,
  cfm_inst STRING,
  validto TIMESTAMP,
  cfm_secrat STRING,
  recordmode STRING,
  comp_code STRING,
  validfrom TIMESTAMP)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ycosorse';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysbpartnr_attr (
  bic_ysbpartnr STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  ind_code STRING,
  country STRING,
  postal_cd STRING,
  addr_short STRING,
  city STRING,
  currency STRING,
  ind_numsys STRING,
  ind_sec STRING,
  ind_sector STRING,
  bic_ysulparnr STRING,
  bic_ysfitchrp STRING,
  bic_ysmoodyrp STRING,
  bic_yssandprp STRING,
  bic_ysaxainrp STRING,
  bic_ysotherrp STRING,
  bic_ysaxarp STRING,
  bic_ysindcode STRING,
  bic_ysindgrp STRING,
  bic_ysiss_sec STRING,
  bic_yscisvnaz STRING,
  bic_ysnosbwav STRING,
  bic_ysnosecbr STRING,
  bic_ysfdnaut STRING,
  bic_ysfisctry STRING,
  bic_ysconsmet STRING,
  bic_zptbpisp STRING,
  bic_ysorgrshp STRING,
  fg_idtp STRING,
  company STRING,
  fs_co_rel STRING,
  bic_zsrisocde STRING,
  bic_ysbpind2 STRING,
  bic_ysulpcntr STRING,
  bic_yslgalfrm STRING,
  bic_zsdeboent STRING,
  bic_zsdebornr STRING,
  bic_zsdemmlon STRING,
  bic_yslgalent STRING,
  bic_zsdequota STRING,
  bic_zsdepar_a STRING,
  bic_zsdedegrp STRING,
  bic_zsdeidnum STRING,
  bic_zsderevdt TIMESTAMP,
  bic_zsdegba STRING,
  bic_zsdeupnum STRING,
  bic_zbescompn STRING,
  house_num STRING,
  bic_yscoaddr STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysbpartnr_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysbpartnr_attr_all (
  bic_ysbpartnr STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  ind_code STRING,
  country STRING,
  postal_cd STRING,
  addr_short STRING,
  city STRING,
  currency STRING,
  ind_numsys STRING,
  ind_sec STRING,
  ind_sector STRING,
  bic_ysulparnr STRING,
  bic_ysfitchrp STRING,
  bic_ysmoodyrp STRING,
  bic_yssandprp STRING,
  bic_ysaxainrp STRING,
  bic_ysotherrp STRING,
  bic_ysaxarp STRING,
  bic_ysindcode STRING,
  bic_ysindgrp STRING,
  bic_ysiss_sec STRING,
  bic_yscisvnaz STRING,
  bic_ysnosbwav STRING,
  bic_ysnosecbr STRING,
  bic_ysfdnaut STRING,
  bic_ysfisctry STRING,
  bic_ysconsmet STRING,
  bic_zptbpisp STRING,
  bic_ysorgrshp STRING,
  fg_idtp STRING,
  company STRING,
  fs_co_rel STRING,
  bic_zsrisocde STRING,
  bic_ysbpind2 STRING,
  bic_ysulpcntr STRING,
  bic_yslgalfrm STRING,
  bic_zsdeboent STRING,
  bic_zsdebornr STRING,
  bic_zsdemmlon STRING,
  bic_yslgalent STRING,
  bic_zsdequota STRING,
  bic_zsdepar_a STRING,
  bic_zsdedegrp STRING,
  bic_zsdeidnum STRING,
  bic_zsderevdt TIMESTAMP,
  bic_zsdegba STRING,
  bic_zsdeupnum STRING,
  bic_zbescompn STRING,
  house_num STRING,
  bic_yscoaddr STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysbpartnr_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysbpartnr_text (
  bic_ysbpartnr STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysbpartnr_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_ysbpartnr_text_all (
  bic_ysbpartnr STRING,
  langu STRING,
  txtsh STRING,
  txtmd STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_ysbpartnr_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yssecftd_attr (
  bic_yssecftd STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  cfm_bp_iss STRING,
  cfm_pc_cur STRING,
  cfm_sec_cl STRING,
  fs_prd_tp STRING,
  fs_sec_ct STRING,
  fs_trms_d TIMESTAMP,
  fs_trme_d TIMESTAMP,
  cfm_secrat STRING,
  cfm_sec_tp STRING,
  cfm_bd_cls STRING,
  cfm_st_ct STRING,
  cfm_st_frm STRING,
  cfm_fd_ct STRING,
  cfm_fd_tp STRING,
  cfm_fd_pub STRING,
  cfm_sh_str STRING,
  cfm_sh_tp STRING,
  cfm_listed STRING,
  cfm_quotat STRING,
  cfm_ofct STRING,
  cfm_oppt STRING,
  cfm_setm STRING,
  cfm_quty STRING,
  cfm_pcid STRING,
  cfm_seid STRING,
  cfm_exty STRING,
  cfm_expd TIMESTAMP,
  cfm_ltrd TIMESTAMP,
  cfm_setd TIMESTAMP,
  factcal_id STRING,
  fs_ddate TIMESTAMP,
  cfm_sidul STRING,
  cfm_atick DECIMAL(17,2),
  cfm_itick DECIMAL(17,3),
  cfm_vtick DECIMAL(17,2),
  cfm_nomv DECIMAL(17,2),
  cfm_sunit DECIMAL(17,3),
  cfm_pind DECIMAL(17,2),
  cfm_bstr DECIMAL(17,2),
  cfm_pstr DECIMAL(17,3),
  cfm_sidxul STRING,
  cfm_iss_pr DECIMAL(17,3),
  cfm_issrte DECIMAL(17,3),
  cfm_el_id STRING,
  cfm_ec_id STRING,
  cfm_es_id STRING,
  cfm_nom_ci DECIMAL(17,3),
  cfm_fellw STRING,
  cfm_fd_vol DECIMAL(17,3),
  cfm_issprc DECIMAL(17,3),
  cfm_fgniv STRING,
  cfm_accum STRING,
  cfm_reivdc DECIMAL(17,3),
  cfm_nomtu DECIMAL(17,3),
  cfm_seclo STRING,
  cfm_issyld DECIMAL(17,3),
  fs_rfspr DECIMAL(17,3),
  cfm_vtepsh DECIMAL(17,3),
  cfm_xtrcap DECIMAL(17,3),
  cfm_prcidx STRING,
  cfm_rdpst STRING,
  cfm_shrout DECIMAL(17,3),
  cfm_ir DECIMAL(38,10),
  fs_icm STRING,
  fs_refir STRING,
  fs_ymeth STRING,
  cfm_ctyid STRING,
  unit STRING,
  cfm_cntsiz DECIMAL(17,3),
  cfm_betcty DECIMAL(17,3),
  cfm_bwtcty DECIMAL(17,3),
  bic_ysisin STRING,
  bic_yslcpdate TIMESTAMP,
  bic_ysncldate TIMESTAMP,
  bic_ysncpdate TIMESTAMP,
  bic_zchaacat STRING,
  bic_zchsedol STRING,
  bic_zchvalrid STRING,
  bic_zitbalsct STRING,
  bic_zitbllsti STRING,
  bic_zitcdeuro STRING,
  bic_zitindex2 STRING,
  bic_ysembderi STRING,
  bic_zittprate STRING,
  bic_ysmacdurt DECIMAL(38,10),
  bic_ysmoddurt DECIMAL(38,10),
  bic_ysrepagfl STRING,
  bic_yscap DECIMAL(17,3),
  bic_ysfloor DECIMAL(17,3),
  bic_ysmultspr DECIMAL(17,3),
  bic_ysaditspr DECIMAL(17,3),
  bic_ysstropt DECIMAL(17,3),
  bic_zitcodpbr STRING,
  bic_ycexrate DECIMAL(38,10),
  bic_ysexcode STRING,
  bic_ysissclas STRING,
  bic_ysissuer STRING,
  bic_ysdivpayc STRING,
  fs_rptyp STRING,
  bic_ysdpbakn STRING,
  bic_ysmktyeld DECIMAL(17,3),
  fs_ctr_tp STRING,
  bic_ysncalrat DECIMAL(17,3),
  bic_ysnputrat DECIMAL(17,3),
  bic_ysputrat DECIMAL(17,3),
  bic_yscallrat DECIMAL(17,3),
  bic_yasset_cl STRING,
  bic_ysinstpcd STRING,
  bic_ysfrequen DECIMAL(17,3),
  bic_ysseniort STRING,
  bic_ysdalismf STRING,
  bic_yscusip STRING,
  bic_ysoptiony STRING,
  bic_ysissuert STRING,
  bic_ysmatdat TIMESTAMP,
  bic_ysnptdate TIMESTAMP,
  bic_ysreflidx STRING,
  bic_yscaldate TIMESTAMP,
  bic_zptispcod STRING,
  bic_ycondtype STRING,
  bic_ysfdudate TIMESTAMP,
  bic_ysciprate STRING,
  bic_yscoi_cur STRING,
  bic_yscirrate STRING,
  bic_zptcic STRING,
  bic_ysfrstcpp STRING,
  bic_ysidiflbp STRING,
  bic_yscondam DECIMAL(17,2),
  bic_ysfltprc STRING,
  bic_ysopcvm DECIMAL(38,10),
  bic_yselgibl STRING,
  bic_ysaditmrg DECIMAL(38,10),
  bic_yscgfxfdt TIMESTAMP,
  bic_ysintgrt STRING,
  bic_zsopcvmtp STRING,
  bic_zsamfclas STRING,
  bic_zsgarantt STRING,
  bic_zsmmobdt STRING,
  bic_zsgvcr332 STRING,
  bic_zstemisv STRING,
  bic_zsallege STRING,
  fs_dimeth TIMESTAMP,
  cml_bnlst STRING,
  bic_zsbloom STRING,
  bic_ysfcpdate TIMESTAMP,
  bic_zsdesdepm STRING,
  bic_ys_soursy STRING,
  bic_ysoprdtp STRING,
  bic_zsdervind STRING,
  bic_zsdenotic STRING,
  bic_zsdeguaid STRING,
  bic_zsdecdo STRING,
  bic_zsdenpcal TIMESTAMP,
  bic_zsdenpput TIMESTAMP,
  bic_zsdegthal STRING,
  bic_zsdepbfnd STRING,
  bic_zsdemtsec STRING,
  bic_zsdelnsec STRING,
  bic_zsdespred DECIMAL(17,3),
  bic_zsdecolty STRING,
  bic_zsdescal TIMESTAMP,
  bic_zsdecrate DECIMAL(17,3),
  bic_zsdetaxcl STRING,
  bic_zsde_emtn STRING,
  bic_ysabspcla STRING,
  bic_zsisp_cla STRING,
  bic_zsdeesfon STRING,
  bic_zsdecorp STRING,
  bic_zsdemulmt STRING,
  bic_zsdenw673 STRING,
  bic_zbesaccac STRING,
  bic_zbesardti STRING,
  bic_zbesacomc STRING,
  bic_zbesocasc STRING,
  bic_zbesrefcd STRING,
  bic_zbesatc STRING,
  bic_zlusardti STRING,
  bic_zlusrefcd STRING,
  bic_zlusatc STRING,
  bic_zbesloang STRING,
  bic_zlusloang STRING,
  bic_yscicland STRING,
  bic_yscicacls STRING,
  bic_ysidcode STRING,
  bic_ysidcodtp STRING,
  bic_ysric STRING,
  bic_ysfdnaut STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yssecftd_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yssecftd_attr_all (
  bic_yssecftd STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  cfm_bp_iss STRING,
  cfm_pc_cur STRING,
  cfm_sec_cl STRING,
  fs_prd_tp STRING,
  fs_sec_ct STRING,
  fs_trms_d TIMESTAMP,
  fs_trme_d TIMESTAMP,
  cfm_secrat STRING,
  cfm_sec_tp STRING,
  cfm_bd_cls STRING,
  cfm_st_ct STRING,
  cfm_st_frm STRING,
  cfm_fd_ct STRING,
  cfm_fd_tp STRING,
  cfm_fd_pub STRING,
  cfm_sh_str STRING,
  cfm_sh_tp STRING,
  cfm_listed STRING,
  cfm_quotat STRING,
  cfm_ofct STRING,
  cfm_oppt STRING,
  cfm_setm STRING,
  cfm_quty STRING,
  cfm_pcid STRING,
  cfm_seid STRING,
  cfm_exty STRING,
  cfm_expd TIMESTAMP,
  cfm_ltrd TIMESTAMP,
  cfm_setd TIMESTAMP,
  factcal_id STRING,
  fs_ddate TIMESTAMP,
  cfm_sidul STRING,
  cfm_atick DECIMAL(17,2),
  cfm_itick DECIMAL(17,3),
  cfm_vtick DECIMAL(17,2),
  cfm_nomv DECIMAL(17,2),
  cfm_sunit DECIMAL(17,3),
  cfm_pind DECIMAL(17,2),
  cfm_bstr DECIMAL(17,2),
  cfm_pstr DECIMAL(17,3),
  cfm_sidxul STRING,
  cfm_iss_pr DECIMAL(17,3),
  cfm_issrte DECIMAL(17,3),
  cfm_el_id STRING,
  cfm_ec_id STRING,
  cfm_es_id STRING,
  cfm_nom_ci DECIMAL(17,3),
  cfm_fellw STRING,
  cfm_fd_vol DECIMAL(17,3),
  cfm_issprc DECIMAL(17,3),
  cfm_fgniv STRING,
  cfm_accum STRING,
  cfm_reivdc DECIMAL(17,3),
  cfm_nomtu DECIMAL(17,3),
  cfm_seclo STRING,
  cfm_issyld DECIMAL(17,3),
  fs_rfspr DECIMAL(17,3),
  cfm_vtepsh DECIMAL(17,3),
  cfm_xtrcap DECIMAL(17,3),
  cfm_prcidx STRING,
  cfm_rdpst STRING,
  cfm_shrout DECIMAL(17,3),
  cfm_ir DECIMAL(38,10),
  fs_icm STRING,
  fs_refir STRING,
  fs_ymeth STRING,
  cfm_ctyid STRING,
  unit STRING,
  cfm_cntsiz DECIMAL(17,3),
  cfm_betcty DECIMAL(17,3),
  cfm_bwtcty DECIMAL(17,3),
  bic_ysisin STRING,
  bic_yslcpdate TIMESTAMP,
  bic_ysncldate TIMESTAMP,
  bic_ysncpdate TIMESTAMP,
  bic_zchaacat STRING,
  bic_zchsedol STRING,
  bic_zchvalrid STRING,
  bic_zitbalsct STRING,
  bic_zitbllsti STRING,
  bic_zitcdeuro STRING,
  bic_zitindex2 STRING,
  bic_ysembderi STRING,
  bic_zittprate STRING,
  bic_ysmacdurt DECIMAL(38,10),
  bic_ysmoddurt DECIMAL(38,10),
  bic_ysrepagfl STRING,
  bic_yscap DECIMAL(17,3),
  bic_ysfloor DECIMAL(17,3),
  bic_ysmultspr DECIMAL(17,3),
  bic_ysaditspr DECIMAL(17,3),
  bic_ysstropt DECIMAL(17,3),
  bic_zitcodpbr STRING,
  bic_ycexrate DECIMAL(38,10),
  bic_ysexcode STRING,
  bic_ysissclas STRING,
  bic_ysissuer STRING,
  bic_ysdivpayc STRING,
  fs_rptyp STRING,
  bic_ysdpbakn STRING,
  bic_ysmktyeld DECIMAL(17,3),
  fs_ctr_tp STRING,
  bic_ysncalrat DECIMAL(17,3),
  bic_ysnputrat DECIMAL(17,3),
  bic_ysputrat DECIMAL(17,3),
  bic_yscallrat DECIMAL(17,3),
  bic_yasset_cl STRING,
  bic_ysinstpcd STRING,
  bic_ysfrequen DECIMAL(17,3),
  bic_ysseniort STRING,
  bic_ysdalismf STRING,
  bic_yscusip STRING,
  bic_ysoptiony STRING,
  bic_ysissuert STRING,
  bic_ysmatdat TIMESTAMP,
  bic_ysnptdate TIMESTAMP,
  bic_ysreflidx STRING,
  bic_yscaldate TIMESTAMP,
  bic_zptispcod STRING,
  bic_ycondtype STRING,
  bic_ysfdudate TIMESTAMP,
  bic_ysciprate STRING,
  bic_yscoi_cur STRING,
  bic_yscirrate STRING,
  bic_zptcic STRING,
  bic_ysfrstcpp STRING,
  bic_ysidiflbp STRING,
  bic_yscondam DECIMAL(17,2),
  bic_ysfltprc STRING,
  bic_ysopcvm DECIMAL(38,10),
  bic_yselgibl STRING,
  bic_ysaditmrg DECIMAL(38,10),
  bic_yscgfxfdt TIMESTAMP,
  bic_ysintgrt STRING,
  bic_zsopcvmtp STRING,
  bic_zsamfclas STRING,
  bic_zsgarantt STRING,
  bic_zsmmobdt STRING,
  bic_zsgvcr332 STRING,
  bic_zstemisv STRING,
  bic_zsallege STRING,
  fs_dimeth TIMESTAMP,
  cml_bnlst STRING,
  bic_zsbloom STRING,
  bic_ysfcpdate TIMESTAMP,
  bic_zsdesdepm STRING,
  bic_ys_soursy STRING,
  bic_ysoprdtp STRING,
  bic_zsdervind STRING,
  bic_zsdenotic STRING,
  bic_zsdeguaid STRING,
  bic_zsdecdo STRING,
  bic_zsdenpcal TIMESTAMP,
  bic_zsdenpput TIMESTAMP,
  bic_zsdegthal STRING,
  bic_zsdepbfnd STRING,
  bic_zsdemtsec STRING,
  bic_zsdelnsec STRING,
  bic_zsdespred DECIMAL(17,3),
  bic_zsdecolty STRING,
  bic_zsdescal TIMESTAMP,
  bic_zsdecrate DECIMAL(17,3),
  bic_zsdetaxcl STRING,
  bic_zsde_emtn STRING,
  bic_ysabspcla STRING,
  bic_zsisp_cla STRING,
  bic_zsdeesfon STRING,
  bic_zsdecorp STRING,
  bic_zsdemulmt STRING,
  bic_zsdenw673 STRING,
  bic_zbesaccac STRING,
  bic_zbesardti STRING,
  bic_zbesacomc STRING,
  bic_zbesocasc STRING,
  bic_zbesrefcd STRING,
  bic_zbesatc STRING,
  bic_zlusardti STRING,
  bic_zlusrefcd STRING,
  bic_zlusatc STRING,
  bic_zbesloang STRING,
  bic_zlusloang STRING,
  bic_yscicland STRING,
  bic_yscicacls STRING,
  bic_ysidcode STRING,
  bic_ysidcodtp STRING,
  bic_ysric STRING,
  bic_ysfdnaut STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yssecftd_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yssecftd_text (
  bic_yssecftd STRING,
  txtsh STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yssecftd_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yssecftd_text_all (
  bic_yssecftd STRING,
  txtsh STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yssecftd_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_segment_text (
  segment STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_segment_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_segment_text_all (
  segment STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_segment_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yssrprod_attr (
  fs_ctr_tp STRING,
  comp_code STRING,
  bic_yspositi STRING,
  bic_yscompco STRING,
  bic_ysproduct STRING,
  bic_yssrprod STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_zsdeseqnb STRING,
  bic_zsdecovar STRING,
  fs_sec_ct STRING,
  bic_ys_soursy STRING,
  bic_ysprdtyp STRING,
  cfm_sec_ac STRING,
  bic_zsdeacgrp STRING,
  bic_zsdedvno STRING,
  bic_zsdedvuan STRING,
  bic_zsdem7_0 STRING,
  bic_zsdem7_02 STRING,
  bic_zsdem7_03 STRING,
  bic_zsdem7_04 STRING,
  bic_zsdemspar STRING,
  bic_zsdemw_0 STRING,
  bic_zsdemw_02 STRING,
  bic_zsdemw20 STRING,
  bic_zsdemw600 STRING,
  bic_zsdemw670 STRING,
  bic_zsdemw67 STRING,
  bic_zsdemw703 STRING,
  bic_zsdemw704 STRING,
  bic_zsdemw705 STRING,
  bic_zsdemw706 STRING,
  bic_zsdemw708 STRING,
  bic_zsdemwid STRING,
  bic_zsdestkba STRING,
  bic_zsdetypba STRING,
  fs_edate TIMESTAMP,
  fs_loan_cl STRING,
  fs_assgi STRING,
  bic_zsdeembeg TIMESTAMP,
  bic_zsdekzdnk STRING,
  bic_zsdegarca DECIMAL(17,2),
  bic_zsdeskuea STRING,
  bic_zsdeskued STRING,
  bic_zsdetyplz STRING,
  bic_zsdecptyp STRING,
  bic_zsdeissub STRING,
  bic_zsdetpbke STRING,
  bic_zsdemwspa STRING,
  bic_zsdemwsto STRING,
  bic_zsdemaxva TIMESTAMP,
  currency STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yssrprod_attr';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_yssrprod_attr_all (
  fs_ctr_tp STRING,
  comp_code STRING,
  bic_yspositi STRING,
  bic_yscompco STRING,
  bic_ysproduct STRING,
  bic_yssrprod STRING,
  dateto TIMESTAMP,
  datefrom TIMESTAMP,
  bic_zsdeseqnb STRING,
  bic_zsdecovar STRING,
  fs_sec_ct STRING,
  bic_ys_soursy STRING,
  bic_ysprdtyp STRING,
  cfm_sec_ac STRING,
  bic_zsdeacgrp STRING,
  bic_zsdedvno STRING,
  bic_zsdedvuan STRING,
  bic_zsdem7_0 STRING,
  bic_zsdem7_02 STRING,
  bic_zsdem7_03 STRING,
  bic_zsdem7_04 STRING,
  bic_zsdemspar STRING,
  bic_zsdemw_0 STRING,
  bic_zsdemw_02 STRING,
  bic_zsdemw20 STRING,
  bic_zsdemw600 STRING,
  bic_zsdemw670 STRING,
  bic_zsdemw67 STRING,
  bic_zsdemw703 STRING,
  bic_zsdemw704 STRING,
  bic_zsdemw705 STRING,
  bic_zsdemw706 STRING,
  bic_zsdemw708 STRING,
  bic_zsdemwid STRING,
  bic_zsdestkba STRING,
  bic_zsdetypba STRING,
  fs_edate TIMESTAMP,
  fs_loan_cl STRING,
  fs_assgi STRING,
  bic_zsdeembeg TIMESTAMP,
  bic_zsdekzdnk STRING,
  bic_zsdegarca DECIMAL(17,2),
  bic_zsdeskuea STRING,
  bic_zsdeskued STRING,
  bic_zsdetyplz STRING,
  bic_zsdecptyp STRING,
  bic_zsdeissub STRING,
  bic_zsdetpbke STRING,
  bic_zsdemwspa STRING,
  bic_zsdemwsto STRING,
  bic_zsdemaxva TIMESTAMP,
  currency STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_yssrprod_attr';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_val_ar_text (
  fs_val_ar STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_val_ar_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_val_ar_text_all (
  fs_val_ar STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_val_ar_text';


CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_val_cl_text (
  fs_val_ar STRING,
  fs_val_cl STRING,
  langu STRING,
  txtlg STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_val_cl_text';

CREATE EXTERNAL TABLE IF NOT EXISTS shp_md_fs_val_cl_text_all (
  fs_val_ar STRING,
  fs_val_cl STRING,
  langu STRING,
  txtlg STRING)
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LOCATION '/group/pisquare/data/shp_md_fs_val_cl_text';


