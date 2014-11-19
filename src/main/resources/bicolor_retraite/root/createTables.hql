CREATE EXTERNAL TABLE IF NOT EXISTS retraite_detail_frais (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_detail_frais BIGINT COMMENT 'Identifiant détail frais',
  id_mouvement BIGINT COMMENT 'Identifiant mouvement',
  type_frais STRING COMMENT 'Type de frais',
  mt_frais DECIMAL(18,8) COMMENT 'Montant',
  tx_frais DECIMAL(18,8) COMMENT 'Taux',
  assiette DECIMAL(18,8) COMMENT 'Assiette',
  id_tarification BIGINT COMMENT 'Identifiant Tarification')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_detail_frais';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  typologie_contrat STRING COMMENT 'Typologie de contrat',
  cd_groupe_contrat BIGINT COMMENT 'Code groupe de contrat',
  id_produit STRING COMMENT 'Identifiant produit',
  num_contrat STRING COMMENT 'Numéro de contrat',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code entité juridique',
  lib_entite_juridique STRING COMMENT 'Libellé Entité Juridique',
  statut_contrat STRING COMMENT 'Statut du contrat',
  dt_effet_statut_contrat TIMESTAMP COMMENT 'Date d effet du statut du contrat',
  num_convention STRING COMMENT 'Numéro de convention',
  dt_saisie_contrat TIMESTAMP COMMENT 'Date de saisie du contrat',
  dt_signature TIMESTAMP COMMENT 'Date de signature',
  dt_effet_adhesion_entreprise TIMESTAMP COMMENT 'Date d effet',
  college STRING COMMENT 'Collège',
  detail_college STRING COMMENT 'Détail Collège',
  age_theo_depart_retraite BIGINT COMMENT 'Age théorique de départ en retraite',
  reseau_commercial STRING COMMENT 'Réseau commercial',
  periodicite_cotis STRING COMMENT 'Périodicité des cotisations',
  import_cotis STRING COMMENT 'Import cotisation',
  mode_calcul_cotis STRING COMMENT 'Mode de calcul des cotisations',
  cotis_pourc_ta_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche A du salaire brut annuel',
  cotis_pourc_tb_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche B du salaire brut annuel',
  cotis_pourc_tc_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche C du salaire brut annuel',
  cotis_pourc_td_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche D du salaire brut annuel',
  cotis_pourc_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage du salaire brut annuel',
  part_empl_cotis_ta_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche A du salaire brut annuel',
  part_empl_cotis_tb_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche B du salaire brut annuel',
  part_empl_cotis_tc_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche C du salaire brut annuel',
  part_empl_cotis_td_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche D du salaire brut annuel',
  part_empl_cotis_sal_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations sur le salaire brut annuel',
  mt_cotis DECIMAL(18,8) COMMENT 'Montant des cotisations',
  lib_regle_cotis_complexe STRING COMMENT 'Libellé correspondant à une règle de cotisation complexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  nb_affiliations_active BIGINT COMMENT 'Nombre d Affiliations   active  ',
  nb_affiliations_deces BIGINT COMMENT 'Nombre d Affiliations   décès  ',
  nb_affiliations_transferee BIGINT COMMENT 'Nombre d Affiliations   transférée  ',
  nb_affiliations_reduite BIGINT COMMENT 'Nombre d Affiliations   réduite  ',
  nb_affiliations_liquidee BIGINT COMMENT 'Nombre d Affiliations   liquidée  ',
  frequence_revalo_contrat STRING COMMENT 'Fréquence revalorisation contrat',
  type_echeance_cotis STRING COMMENT 'Type d échéance de la cotisation',
  cd_produit_systeme_source STRING COMMENT 'Code produit du système source')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  typologie_contrat STRING COMMENT 'Typologie de contrat',
  cd_groupe_contrat BIGINT COMMENT 'Code groupe de contrat',
  id_produit STRING COMMENT 'Identifiant produit',
  num_contrat STRING COMMENT 'Numéro de contrat',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code entité juridique',
  lib_entite_juridique STRING COMMENT 'Libellé Entité Juridique',
  statut_contrat STRING COMMENT 'Statut du contrat',
  dt_effet_statut_contrat TIMESTAMP COMMENT 'Date d effet du statut du contrat',
  num_convention STRING COMMENT 'Numéro de convention',
  dt_saisie_contrat TIMESTAMP COMMENT 'Date de saisie du contrat',
  dt_signature TIMESTAMP COMMENT 'Date de signature',
  dt_effet_adhesion_entreprise TIMESTAMP COMMENT 'Date d effet',
  college STRING COMMENT 'Collège',
  detail_college STRING COMMENT 'Détail Collège',
  age_theo_depart_retraite BIGINT COMMENT 'Age théorique de départ en retraite',
  reseau_commercial STRING COMMENT 'Réseau commercial',
  periodicite_cotis STRING COMMENT 'Périodicité des cotisations',
  import_cotis STRING COMMENT 'Import cotisation',
  mode_calcul_cotis STRING COMMENT 'Mode de calcul des cotisations',
  cotis_pourc_ta_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche A du salaire brut annuel',
  cotis_pourc_tb_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche B du salaire brut annuel',
  cotis_pourc_tc_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche C du salaire brut annuel',
  cotis_pourc_td_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage de la tranche D du salaire brut annuel',
  cotis_pourc_sal_brut_annuel DECIMAL(18,8) COMMENT 'Cotisation en pourcentage du salaire brut annuel',
  part_empl_cotis_ta_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche A du salaire brut annuel',
  part_empl_cotis_tb_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche B du salaire brut annuel',
  part_empl_cotis_tc_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche C du salaire brut annuel',
  part_empl_cotis_td_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations de la tranche D du salaire brut annuel',
  part_empl_cotis_sal_brut_annuel DECIMAL(18,8) COMMENT 'Part employeur des cotisations sur le salaire brut annuel',
  mt_cotis DECIMAL(18,8) COMMENT 'Montant des cotisations',
  lib_regle_cotis_complexe STRING COMMENT 'Libellé correspondant à une règle de cotisation complexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  nb_affiliations_active BIGINT COMMENT 'Nombre d Affiliations   active  ',
  nb_affiliations_deces BIGINT COMMENT 'Nombre d Affiliations   décès  ',
  nb_affiliations_transferee BIGINT COMMENT 'Nombre d Affiliations   transférée  ',
  nb_affiliations_reduite BIGINT COMMENT 'Nombre d Affiliations   réduite  ',
  nb_affiliations_liquidee BIGINT COMMENT 'Nombre d Affiliations   liquidée  ',
  frequence_revalo_contrat STRING COMMENT 'Fréquence revalorisation contrat',
  type_echeance_cotis STRING COMMENT 'Type d échéance de la cotisation',
  cd_produit_systeme_source STRING COMMENT 'Code produit du système source')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_prime_versee (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_dossier BIGINT COMMENT 'Identifiant dossier',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  dt_effet_dossier TIMESTAMP COMMENT 'Date d effet',
  nature_operation STRING COMMENT 'Nature opération',
  type_operation STRING COMMENT 'Type d opération',
  mode_reglement STRING COMMENT 'Mode règlement',
  dt_reception TIMESTAMP COMMENT 'Date de réception',
  dt_debut_periode TIMESTAMP COMMENT 'Date de début de période',
  dt_fin_periode TIMESTAMP COMMENT 'Date de fin de période',
  mt_brut DECIMAL(18,8) COMMENT 'Montant brut',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_dossier_annule BIGINT COMMENT 'Identifiant dossier annulé',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_prime_versee';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_encaissement_repartition (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_encaissement_repart BIGINT COMMENT 'Identifiant encaissement répartition',
  id_encaissement BIGINT COMMENT 'Identifiant encaissement',
  id_dossier BIGINT COMMENT 'Identifiant dossier',
  ref_lettrage STRING COMMENT 'Référence lettrage',
  mt_affecte DECIMAL(18,8) COMMENT 'Montant affecté',
  annulation STRING COMMENT 'Annulation',
  id_e_r_annule BIGINT COMMENT 'identifiant E R annulé',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_encaissement_repartition';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_dividende (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_dividende BIGINT COMMENT 'Identifiant dividende',
  cd_isin STRING COMMENT 'Code ISIN',
  devise STRING COMMENT 'Devise',
  dt_distribution TIMESTAMP COMMENT 'Date de distribution',
  mt_dividende DECIMAL(18,8) COMMENT 'Montant du dividende',
  dt_valeur TIMESTAMP COMMENT 'Date de valeur',
  vl_utilisee_detachement DECIMAL(18,8) COMMENT 'VL utilisée au détachement',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_dividende';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_produit_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  typologie_produit STRING COMMENT 'Typologie du produit',
  lib_crt_produit_technique STRING COMMENT 'Libellé Court Produit Technique',
  lib_lg_produit_technique STRING COMMENT 'Libellé Long Produit Technique',
  lib_produit_commerc_crt STRING COMMENT 'Libellé Produit Commercial Court',
  lib_produit_commerc_lg STRING COMMENT 'Libellé Produit Commercial Long',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code Entité Juridique',
  entite_juridique STRING COMMENT 'Entité Juridique',
  type_commerc STRING COMMENT 'Type de commercialisation',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  num_convention STRING COMMENT 'Numéro de convention',
  portefeuille STRING COMMENT 'Portefeuille',
  systeme_source STRING COMMENT 'Système source')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_produit';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_produit (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  typologie_produit STRING COMMENT 'Typologie du produit',
  lib_crt_produit_technique STRING COMMENT 'Libellé Court Produit Technique',
  lib_lg_produit_technique STRING COMMENT 'Libellé Long Produit Technique',
  lib_produit_commerc_crt STRING COMMENT 'Libellé Produit Commercial Court',
  lib_produit_commerc_lg STRING COMMENT 'Libellé Produit Commercial Long',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code Entité Juridique',
  entite_juridique STRING COMMENT 'Entité Juridique',
  type_commerc STRING COMMENT 'Type de commercialisation',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  num_convention STRING COMMENT 'Numéro de convention',
  portefeuille STRING COMMENT 'Portefeuille',
  systeme_source STRING COMMENT 'Système source')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_produit';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_encaissement (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_encaissement BIGINT COMMENT 'Identifiant encaissement',
  type_encaissement STRING COMMENT 'Type d encaissement',
  dt_encaissement TIMESTAMP COMMENT 'Date d encaissement',
  ref STRING COMMENT 'Référence',
  ref_bordereau STRING COMMENT 'Référence bordereau',
  ref_releve_bancaire STRING COMMENT 'Référence relevé bancaire',
  mt_encaissement DECIMAL(18,8) COMMENT 'Montant',
  compte_bancaire STRING COMMENT 'Compte bancaire',
  annulation STRING COMMENT 'Annulation',
  id_encaissement_annule BIGINT COMMENT 'Identifiant encaissement annulé',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_encaissement';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_option_rente_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_option_rente BIGINT COMMENT 'Identifiant option rente',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_option_rente STRING COMMENT 'Type d option rente',
  lib_crt_option_rente STRING COMMENT 'Libellé court',
  lib_lg_option_rente STRING COMMENT 'Libellé long',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validité',
  tx_1 DECIMAL(18,8) COMMENT 'Taux 1',
  tx_2 DECIMAL(18,8) COMMENT 'Taux 2',
  mt_1 DECIMAL(18,8) COMMENT 'Montant 1',
  mt_2 DECIMAL(18,8) COMMENT 'Montant 2',
  delai_1 BIGINT COMMENT 'Délai 1',
  delai_2 BIGINT COMMENT 'Délai 2')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_option_rente';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_option_rente (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_option_rente BIGINT COMMENT 'Identifiant option rente',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_option_rente STRING COMMENT 'Type d option rente',
  lib_crt_option_rente STRING COMMENT 'Libellé court',
  lib_lg_option_rente STRING COMMENT 'Libellé long',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validité',
  tx_1 DECIMAL(18,8) COMMENT 'Taux 1',
  tx_2 DECIMAL(18,8) COMMENT 'Taux 2',
  mt_1 DECIMAL(18,8) COMMENT 'Montant 1',
  mt_2 DECIMAL(18,8) COMMENT 'Montant 2',
  delai_1 BIGINT COMMENT 'Délai 1',
  delai_2 BIGINT COMMENT 'Délai 2')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_option_rente';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat_gestion_support_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  niveau BIGINT COMMENT 'Niveau',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  id_support BIGINT COMMENT 'Identifiant support',
  cd_assureur STRING COMMENT 'Code assureur',
  lib_crt_gestion_ou_support STRING COMMENT 'Libellé court gestion ou support',
  lib_lg_gestion_ou_support STRING COMMENT 'Libellé long gestion ou support',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat_gestion_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat_gestion_support (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  niveau BIGINT COMMENT 'Niveau',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  id_support BIGINT COMMENT 'Identifiant support',
  cd_assureur STRING COMMENT 'Code assureur',
  lib_crt_gestion_ou_support STRING COMMENT 'Libellé court gestion ou support',
  lib_lg_gestion_ou_support STRING COMMENT 'Libellé long gestion ou support',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat_gestion_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affiliation_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affilie BIGINT COMMENT 'Identifiant affilié',
  num_affiliation STRING COMMENT 'Numéro d affiliation',
  dt_effet_adhesion_affilie TIMESTAMP COMMENT 'Date d effet',
  statut_affiliation STRING COMMENT 'Statut de l affiliation',
  dt_effet_statut_affilie TIMESTAMP COMMENT 'Date d effet du statut',
  dt_entree_entreprise TIMESTAMP COMMENT 'Date d entrée dans l entreprise',
  age_depart_retraite BIGINT COMMENT 'Age de départ en retraite',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_perso STRING COMMENT 'Téléphone Perso',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affiliation';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affiliation (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affilie BIGINT COMMENT 'Identifiant affilié',
  num_affiliation STRING COMMENT 'Numéro d affiliation',
  dt_effet_adhesion_affilie TIMESTAMP COMMENT 'Date d effet',
  statut_affiliation STRING COMMENT 'Statut de l affiliation',
  dt_effet_statut_affilie TIMESTAMP COMMENT 'Date d effet du statut',
  dt_entree_entreprise TIMESTAMP COMMENT 'Date d entrée dans l entreprise',
  age_depart_retraite BIGINT COMMENT 'Age de départ en retraite',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_perso STRING COMMENT 'Téléphone Perso',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affiliation';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_mouvement (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_mouvement BIGINT COMMENT 'Identifiant mouvement',
  id_operation_financiere BIGINT COMMENT 'Identifiant opération financière',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financiere',
  id_support BIGINT COMMENT 'Identifiant support',
  mt_brut DECIMAL(18,8) COMMENT 'Montant brut',
  mt_frais_epargne DECIMAL(18,8) COMMENT 'Montant des frais d épargne',
  mt_frais_financt_garantie DECIMAL(18,8) COMMENT 'Montant des frais de financement de garantie',
  mt_taxes DECIMAL(18,8) COMMENT 'Montant des taxes',
  mt_net_retraite DECIMAL(18,8) COMMENT 'Montant net retraite',
  mt_reel DECIMAL(18,8) COMMENT 'Montant réel',
  nombre_parts DECIMAL(18,8) COMMENT 'Nombre de parts',
  dt_valeur TIMESTAMP COMMENT 'Date de valeur',
  interets_techniques_inclus DECIMAL(18,8) COMMENT 'Intérêts techniques inclus',
  participation_resultat_incluse DECIMAL(18,8) COMMENT 'Participation au résultat incluse',
  valeur_liquidative_support DECIMAL(18,8) COMMENT 'Valeur liquidative du support',
  dt_traitt_valorisation TIMESTAMP COMMENT 'Date du traitement de valorisation',
  dt_investissement TIMESTAMP COMMENT 'Date d investissement')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_mouvement';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_provision_mathematique (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_pm TIMESTAMP COMMENT 'Date PM',
  pm_tmg_a_dt_extract DECIMAL(18,8) COMMENT 'PM TMG à la Date d extraction',
  pm_anticipees_a_dt_extract DECIMAL(18,8) COMMENT 'PM Anticipées à la Date d extraction',
  pm_brutes DECIMAL(18,8) COMMENT 'PM Brutes',
  pm_nettes DECIMAL(18,8) COMMENT 'PM Nettes',
  nombre_parts DECIMAL(18,8) COMMENT 'Nombre de parts',
  interets_techniques_inclus DECIMAL(18,8) COMMENT 'Intérêts techniques inclus',
  participation_resultat_incluse DECIMAL(18,8) COMMENT 'Participation au résultat incluse',
  dt_valeur_vl TIMESTAMP COMMENT 'Date de valeur de la VL',
  vl_support DECIMAL(18,8) COMMENT 'VL du support')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_provision_mathematique';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_garantie_secondaire_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_produit STRING COMMENT 'Identifiant produit',
  type_garantie STRING COMMENT 'Type de garantie',
  lib_crt_garantie_compltaire STRING COMMENT 'Libellé court',
  lib_lg_garantie_compltaire STRING COMMENT 'Libellé long',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validité',
  reassureur STRING COMMENT 'Réassureur',
  traite_reassurance STRING COMMENT 'Traité de réassurance',
  option_1 STRING COMMENT 'Option 1',
  option_2 STRING COMMENT 'Option 2',
  tx_min DECIMAL(18,8) COMMENT 'Taux min',
  tx_max DECIMAL(18,8) COMMENT 'Taux max',
  mt_min DECIMAL(18,8) COMMENT 'Montant min',
  mt_max DECIMAL(18,8) COMMENT 'Montant max',
  delais_min BIGINT COMMENT 'Délais min',
  delais_max BIGINT COMMENT 'Délais max')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_garantie_secondaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_garantie_secondaire (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_produit STRING COMMENT 'Identifiant produit',
  type_garantie STRING COMMENT 'Type de garantie',
  lib_crt_garantie_compltaire STRING COMMENT 'Libellé court',
  lib_lg_garantie_compltaire STRING COMMENT 'Libellé long',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validité',
  reassureur STRING COMMENT 'Réassureur',
  traite_reassurance STRING COMMENT 'Traité de réassurance',
  option_1 STRING COMMENT 'Option 1',
  option_2 STRING COMMENT 'Option 2',
  tx_min DECIMAL(18,8) COMMENT 'Taux min',
  tx_max DECIMAL(18,8) COMMENT 'Taux max',
  mt_min DECIMAL(18,8) COMMENT 'Montant min',
  mt_max DECIMAL(18,8) COMMENT 'Montant max',
  delais_min BIGINT COMMENT 'Délais min',
  delais_max BIGINT COMMENT 'Délais max')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_garantie_secondaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_correspondant_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_correspondant BIGINT COMMENT 'Identifiant correspondant',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_personne BIGINT COMMENT 'Identifiant personne',
  type_correspondant STRING COMMENT 'Type de correspondant',
  fonction_correspondant STRING COMMENT 'Fonction du correspondant',
  civilite_correspondant STRING COMMENT 'Civilité du correspondant',
  nom_correspondant STRING COMMENT 'Nom du correspondant',
  prenom_correspondant STRING COMMENT 'Prénom du correspondant',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'Téléphone Perso',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_correspondant';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_correspondant (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_correspondant BIGINT COMMENT 'Identifiant correspondant',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_personne BIGINT COMMENT 'Identifiant personne',
  type_correspondant STRING COMMENT 'Type de correspondant',
  fonction_correspondant STRING COMMENT 'Fonction du correspondant',
  civilite_correspondant STRING COMMENT 'Civilité du correspondant',
  nom_correspondant STRING COMMENT 'Nom du correspondant',
  prenom_correspondant STRING COMMENT 'Prénom du correspondant',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'Téléphone Perso',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_correspondant';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_pm_inventaire (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_pm TIMESTAMP COMMENT 'Date PM',
  pm_tmg_a_dt_extract DECIMAL(18,8) COMMENT 'PM TMG à la Date d extraction',
  pm_anticipees_a_dt_extract DECIMAL(18,8) COMMENT 'PM Anticipées à la Date d extraction',
  pm_brutes DECIMAL(18,8) COMMENT 'PM Brutes',
  pm_nettes DECIMAL(18,8) COMMENT 'PM Nettes',
  nombre_parts DECIMAL(18,8) COMMENT 'Nombre de parts',
  interets_techniques_inclus DECIMAL(18,8) COMMENT 'Intérêts techniques inclus',
  participation_resultat_incluse DECIMAL(18,8) COMMENT 'Participation au résultat incluse',
  dt_valeur_vl TIMESTAMP COMMENT 'Date de valeur de la VL',
  vl_support DECIMAL(18,8) COMMENT 'VL du support',
  cumul_primes DECIMAL(18,8) COMMENT 'Cumul des primes',
  cumul_transfert_entrant_interne DECIMAL(18,8) COMMENT 'cumul des transfert entrant interne',
  cumul_transfert_entrant_externe DECIMAL(18,8) COMMENT 'cumul des transfert entrant externe',
  cumul_sorties DECIMAL(18,8) COMMENT 'Cumul des sorties',
  cumul_transfert_sortant_interne DECIMAL(18,8) COMMENT 'cumul des transfert sortant interne',
  cumul_transfert_sortant_externe DECIMAL(18,8) COMMENT 'cumul des transfert sortant externe',
  cumul_ost_ddc DECIMAL(18,8) COMMENT 'cumul ost_ddc',
  cumul_arbitrages DECIMAL(18,8) COMMENT 'cumul des arbitrages',
  frais_acquisition DECIMAL(18,8) COMMENT 'Frais d acquisition',
  frais_garantie_exo_continuite DECIMAL(18,8) COMMENT 'Frais garantie exo (continuité)',
  frais_transfert DECIMAL(18,8) COMMENT 'Frais de transfert',
  frais_arbitrage DECIMAL(18,8) COMMENT 'Frais d arbitrage',
  frais_gestion_uc DECIMAL(18,8) COMMENT 'Frais de gestion UC',
  frais_gestion_euro DECIMAL(18,8) COMMENT 'Frais de gestion EURO',
  frais_rente DECIMAL(18,8) COMMENT 'Frais de rente',
  pm_31_12_reactualisee DECIMAL(18,8) COMMENT 'PM 31 12 réactualisée',
  acav DECIMAL(18,8) COMMENT 'ACAV',
  dt_calcul_pm TIMESTAMP COMMENT 'Date de calcul de la PM')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_pm_inventaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affilie_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affilie BIGINT COMMENT 'Identifiant affilié',
  matricule STRING COMMENT 'Matricule',
  civilite STRING COMMENT 'Civilité',
  nom STRING COMMENT 'Nom',
  nom_jeune_fille STRING COMMENT 'Nom de jeune fille',
  prenom STRING COMMENT 'Prénom',
  dt_naissance TIMESTAMP COMMENT 'Date de naissance',
  ville_naissance STRING COMMENT 'Ville de naissance',
  cd_pays_naissance STRING COMMENT 'Code pays de Naissance',
  pays_naissance STRING COMMENT 'Pays de naissance',
  sexe STRING COMMENT 'Sexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'Téléphone Perso',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affilie';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affilie (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affilie BIGINT COMMENT 'Identifiant affilié',
  matricule STRING COMMENT 'Matricule',
  civilite STRING COMMENT 'Civilité',
  nom STRING COMMENT 'Nom',
  nom_jeune_fille STRING COMMENT 'Nom de jeune fille',
  prenom STRING COMMENT 'Prénom',
  dt_naissance TIMESTAMP COMMENT 'Date de naissance',
  ville_naissance STRING COMMENT 'Ville de naissance',
  cd_pays_naissance STRING COMMENT 'Code pays de Naissance',
  pays_naissance STRING COMMENT 'Pays de naissance',
  sexe STRING COMMENT 'Sexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'Téléphone Perso',
  tel_pro STRING COMMENT 'Téléphone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affilie';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_fusion_absorption (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_fusion_absorbsion BIGINT COMMENT 'Identifiant Fusion   Absorbsion',
  cd_isin_absorbe STRING COMMENT 'Code ISIN absorbé',
  isin_absorbant_ou_nouvel_isin STRING COMMENT 'Code ISIN absorbant ou nouveau code ISIN',
  dt_absorption TIMESTAMP COMMENT 'Date d absorption',
  dt_valeur TIMESTAMP COMMENT 'Date de valeur',
  parite DECIMAL(18,8) COMMENT 'Parité')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_fusion_absorption';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_financiere_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  id_produit STRING COMMENT 'Identifiant produit',
  type_gestion STRING COMMENT 'Type de gestion',
  type_pilotage STRING COMMENT 'Type de pilotage',
  lib_crt_garantie_financiere STRING COMMENT 'Libellé court',
  lib_lg_garantie_financiere STRING COMMENT 'Libellé long',
  lib_crt_panier STRING COMMENT 'Libellé court Panier',
  lib_lg_panier STRING COMMENT 'Libellé long Panier',
  canton_fiscal STRING COMMENT 'Canton Fiscal',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_financiere';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_financiere (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  id_produit STRING COMMENT 'Identifiant produit',
  type_gestion STRING COMMENT 'Type de gestion',
  type_pilotage STRING COMMENT 'Type de pilotage',
  lib_crt_garantie_financiere STRING COMMENT 'Libellé court',
  lib_lg_garantie_financiere STRING COMMENT 'Libellé long',
  lib_crt_panier STRING COMMENT 'Libellé court Panier',
  lib_lg_panier STRING COMMENT 'Libellé long Panier',
  canton_fiscal STRING COMMENT 'Canton Fiscal',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_financiere';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_tarification_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_tarification BIGINT COMMENT 'Identifiant tarification',
  id_palier_tarification BIGINT COMMENT 'Identifiant palier tarification',
  identifant_tranche_tarification BIGINT COMMENT 'Identifant tranche tarification',
  acte_tarife STRING COMMENT 'Acte Tarifé',
  famille_frais STRING COMMENT 'Famille de frais',
  type_frais STRING COMMENT 'Type de frais',
  id_produit STRING COMMENT 'Identifiant produit',
  identifian_contrat BIGINT COMMENT 'Identifian contrat',
  canton STRING COMMENT 'Canton',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  type_support STRING COMMENT 'Type de support',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_deb_commerc TIMESTAMP COMMENT 'Début d application',
  dt_fin_appli TIMESTAMP COMMENT 'Fin d application',
  garantie_financee BIGINT COMMENT 'Garantie financée',
  frequence STRING COMMENT 'Fréquence',
  mode_calcul STRING COMMENT 'Mode de calcul',
  dt_ref STRING COMMENT 'Date de référence',
  type_palier STRING COMMENT 'Type de palier',
  borne_palier_sup BIGINT COMMENT 'Borne palier supérieure',
  assiette_tranche_nb BIGINT COMMENT 'Assiette tranche',
  assiette_tranche_txt STRING COMMENT 'Assiette tranche',
  borne_tranche_inf DECIMAL(18,8) COMMENT 'Borne tranche inférieure',
  borne_tranche_sup DECIMAL(18,8) COMMENT 'Borne tranche supérieure',
  tx_frais DECIMAL(18,8) COMMENT 'Taux de frais',
  mt_forfaitaire DECIMAL(18,8) COMMENT 'Montant forfaitaire',
  mt_minimum DECIMAL(18,8) COMMENT 'Montant minimum',
  mt_maximum DECIMAL(18,8) COMMENT 'Montant maximum',
  mt_global_minimum DECIMAL(18,8) COMMENT 'Montant global minimum',
  mt_global_maximum DECIMAL(18,8) COMMENT 'Montant global maximum',
  tx_global_minimum DECIMAL(18,8) COMMENT 'Taux global minimum',
  tx_global_maximum DECIMAL(18,8) COMMENT 'Taux global maximum')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_tarification';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_tarification (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_tarification BIGINT COMMENT 'Identifiant tarification',
  id_palier_tarification BIGINT COMMENT 'Identifiant palier tarification',
  identifant_tranche_tarification BIGINT COMMENT 'Identifant tranche tarification',
  acte_tarife STRING COMMENT 'Acte Tarifé',
  famille_frais STRING COMMENT 'Famille de frais',
  type_frais STRING COMMENT 'Type de frais',
  id_produit STRING COMMENT 'Identifiant produit',
  identifian_contrat BIGINT COMMENT 'Identifian contrat',
  canton STRING COMMENT 'Canton',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  type_support STRING COMMENT 'Type de support',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_deb_commerc TIMESTAMP COMMENT 'Début d application',
  dt_fin_appli TIMESTAMP COMMENT 'Fin d application',
  garantie_financee BIGINT COMMENT 'Garantie financée',
  frequence STRING COMMENT 'Fréquence',
  mode_calcul STRING COMMENT 'Mode de calcul',
  dt_ref STRING COMMENT 'Date de référence',
  type_palier STRING COMMENT 'Type de palier',
  borne_palier_sup BIGINT COMMENT 'Borne palier supérieure',
  assiette_tranche_nb BIGINT COMMENT 'Assiette tranche',
  assiette_tranche_txt STRING COMMENT 'Assiette tranche',
  borne_tranche_inf DECIMAL(18,8) COMMENT 'Borne tranche inférieure',
  borne_tranche_sup DECIMAL(18,8) COMMENT 'Borne tranche supérieure',
  tx_frais DECIMAL(18,8) COMMENT 'Taux de frais',
  mt_forfaitaire DECIMAL(18,8) COMMENT 'Montant forfaitaire',
  mt_minimum DECIMAL(18,8) COMMENT 'Montant minimum',
  mt_maximum DECIMAL(18,8) COMMENT 'Montant maximum',
  mt_global_minimum DECIMAL(18,8) COMMENT 'Montant global minimum',
  mt_global_maximum DECIMAL(18,8) COMMENT 'Montant global maximum',
  tx_global_minimum DECIMAL(18,8) COMMENT 'Taux global minimum',
  tx_global_maximum DECIMAL(18,8) COMMENT 'Taux global maximum')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_tarification';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_support_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  type_support STRING COMMENT 'Type Support',
  forme_support STRING COMMENT 'Forme Support',
  isin STRING COMMENT 'ISIN',
  lib_crt_support STRING COMMENT 'Libelle Court Support',
  lib_lg_support STRING COMMENT 'Libelle Long Support',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  portefeuille STRING COMMENT 'Portefeuille')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_support (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  type_support STRING COMMENT 'Type Support',
  forme_support STRING COMMENT 'Forme Support',
  isin STRING COMMENT 'ISIN',
  lib_crt_support STRING COMMENT 'Libelle Court Support',
  lib_lg_support STRING COMMENT 'Libelle Long Support',
  dt_deb_commerc TIMESTAMP COMMENT 'Début de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  portefeuille STRING COMMENT 'Portefeuille')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_taux_support_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_tx STRING COMMENT 'Type de taux',
  dt_debut TIMESTAMP COMMENT 'Date de début',
  dt_fin TIMESTAMP COMMENT 'Date de fin',
  tx_support DECIMAL(18,8) COMMENT 'Taux',
  top_calcule STRING COMMENT 'Calculé ?',
  type_tx_pm STRING COMMENT 'Type de taux PM',
  frequence STRING COMMENT 'Fréquence')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_taux_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_taux_support (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_tx STRING COMMENT 'Type de taux',
  dt_debut TIMESTAMP COMMENT 'Date de début',
  dt_fin TIMESTAMP COMMENT 'Date de fin',
  tx_support DECIMAL(18,8) COMMENT 'Taux',
  top_calcule STRING COMMENT 'Calculé ?',
  type_tx_pm STRING COMMENT 'Type de taux PM',
  frequence STRING COMMENT 'Fréquence')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_taux_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entite_reseau_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entite_reseau BIGINT COMMENT 'Identifiant entité réseau',
  cd_entite_reseau STRING COMMENT 'Code entité réseau',
  lib_entite_reseau STRING COMMENT 'Libellé entité réseau',
  reseau_commercial STRING COMMENT 'Réseau commercial',
  niveau STRING COMMENT 'Niveau',
  modele STRING COMMENT 'Modèle',
  mode_distribution STRING COMMENT 'Mode de distribution',
  id_web STRING COMMENT 'Identifiant Web')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entite_reseau';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entite_reseau (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entite_reseau BIGINT COMMENT 'Identifiant entité réseau',
  cd_entite_reseau STRING COMMENT 'Code entité réseau',
  lib_entite_reseau STRING COMMENT 'Libellé entité réseau',
  reseau_commercial STRING COMMENT 'Réseau commercial',
  niveau STRING COMMENT 'Niveau',
  modele STRING COMMENT 'Modèle',
  mode_distribution STRING COMMENT 'Mode de distribution',
  id_web STRING COMMENT 'Identifiant Web')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entite_reseau';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entreprise_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  matricule STRING COMMENT 'Matricule',
  raison_sociale STRING COMMENT 'Raison sociale',
  forme_juridique STRING COMMENT 'Forme juridique',
  capital_social DECIMAL(18,8) COMMENT 'Capital social',
  dt_creation_etablissement TIMESTAMP COMMENT 'Date de création de l établissement',
  id_maison_mere BIGINT COMMENT 'Identifiant de la maison mère',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d’Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d’Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d’Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d’Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  tel STRING COMMENT 'Téléphone',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  cd_pays STRING COMMENT 'Code Pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  cd_naf STRING COMMENT 'Code NAF',
  num_siret STRING COMMENT 'Numéro SIRET',
  num_siren STRING COMMENT 'Numéro SIREN',
  ville_greffe STRING COMMENT 'Ville de greffe',
  cd_registre_commerce_societes STRING COMMENT 'Code Registre du Commerce et des Sociétés',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entreprise';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entreprise (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  matricule STRING COMMENT 'Matricule',
  raison_sociale STRING COMMENT 'Raison sociale',
  forme_juridique STRING COMMENT 'Forme juridique',
  capital_social DECIMAL(18,8) COMMENT 'Capital social',
  dt_creation_etablissement TIMESTAMP COMMENT 'Date de création de l établissement',
  id_maison_mere BIGINT COMMENT 'Identifiant de la maison mère',
  adresse STRING COMMENT 'Adresse',
  cplt_adr_1 STRING COMMENT 'Complément d’Adresse 1',
  cplt_adr_2 STRING COMMENT 'Complément d’Adresse 2',
  cplt_adr_3 STRING COMMENT 'Complément d’Adresse 3',
  cplt_adr_4 STRING COMMENT 'Complément d’Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  tel STRING COMMENT 'Téléphone',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  cd_pays STRING COMMENT 'Code Pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  cd_naf STRING COMMENT 'Code NAF',
  num_siret STRING COMMENT 'Numéro SIRET',
  num_siren STRING COMMENT 'Numéro SIREN',
  ville_greffe STRING COMMENT 'Ville de greffe',
  cd_registre_commerce_societes STRING COMMENT 'Code Registre du Commerce et des Sociétés',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entreprise';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_choix_garantie_secondaire (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_statut BIGINT COMMENT 'Identifiant statut',
  id_choix_garantie BIGINT COMMENT 'Identifiant choix garantie',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  statut STRING COMMENT 'Statut',
  dt_reception TIMESTAMP COMMENT 'Date de réception',
  dt_effet TIMESTAMP COMMENT 'Date d effet',
  dt_cloture TIMESTAMP COMMENT 'Date de clôture',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie',
  duree_franchise BIGINT COMMENT 'Durée de franchise',
  duree_carence BIGINT COMMENT 'Durée de carence')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_choix_garantie_secondaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_evenement_contrat (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_statut BIGINT COMMENT 'Identifiant statut',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  statut_contrats STRING COMMENT 'Statut des contrats',
  motif_chgt_statut STRING COMMENT 'Motif',
  dt_statut TIMESTAMP COMMENT 'Date de statut',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_evenement_contrat';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_lien_reseau_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_lien_reseau BIGINT COMMENT 'Identifiant Lien réseau',
  id_contrat BIGINT COMMENT 'identifiant contrat',
  id_entite_reseau BIGINT COMMENT 'Identifiant entité réseau',
  type_lien STRING COMMENT 'Type de lien',
  dt_debut TIMESTAMP COMMENT 'Date de début',
  dt_fin TIMESTAMP COMMENT 'Date de fin')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_lien_reseau';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_lien_reseau (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_lien_reseau BIGINT COMMENT 'Identifiant Lien réseau',
  id_contrat BIGINT COMMENT 'identifiant contrat',
  id_entite_reseau BIGINT COMMENT 'Identifiant entité réseau',
  type_lien STRING COMMENT 'Type de lien',
  dt_debut TIMESTAMP COMMENT 'Date de début',
  dt_fin TIMESTAMP COMMENT 'Date de fin')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_lien_reseau';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_pilotee_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  num_tranche BIGINT COMMENT 'Numéro tranche',
  id_support BIGINT COMMENT 'Identifiant support',
  type_tranche STRING COMMENT 'Type de tranche',
  borne_inf BIGINT COMMENT 'Borne inférieure',
  borne_sup BIGINT COMMENT 'Borne superieure',
  tx_repartition DECIMAL(18,8) COMMENT 'Taux de répartition')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_pilotee';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_pilotee (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  num_tranche BIGINT COMMENT 'Numéro tranche',
  id_support BIGINT COMMENT 'Identifiant support',
  type_tranche STRING COMMENT 'Type de tranche',
  borne_inf BIGINT COMMENT 'Borne inférieure',
  borne_sup BIGINT COMMENT 'Borne superieure',
  tx_repartition DECIMAL(18,8) COMMENT 'Taux de répartition')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_pilotee';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_arbitrage_automatique_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  type_rebalancement STRING COMMENT 'Type de rebalancement',
  periodicite STRING COMMENT 'Périodicité')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_arbitrage_automatique';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_arbitrage_automatique (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  type_rebalancement STRING COMMENT 'Type de rebalancement',
  periodicite STRING COMMENT 'Périodicité')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_arbitrage_automatique';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_operation_financiere (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_operation_financiere BIGINT COMMENT 'Identifiant opération',
  id_dossier BIGINT COMMENT 'Identifiant dossier',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  dt_effet_dossier TIMESTAMP COMMENT 'Date d effet',
  nature_operation STRING COMMENT 'Nature opération',
  type_operation STRING COMMENT 'Type d opération',
  mode_reglement STRING COMMENT 'Mode règlement',
  dt_reception TIMESTAMP COMMENT 'Date de réception',
  dt_debut_periode TIMESTAMP COMMENT 'Date de début de période',
  dt_fin_periode TIMESTAMP COMMENT 'Date de fin de période',
  mt_brut DECIMAL(18,8) COMMENT 'Montant brut',
  mt_frais_epargne DECIMAL(18,8) COMMENT 'Montant des frais d épargne',
  mt_frais_financt_garantie DECIMAL(18,8) COMMENT 'Montant des frais de financement de garantie',
  mt_taxes DECIMAL(18,8) COMMENT 'Montant des taxes',
  mt_net_retraite DECIMAL(18,8) COMMENT 'Montant net retraite',
  dt_traitt_valoris_operation TIMESTAMP COMMENT 'Date de traitement de la valorisation de l opération',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_dossier_annule BIGINT COMMENT 'Identifiant dossier annulé',
  id_dossier_racine STRING COMMENT 'Identifiant dossier racine',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_operation_financiere';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_plan_versement_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  type_plan STRING COMMENT 'Type de plan',
  statut_plan STRING COMMENT 'Statut',
  derogeable STRING COMMENT 'Dérogeable',
  dt_reception TIMESTAMP COMMENT 'Date Réception',
  dt_debut TIMESTAMP COMMENT 'Date Début',
  periodicite STRING COMMENT 'Périodicité',
  dt_cloture TIMESTAMP COMMENT 'Date de clôture',
  dt_prochaine_echeance TIMESTAMP COMMENT 'Date de prochaine échéance',
  mt_plan DECIMAL(18,8) COMMENT 'Montant',
  mode_reglement STRING COMMENT 'Mode de règlement',
  support_attente STRING COMMENT 'Support d attente',
  type_repartition STRING COMMENT 'Type de répartition',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  tx_repart_gestion_financiere DECIMAL(18,8) COMMENT 'Taux répartition gestion financière',
  id_support BIGINT COMMENT 'Identifiant support',
  tx_repartition_support DECIMAL(18,8) COMMENT 'Taux de répartition Support',
  bic STRING COMMENT 'BIC')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_plan_versement';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_plan_versement (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  type_plan STRING COMMENT 'Type de plan',
  statut_plan STRING COMMENT 'Statut',
  derogeable STRING COMMENT 'Dérogeable',
  dt_reception TIMESTAMP COMMENT 'Date Réception',
  dt_debut TIMESTAMP COMMENT 'Date Début',
  periodicite STRING COMMENT 'Périodicité',
  dt_cloture TIMESTAMP COMMENT 'Date de clôture',
  dt_prochaine_echeance TIMESTAMP COMMENT 'Date de prochaine échéance',
  mt_plan DECIMAL(18,8) COMMENT 'Montant',
  mode_reglement STRING COMMENT 'Mode de règlement',
  support_attente STRING COMMENT 'Support d attente',
  type_repartition STRING COMMENT 'Type de répartition',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financière',
  tx_repart_gestion_financiere DECIMAL(18,8) COMMENT 'Taux répartition gestion financière',
  id_support BIGINT COMMENT 'Identifiant support',
  tx_repartition_support DECIMAL(18,8) COMMENT 'Taux de répartition Support',
  bic STRING COMMENT 'BIC')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_plan_versement';


