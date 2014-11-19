CREATE EXTERNAL TABLE IF NOT EXISTS retraite_comptabilite (
  num_fichier BIGINT COMMENT 'Num�ro de fichier',
  type_enrgt BIGINT COMMENT 'Type d enregistrement',
  syst_emetteur BIGINT COMMENT 'syst�me �metteur',
  lib_syst_emetteur STRING COMMENT 'libell� syst�me �metteur',
  bloc_appli BIGINT COMMENT 'bloc applicatif',
  acte_global STRING COMMENT 'Acte global',
  cd_transaction STRING COMMENT 'Code transaction',
  id_CRE STRING COMMENT 'identifiant CRE',
  sens_acte STRING COMMENT 'sens de l acte',
  motif_annul STRING COMMENT 'Motif d annulation',
  nb_mouvement BIGINT COMMENT 'Nombre de mouvements',
  num_mouvement BIGINT COMMENT 'Numero du mouvement dans l acte',
  libelle STRING COMMENT 'libell� (wording)',
  ref_interne STRING COMMENT 'r�f�rence interne ',
  categ_ref_interne STRING COMMENT 'Cat�gorie de r�f�rence interne',
  ref_complementaire STRING COMMENT 'r�f�rence compl�mentaire',
  categ_ref_complementaire STRING COMMENT 'Cat�gorie de r�f�rence compl�mentaire',
  cd_societe BIGINT COMMENT 'code soci�t�',
  cd_devise_contrat STRING COMMENT 'code devise du contrat',
  cd_pays_souscript STRING COMMENT 'code pays souscription',
  cd_pays_risque STRING COMMENT 'code pays risque',
  type_prime STRING COMMENT 'type de prime',
  cd_portefeuille STRING COMMENT 'code portefeuille',
  cd_agence STRING COMMENT 'Code Agrence',
  cd_encaisseur_RS STRING COMMENT 'Code Encaisseur RS',
  canal_distrib STRING COMMENT 'canal de distribution',
  regime_assure STRING COMMENT 'R�gime de l assur�  ',
  categ_personnel BIGINT COMMENT ' code de coll�ge param�tr� dans TAIGA - vide pour encaissement',
  categ_prime_assure STRING COMMENT 'Cat�gorie de prime assur�',
  cd_produit STRING COMMENT 'code produit',
  indic_garantie STRING COMMENT 'indicateur de garantie',
  cd_garantie STRING COMMENT 'Code garantie',
  type_acte_affect STRING COMMENT 'Type acte affect�',
  cd_compartiment STRING COMMENT 'Code compartiment',
  type_support STRING COMMENT 'Type support',
  nom_assure_souscript STRING COMMENT 'Nom assur� souscripteur',
  nom_adherent STRING COMMENT 'Nom adh�rent',
  num_adherent STRING COMMENT 'Num�ro adh�rent',
  benefic_rembst STRING COMMENT 'B�n�ficiaire Remboursement (vide)',
  type_ligne STRING COMMENT 'Type ligne',
  montant BIGINT COMMENT 'montant',
  taux DECIMAL(18,8) COMMENT 'Taux',
  type_montant STRING COMMENT 'type montant taux',
  type_taxe_compart STRING COMMENT 'type de taxe par compartiment',
  tx_taxe DECIMAL(18,8) COMMENT 'taux de taxe',
  montant_assiette_taxe BIGINT COMMENT 'montant assiette taxe (base)',
  montant_taxe BIGINT COMMENT 'montant taxe',
  cd_destination STRING COMMENT 'code destination ',
  md_paiement STRING COMMENT 'mode de paiement',
  num_id_reglt STRING COMMENT 'N� identifiant du r�glement',
  id_suspens STRING COMMENT 'Identifiant de suspens',
  info_RIB STRING COMMENT 'information RIB',
  num_quittance STRING COMMENT 'num�ro de quittance',
  dt_crea_flux_gene TIMESTAMP COMMENT 'date de cr�ation du flux g�n�rique',
  dt_comptable TIMESTAMP COMMENT 'date comptable',
  dt_operation TIMESTAMP COMMENT 'date de l op�ration',
  dt_effet_contrat TIMESTAMP COMMENT 'date d effet du contrat',
  dt_deb_effet_assur TIMESTAMP COMMENT 'date d�but d effet d assurance',
  dt_fin_effet_assur TIMESTAMP COMMENT 'date de fin d effet d assurance',
  dt_encaissement TIMESTAMP COMMENT 'date d encaissement',
  dt_effet_operation TIMESTAMP COMMENT 'date d effet de l op�ration',
  id_dossier STRING COMMENT 'Identifiant Dossier Taiga',
  id_encaissement STRING COMMENT 'Identifiant Encaissement Taiga',
  id_affectation STRING COMMENT 'Identifiant Affectation Taiga',
  ref_contrat STRING COMMENT 'R�f�rence Contrat (RPP) sur 13 caract�re cadr�s � gauche',
  compta_nb_mvts BIGINT COMMENT 'Nombre de mouvements - fichier operas',
  compta_num_mvts BIGINT COMMENT 'Numero du mouvement dans l acte - fichier operas',
  cd_uv STRING COMMENT 'code UV',
  cd_ut STRING COMMENT 'code UT',
  canal_rdu STRING COMMENT 'Canal RDU')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_comptabilite';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_dividende (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_dividende BIGINT COMMENT 'Identifiant dividende',
  cd_isin STRING COMMENT 'Code ISIN',
  devise STRING COMMENT 'Devise',
  dt_distribution TIMESTAMP COMMENT 'Date de distribution',
  mt_dividende DECIMAL(18,8) COMMENT 'Montant du dividende',
  dt_valeur TIMESTAMP COMMENT 'Date de valeur',
  vl_utilisee_detachement DECIMAL(18,8) COMMENT 'VL utilis�e au d�tachement',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_dividende';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_fusion_absorption (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_fusion_absorbsion BIGINT COMMENT 'Identifiant Fusion   Absorbsion',
  cd_isin_absorbe STRING COMMENT 'Code ISIN absorb�',
  isin_absorbant_ou_nouvel_isin STRING COMMENT 'Code ISIN absorbant ou nouveau code ISIN',
  dt_absorption TIMESTAMP COMMENT 'Date d absorption',
  dt_valeur TIMESTAMP COMMENT 'Date de valeur',
  parite DECIMAL(18,8) COMMENT 'Parit�')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_fusion_absorption';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_pm_inventaire (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_pm TIMESTAMP COMMENT 'Date PM',
  pm_tmg_a_dt_extract DECIMAL(18,8) COMMENT 'PM TMG � la Date d extraction',
  pm_anticipees_a_dt_extract DECIMAL(18,8) COMMENT 'PM Anticip�es � la Date d extraction',
  pm_brutes DECIMAL(18,8) COMMENT 'PM Brutes',
  pm_nettes DECIMAL(18,8) COMMENT 'PM Nettes',
  nombre_parts DECIMAL(25,10) COMMENT 'Nombre de parts',
  interets_techniques_inclus DECIMAL(18,8) COMMENT 'Int�r�ts techniques inclus',
  participation_resultat_incluse DECIMAL(18,8) COMMENT 'Participation au r�sultat incluse',
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
  frais_garantie_exo_continuite DECIMAL(18,8) COMMENT 'Frais garantie exo (continuit�)',
  frais_transfert DECIMAL(18,8) COMMENT 'Frais de transfert',
  frais_arbitrage DECIMAL(18,8) COMMENT 'Frais d arbitrage',
  frais_gestion_uc DECIMAL(18,8) COMMENT 'Frais de gestion UC',
  frais_gestion_euro DECIMAL(18,8) COMMENT 'Frais de gestion EURO',
  frais_rente DECIMAL(18,8) COMMENT 'Frais de rente',
  pm_3_2_reactualisee DECIMAL(18,8) COMMENT 'PM 31 12 r�actualis�e',
  acav DECIMAL(18,8) COMMENT 'ACAV',
  dt_calcul_pm TIMESTAMP COMMENT 'Date de calcul de la PM')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_pm_inventaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_liste_cd_lib (
  societe STRING COMMENT 'Soci�t�',
  type_liste STRING COMMENT 'Type de liste',
  cd STRING COMMENT 'Code',
  lib STRING COMMENT 'Libell�',
  col_hadoop STRING COMMENT 'colonne(s) hadoop concern�e(s)')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_liste_cd_lib';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_liste_cd_lib_all (
  societe STRING COMMENT 'Soci�t�',
  type_liste STRING COMMENT 'Type de liste',
  cd STRING COMMENT 'Code',
  lib STRING COMMENT 'Libell�',
  col_hadoop STRING COMMENT 'colonne(s) hadoop concern�e(s)')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_liste_cd_lib';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_cnt_remplace (
  sys_emet STRING COMMENT 'Syst�me �meteur',
  date_trait_orig TIMESTAMP COMMENT 'Date de traitement Origine',
  ref_contrat STRING COMMENT 'R�f�rence Contrat',
  date_eff_contrat TIMESTAMP COMMENT 'Date d effet du contrat',
  id_event STRING COMMENT 'Identifiant Ev�nement',
  event STRING COMMENT 'Ev�nement',
  sens_event STRING COMMENT 'Sens de Ev�nement',
  date_sais_event TIMESTAMP COMMENT 'Date de saisie de l Ev�nement',
  date_eff_event TIMESTAMP COMMENT 'Date d effet de l Ev�nement',
  statut_contrat STRING COMMENT 'Statut du contrat',
  motif_statut STRING COMMENT 'Motif du Statut',
  code_1 STRING COMMENT 'Code 1',
  type_code_1 STRING COMMENT 'Type de code 1',
  code_2 STRING COMMENT 'Code 2',
  type_code_2 STRING COMMENT 'Type de code 2')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_cnt_remplace';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_cnt_remplace_all (
  sys_emet STRING COMMENT 'Syst�me �meteur',
  date_trait_orig TIMESTAMP COMMENT 'Date de traitement Origine',
  ref_contrat STRING COMMENT 'R�f�rence Contrat',
  date_eff_contrat TIMESTAMP COMMENT 'Date d effet du contrat',
  id_event STRING COMMENT 'Identifiant Ev�nement',
  event STRING COMMENT 'Ev�nement',
  sens_event STRING COMMENT 'Sens de Ev�nement',
  date_sais_event TIMESTAMP COMMENT 'Date de saisie de l Ev�nement',
  date_eff_event TIMESTAMP COMMENT 'Date d effet de l Ev�nement',
  statut_contrat STRING COMMENT 'Statut du contrat',
  motif_statut STRING COMMENT 'Motif du Statut',
  code_1 STRING COMMENT 'Code 1',
  type_code_1 STRING COMMENT 'Type de code 1',
  code_2 STRING COMMENT 'Code 2',
  type_code_2 STRING COMMENT 'Type de code 2')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_cnt_remplace';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affiliation (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affilie BIGINT COMMENT 'Identifiant affili�',
  num_affiliation STRING COMMENT 'Num�ro d affiliation',
  dt_effet_adhesion_affilie TIMESTAMP COMMENT 'Date d effet',
  statut_affiliation STRING COMMENT 'Statut de l affiliation',
  dt_effet_statut_affilie TIMESTAMP COMMENT 'Date d effet du statut',
  dt_entree_entreprise TIMESTAMP COMMENT 'Date d entr�e dans l entreprise',
  age_depart_retraite BIGINT COMMENT 'Age de d�part en retraite',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_perso STRING COMMENT 'T�l�phone Perso',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affiliation';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affiliation_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affilie BIGINT COMMENT 'Identifiant affili�',
  num_affiliation STRING COMMENT 'Num�ro d affiliation',
  dt_effet_adhesion_affilie TIMESTAMP COMMENT 'Date d effet',
  statut_affiliation STRING COMMENT 'Statut de l affiliation',
  dt_effet_statut_affilie TIMESTAMP COMMENT 'Date d effet du statut',
  dt_entree_entreprise TIMESTAMP COMMENT 'Date d entr�e dans l entreprise',
  age_depart_retraite BIGINT COMMENT 'Age de d�part en retraite',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_perso STRING COMMENT 'T�l�phone Perso',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affiliation';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affilie (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affilie BIGINT COMMENT 'Identifiant affili�',
  matricule STRING COMMENT 'Matricule',
  civilite STRING COMMENT 'Civilit�',
  nom STRING COMMENT 'Nom',
  nom_jeune_fille STRING COMMENT 'Nom de jeune fille',
  prenom STRING COMMENT 'Pr�nom',
  dt_naissance TIMESTAMP COMMENT 'Date de naissance',
  ville_naissance STRING COMMENT 'Ville de naissance',
  cd_pays_naissance STRING COMMENT 'Code pays de Naissance',
  pays_naissance STRING COMMENT 'Pays de naissance',
  sexe STRING COMMENT 'Sexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'T�l�phone Perso',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affilie';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_affilie_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_affilie BIGINT COMMENT 'Identifiant affili�',
  matricule STRING COMMENT 'Matricule',
  civilite STRING COMMENT 'Civilit�',
  nom STRING COMMENT 'Nom',
  nom_jeune_fille STRING COMMENT 'Nom de jeune fille',
  prenom STRING COMMENT 'Pr�nom',
  dt_naissance TIMESTAMP COMMENT 'Date de naissance',
  ville_naissance STRING COMMENT 'Ville de naissance',
  cd_pays_naissance STRING COMMENT 'Code pays de Naissance',
  pays_naissance STRING COMMENT 'Pays de naissance',
  sexe STRING COMMENT 'Sexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'T�l�phone Perso',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_affilie';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_arbitrage_automatique (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  type_rebalancement STRING COMMENT 'Type de rebalancement',
  periodicite STRING COMMENT 'P�riodicit�')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_arbitrage_automatique';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_arbitrage_automatique_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  type_rebalancement STRING COMMENT 'Type de rebalancement',
  periodicite STRING COMMENT 'P�riodicit�')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_arbitrage_automatique';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_choix_garantie_secondaire (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_statut BIGINT COMMENT 'Identifiant statut',
  id_choix_garantie BIGINT COMMENT 'Identifiant choix garantie',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  statut STRING COMMENT 'Statut',
  dt_reception TIMESTAMP COMMENT 'Date de r�ception',
  dt_effet TIMESTAMP COMMENT 'Date d effet',
  dt_cloture TIMESTAMP COMMENT 'Date de cl�ture',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie',
  duree_franchise BIGINT COMMENT 'Dur�e de franchise',
  duree_carence BIGINT COMMENT 'Dur�e de carence')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_choix_garantie_secondaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  typologie_contrat STRING COMMENT 'Typologie de contrat',
  cd_groupe_contrat BIGINT COMMENT 'Code groupe de contrat',
  id_produit STRING COMMENT 'Identifiant produit',
  num_contrat STRING COMMENT 'Num�ro de contrat RPP',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code entit� juridique',
  lib_entite_juridique STRING COMMENT 'Libell� Entit� Juridique',
  statut_contrat STRING COMMENT 'Statut du contrat',
  dt_effet_statut_contrat TIMESTAMP COMMENT 'Date d effet du statut du contrat',
  num_convention STRING COMMENT 'Num�ro de convention',
  dt_saisie_contrat TIMESTAMP COMMENT 'Date de saisie du contrat',
  dt_signature TIMESTAMP COMMENT 'Date de signature',
  dt_effet_adhesion_entreprise TIMESTAMP COMMENT 'Date d effet',
  college STRING COMMENT 'Coll�ge',
  detail_college STRING COMMENT 'D�tail Coll�ge',
  age_theo_depart_retraite BIGINT COMMENT 'Age th�orique de d�part en retraite',
  reseau_commercial STRING COMMENT 'R�seau commercial',
  periodicite_cotis STRING COMMENT 'P�riodicit� des cotisations',
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
  lib_regle_cotis_complexe STRING COMMENT 'Libell� correspondant � une r�gle de cotisation complexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  nb_affiliations_active BIGINT COMMENT 'Nombre d Affiliations   active  ',
  nb_affiliations_deces BIGINT COMMENT 'Nombre d Affiliations   d�c�s  ',
  nb_affiliations_transferee BIGINT COMMENT 'Nombre d Affiliations   transf�r�e  ',
  nb_affiliations_reduite BIGINT COMMENT 'Nombre d Affiliations   r�duite  ',
  nb_affiliations_liquidee BIGINT COMMENT 'Nombre d Affiliations   liquid�e  ',
  frequence_revalo_contrat STRING COMMENT 'Fr�quence revalorisation contrat',
  type_echeance_cotis STRING COMMENT 'Type d �ch�ance de la cotisation',
  cd_produit_systeme_source STRING COMMENT 'Code produit du syst�me source')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  typologie_contrat STRING COMMENT 'Typologie de contrat',
  cd_groupe_contrat BIGINT COMMENT 'Code groupe de contrat',
  id_produit STRING COMMENT 'Identifiant produit',
  num_contrat STRING COMMENT 'Num�ro de contrat RPP',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code entit� juridique',
  lib_entite_juridique STRING COMMENT 'Libell� Entit� Juridique',
  statut_contrat STRING COMMENT 'Statut du contrat',
  dt_effet_statut_contrat TIMESTAMP COMMENT 'Date d effet du statut du contrat',
  num_convention STRING COMMENT 'Num�ro de convention',
  dt_saisie_contrat TIMESTAMP COMMENT 'Date de saisie du contrat',
  dt_signature TIMESTAMP COMMENT 'Date de signature',
  dt_effet_adhesion_entreprise TIMESTAMP COMMENT 'Date d effet',
  college STRING COMMENT 'Coll�ge',
  detail_college STRING COMMENT 'D�tail Coll�ge',
  age_theo_depart_retraite BIGINT COMMENT 'Age th�orique de d�part en retraite',
  reseau_commercial STRING COMMENT 'R�seau commercial',
  periodicite_cotis STRING COMMENT 'P�riodicit� des cotisations',
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
  lib_regle_cotis_complexe STRING COMMENT 'Libell� correspondant � une r�gle de cotisation complexe',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  nb_affiliations_active BIGINT COMMENT 'Nombre d Affiliations   active  ',
  nb_affiliations_deces BIGINT COMMENT 'Nombre d Affiliations   d�c�s  ',
  nb_affiliations_transferee BIGINT COMMENT 'Nombre d Affiliations   transf�r�e  ',
  nb_affiliations_reduite BIGINT COMMENT 'Nombre d Affiliations   r�duite  ',
  nb_affiliations_liquidee BIGINT COMMENT 'Nombre d Affiliations   liquid�e  ',
  frequence_revalo_contrat STRING COMMENT 'Fr�quence revalorisation contrat',
  type_echeance_cotis STRING COMMENT 'Type d �ch�ance de la cotisation',
  cd_produit_systeme_source STRING COMMENT 'Code produit du syst�me source')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat_gestion_support (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  niveau STRING COMMENT 'Niveau',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  id_support BIGINT COMMENT 'Identifiant support',
  cd_assureur STRING COMMENT 'Code assureur',
  lib_crt_gestion_ou_support STRING COMMENT 'Libell� court gestion ou support',
  lib_lg_gestion_ou_support STRING COMMENT 'Libell� long gestion ou support',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat_gestion_support';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_contrat_gestion_support_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  niveau STRING COMMENT 'Niveau',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  id_support BIGINT COMMENT 'Identifiant support',
  cd_assureur STRING COMMENT 'Code assureur',
  lib_crt_gestion_ou_support STRING COMMENT 'Libell� court gestion ou support',
  lib_lg_gestion_ou_support STRING COMMENT 'Libell� long gestion ou support',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_contrat_gestion_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_correspondant (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_correspondant BIGINT COMMENT 'Identifiant correspondant',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_personne BIGINT COMMENT 'Identifiant personne',
  type_correspondant STRING COMMENT 'Type de correspondant',
  fonction_correspondant STRING COMMENT 'Fonction du correspondant',
  civilite_correspondant STRING COMMENT 'Civilit� du correspondant',
  nom_correspondant STRING COMMENT 'Nom du correspondant',
  prenom_correspondant STRING COMMENT 'Pr�nom du correspondant',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'T�l�phone Perso',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_correspondant';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_correspondant_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_correspondant BIGINT COMMENT 'Identifiant correspondant',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_personne BIGINT COMMENT 'Identifiant personne',
  type_correspondant STRING COMMENT 'Type de correspondant',
  fonction_correspondant STRING COMMENT 'Fonction du correspondant',
  civilite_correspondant STRING COMMENT 'Civilit� du correspondant',
  nom_correspondant STRING COMMENT 'Nom du correspondant',
  prenom_correspondant STRING COMMENT 'Pr�nom du correspondant',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  cd_pays STRING COMMENT 'Code pays',
  pays STRING COMMENT 'Pays',
  tel_perso STRING COMMENT 'T�l�phone Perso',
  tel_pro STRING COMMENT 'T�l�phone Pro',
  mobile STRING COMMENT 'Mobile',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  npai STRING COMMENT 'NPAI',
  id_web STRING COMMENT 'Identifiant Web')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_correspondant';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_detail_frais (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_detail_frais BIGINT COMMENT 'Identifiant d�tail frais',
  id_mouvement BIGINT COMMENT 'Identifiant mouvement',
  type_frais STRING COMMENT 'Type de frais',
  mt_frais DECIMAL(18,8) COMMENT 'Montant',
  tx_frais DECIMAL(18,8) COMMENT 'Taux',
  assiette DECIMAL(18,8) COMMENT 'Assiette',
  id_tarification BIGINT COMMENT 'Identifiant Tarification')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_detail_frais';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_encaissement (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_encaissement BIGINT COMMENT 'Identifiant encaissement',
  type_encaissement STRING COMMENT 'Type d encaissement',
  dt_encaissement TIMESTAMP COMMENT 'Date d encaissement',
  ref STRING COMMENT 'R�f�rence',
  ref_bordereau STRING COMMENT 'R�f�rence bordereau',
  ref_releve_bancaire STRING COMMENT 'R�f�rence relev� bancaire',
  mt_encaissement DECIMAL(18,8) COMMENT 'Montant',
  compte_bancaire STRING COMMENT 'Compte bancaire',
  annulation STRING COMMENT 'Annulation',
  id_encaissement_annule BIGINT COMMENT 'Identifiant encaissement annul�',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_encaissement';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_encaissement_repartition (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_encaissement_repart BIGINT COMMENT 'Identifiant encaissement r�partition',
  id_encaissement BIGINT COMMENT 'Identifiant encaissement',
  id_dossier BIGINT COMMENT 'Identifiant dossier',
  ref_lettrage STRING COMMENT 'R�f�rence lettrage',
  mt_affecte DECIMAL(18,8) COMMENT 'Montant affect�',
  annulation STRING COMMENT 'Annulation',
  id_e_r_annule BIGINT COMMENT 'identifiant E R annul�',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_encaissement_repartition';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entite_reseau (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entite_reseau BIGINT COMMENT 'Identifiant entit� r�seau',
  cd_entite_reseau STRING COMMENT 'Code entit� r�seau',
  lib_entite_reseau STRING COMMENT 'Libell� entit� r�seau',
  reseau_commercial STRING COMMENT 'R�seau commercial',
  niveau STRING COMMENT 'Niveau',
  modele STRING COMMENT 'Mod�le',
  mode_distribution STRING COMMENT 'Mode de distribution',
  id_web STRING COMMENT 'Identifiant Web')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entite_reseau';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entite_reseau_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entite_reseau BIGINT COMMENT 'Identifiant entit� r�seau',
  cd_entite_reseau STRING COMMENT 'Code entit� r�seau',
  lib_entite_reseau STRING COMMENT 'Libell� entit� r�seau',
  reseau_commercial STRING COMMENT 'R�seau commercial',
  niveau STRING COMMENT 'Niveau',
  modele STRING COMMENT 'Mod�le',
  mode_distribution STRING COMMENT 'Mode de distribution',
  id_web STRING COMMENT 'Identifiant Web')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entite_reseau';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entreprise (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  matricule STRING COMMENT 'Matricule',
  raison_sociale STRING COMMENT 'Raison sociale',
  forme_juridique STRING COMMENT 'Forme juridique',
  capital_social DECIMAL(18,8) COMMENT 'Capital social',
  dt_creation_etablissement TIMESTAMP COMMENT 'Date de cr�ation de l �tablissement',
  id_maison_mere BIGINT COMMENT 'Identifiant de la maison m�re',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d�Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d�Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d�Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d�Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  tel STRING COMMENT 'T�l�phone',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  cd_pays STRING COMMENT 'Code Pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  cd_naf STRING COMMENT 'Code NAF',
  num_siret STRING COMMENT 'Num�ro SIRET',
  num_siren STRING COMMENT 'Num�ro SIREN',
  ville_greffe STRING COMMENT 'Ville de greffe',
  cd_registre_commerce_societes STRING COMMENT 'Code Registre du Commerce et des Soci�t�s',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entreprise';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_entreprise_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_entreprise BIGINT COMMENT 'Identifiant entreprise',
  matricule STRING COMMENT 'Matricule',
  raison_sociale STRING COMMENT 'Raison sociale',
  forme_juridique STRING COMMENT 'Forme juridique',
  capital_social DECIMAL(18,8) COMMENT 'Capital social',
  dt_creation_etablissement TIMESTAMP COMMENT 'Date de cr�ation de l �tablissement',
  id_maison_mere BIGINT COMMENT 'Identifiant de la maison m�re',
  adresse STRING COMMENT 'Adresse',
  cplt_adr STRING COMMENT 'Compl�ment d�Adresse 1',
  cplt_adr_2 STRING COMMENT 'Compl�ment d�Adresse 2',
  cplt_adr_3 STRING COMMENT 'Compl�ment d�Adresse 3',
  cplt_adr_4 STRING COMMENT 'Compl�ment d�Adresse 4',
  cd_postal STRING COMMENT 'Code postal',
  ville STRING COMMENT 'Ville',
  tel STRING COMMENT 'T�l�phone',
  fax STRING COMMENT 'Fax',
  email STRING COMMENT 'Adresse e-mail',
  cd_pays STRING COMMENT 'Code Pays',
  pays STRING COMMENT 'Pays',
  npai STRING COMMENT 'NPAI',
  cd_naf STRING COMMENT 'Code NAF',
  num_siret STRING COMMENT 'Num�ro SIRET',
  num_siren STRING COMMENT 'Num�ro SIREN',
  ville_greffe STRING COMMENT 'Ville de greffe',
  cd_registre_commerce_societes STRING COMMENT 'Code Registre du Commerce et des Soci�t�s',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_entreprise';


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


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_garantie_secondaire (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_produit STRING COMMENT 'Identifiant produit',
  type_garantie STRING COMMENT 'Type de garantie',
  lib_crt_garantie_compltaire STRING COMMENT 'Libell� court',
  lib_lg_garantie_compltaire STRING COMMENT 'Libell� long',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validit�',
  reassureur STRING COMMENT 'R�assureur',
  traite_reassurance STRING COMMENT 'Trait� de r�assurance',
  option STRING COMMENT 'Option 1',
  option_2 STRING COMMENT 'Option 2',
  tx_min DECIMAL(18,8) COMMENT 'Taux min',
  tx_max DECIMAL(18,8) COMMENT 'Taux max',
  mt_min DECIMAL(18,8) COMMENT 'Montant min',
  mt_max DECIMAL(18,8) COMMENT 'Montant max',
  delais_min BIGINT COMMENT 'D�lais min',
  delais_max BIGINT COMMENT 'D�lais max')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_garantie_secondaire';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_garantie_secondaire_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_produit STRING COMMENT 'Identifiant produit',
  type_garantie STRING COMMENT 'Type de garantie',
  lib_crt_garantie_compltaire STRING COMMENT 'Libell� court',
  lib_lg_garantie_compltaire STRING COMMENT 'Libell� long',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validit�',
  reassureur STRING COMMENT 'R�assureur',
  traite_reassurance STRING COMMENT 'Trait� de r�assurance',
  option STRING COMMENT 'Option 1',
  option_2 STRING COMMENT 'Option 2',
  tx_min DECIMAL(18,8) COMMENT 'Taux min',
  tx_max DECIMAL(18,8) COMMENT 'Taux max',
  mt_min DECIMAL(18,8) COMMENT 'Montant min',
  mt_max DECIMAL(18,8) COMMENT 'Montant max',
  delais_min BIGINT COMMENT 'D�lais min',
  delais_max BIGINT COMMENT 'D�lais max')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_garantie_secondaire';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_financiere (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  id_produit STRING COMMENT 'Identifiant produit',
  type_gestion STRING COMMENT 'Type de gestion',
  type_pilotage STRING COMMENT 'Type de pilotage',
  lib_crt_garantie_financiere STRING COMMENT 'Libell� court',
  lib_lg_garantie_financiere STRING COMMENT 'Libell� long',
  lib_crt_panier STRING COMMENT 'Libell� court Panier',
  lib_lg_panier STRING COMMENT 'Libell� long Panier',
  canton_fiscal STRING COMMENT 'Canton Fiscal',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_financiere';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_financiere_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  id_produit STRING COMMENT 'Identifiant produit',
  type_gestion STRING COMMENT 'Type de gestion',
  type_pilotage STRING COMMENT 'Type de pilotage',
  lib_crt_garantie_financiere STRING COMMENT 'Libell� court',
  lib_lg_garantie_financiere STRING COMMENT 'Libell� long',
  lib_crt_panier STRING COMMENT 'Libell� court Panier',
  lib_lg_panier STRING COMMENT 'Libell� long Panier',
  canton_fiscal STRING COMMENT 'Canton Fiscal',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_financiere';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_pilotee (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  num_tranche BIGINT COMMENT 'Num�ro tranche',
  id_support BIGINT COMMENT 'Identifiant support',
  type_tranche STRING COMMENT 'Type de tranche',
  borne_inf BIGINT COMMENT 'Borne inf�rieure',
  borne_sup BIGINT COMMENT 'Borne superieure',
  tx_repartition DECIMAL(18,8) COMMENT 'Taux de r�partition')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_pilotee';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_gestion_pilotee_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_garantie BIGINT COMMENT 'Identifiant garantie',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  num_tranche BIGINT COMMENT 'Num�ro tranche',
  id_support BIGINT COMMENT 'Identifiant support',
  type_tranche STRING COMMENT 'Type de tranche',
  borne_inf BIGINT COMMENT 'Borne inf�rieure',
  borne_sup BIGINT COMMENT 'Borne superieure',
  tx_repartition DECIMAL(18,8) COMMENT 'Taux de r�partition')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_gestion_pilotee';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_lien_reseau (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_lien_reseau BIGINT COMMENT 'Identifiant Lien r�seau',
  id_contrat BIGINT COMMENT 'identifiant contrat',
  id_entite_reseau BIGINT COMMENT 'Identifiant entit� r�seau',
  type_lien STRING COMMENT 'Type de lien',
  dt_debut TIMESTAMP COMMENT 'Date de d�but',
  dt_fin TIMESTAMP COMMENT 'Date de fin')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_lien_reseau';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_lien_reseau_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_lien_reseau BIGINT COMMENT 'Identifiant Lien r�seau',
  id_contrat BIGINT COMMENT 'identifiant contrat',
  id_entite_reseau BIGINT COMMENT 'Identifiant entit� r�seau',
  type_lien STRING COMMENT 'Type de lien',
  dt_debut TIMESTAMP COMMENT 'Date de d�but',
  dt_fin TIMESTAMP COMMENT 'Date de fin')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_lien_reseau';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_mouvement (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_mouvement BIGINT COMMENT 'Identifiant mouvement',
  id_operation_financiere BIGINT COMMENT 'Identifiant op�ration financi�re',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financiere',
  id_support BIGINT COMMENT 'Identifiant support',
  mt_brut DECIMAL(18,8) COMMENT 'Montant brut',
  mt_frais_epargne DECIMAL(18,8) COMMENT 'Montant des frais d �pargne',
  mt_frais_financt_garantie DECIMAL(18,8) COMMENT 'Montant des frais de financement de garantie',
  mt_taxes DECIMAL(18,8) COMMENT 'Montant des taxes',
  mt_net_retraite DECIMAL(18,8) COMMENT 'Montant net retraite',
  mt_reel DECIMAL(18,8) COMMENT 'Montant r�el',
  nombre_parts DECIMAL(25,10) COMMENT 'Nombre de parts',
  dt_valeur TIMESTAMP COMMENT 'Date de valeur',
  interets_techniques_inclus DECIMAL(18,8) COMMENT 'Int�r�ts techniques inclus',
  participation_resultat_incluse DECIMAL(18,8) COMMENT 'Participation au r�sultat incluse',
  valeur_liquidative_support DECIMAL(18,8) COMMENT 'Valeur liquidative du support',
  dt_traitt_valorisation TIMESTAMP COMMENT 'Date du traitement de valorisation',
  dt_investissement TIMESTAMP COMMENT 'Date d investissement')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_mouvement';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_operation_financiere (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_operation_financiere BIGINT COMMENT 'Identifiant op�ration',
  id_dossier BIGINT COMMENT 'Identifiant dossier',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  dt_effet_dossier TIMESTAMP COMMENT 'Date d effet',
  nature_operation STRING COMMENT 'Nature op�ration',
  type_operation STRING COMMENT 'Type d op�ration',
  mode_reglement STRING COMMENT 'Mode r�glement',
  dt_reception TIMESTAMP COMMENT 'Date de r�ception',
  dt_debut_periode TIMESTAMP COMMENT 'Date de d�but de p�riode',
  dt_fin_periode TIMESTAMP COMMENT 'Date de fin de p�riode',
  mt_brut DECIMAL(18,8) COMMENT 'Montant brut',
  mt_frais_epargne DECIMAL(18,8) COMMENT 'Montant des frais d �pargne',
  mt_frais_financt_garantie DECIMAL(18,8) COMMENT 'Montant des frais de financement de garantie',
  mt_taxes DECIMAL(18,8) COMMENT 'Montant des taxes',
  mt_net_retraite DECIMAL(18,8) COMMENT 'Montant net retraite',
  dt_traitt_valoris_operation TIMESTAMP COMMENT 'Date de traitement de la valorisation de l op�ration',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_dossier_annule BIGINT COMMENT 'Identifiant dossier annul�',
  id_dossier_racine STRING COMMENT 'Identifiant dossier racine',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_operation_financiere';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_option_rente (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_option_rente BIGINT COMMENT 'Identifiant option rente',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_option_rente STRING COMMENT 'Type d option rente',
  lib_crt_option_rente STRING COMMENT 'Libell� court',
  lib_lg_option_rente STRING COMMENT 'Libell� long',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validit�',
  tx DECIMAL(18,8) COMMENT 'Taux 1',
  tx_2 DECIMAL(18,8) COMMENT 'Taux 2',
  mt DECIMAL(18,8) COMMENT 'Montant 1',
  mt_2 DECIMAL(18,8) COMMENT 'Montant 2',
  delai BIGINT COMMENT 'D�lai 1',
  delai_2 BIGINT COMMENT 'D�lai 2')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_option_rente';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_option_rente_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_option_rente BIGINT COMMENT 'Identifiant option rente',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_option_rente STRING COMMENT 'Type d option rente',
  lib_crt_option_rente STRING COMMENT 'Libell� court',
  lib_lg_option_rente STRING COMMENT 'Libell� long',
  age_limite_souscription BIGINT COMMENT 'Age limite de souscription',
  age_limite_validite BIGINT COMMENT 'Age limite de validit�',
  tx DECIMAL(18,8) COMMENT 'Taux 1',
  tx_2 DECIMAL(18,8) COMMENT 'Taux 2',
  mt DECIMAL(18,8) COMMENT 'Montant 1',
  mt_2 DECIMAL(18,8) COMMENT 'Montant 2',
  delai BIGINT COMMENT 'D�lai 1',
  delai_2 BIGINT COMMENT 'D�lai 2')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_option_rente';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_plan_versement (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  type_plan STRING COMMENT 'Type de plan',
  statut_plan STRING COMMENT 'Statut',
  derogeable STRING COMMENT 'D�rogeable',
  dt_reception TIMESTAMP COMMENT 'Date R�ception',
  dt_debut TIMESTAMP COMMENT 'Date D�but',
  periodicite STRING COMMENT 'P�riodicit�',
  dt_cloture TIMESTAMP COMMENT 'Date de cl�ture',
  dt_prochaine_echeance TIMESTAMP COMMENT 'Date de prochaine �ch�ance',
  mt_plan DECIMAL(18,8) COMMENT 'Montant',
  mode_reglement STRING COMMENT 'Mode de r�glement',
  support_attente STRING COMMENT 'Support d attente',
  type_repartition STRING COMMENT 'Type de r�partition',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  tx_repart_gestion_financiere DECIMAL(18,8) COMMENT 'Taux r�partition gestion financi�re',
  id_support BIGINT COMMENT 'Identifiant support',
  tx_repartition_support DECIMAL(18,8) COMMENT 'Taux de r�partition Support',
  bic STRING COMMENT 'BIC')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_plan_versement';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_plan_versement_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  type_plan STRING COMMENT 'Type de plan',
  statut_plan STRING COMMENT 'Statut',
  derogeable STRING COMMENT 'D�rogeable',
  dt_reception TIMESTAMP COMMENT 'Date R�ception',
  dt_debut TIMESTAMP COMMENT 'Date D�but',
  periodicite STRING COMMENT 'P�riodicit�',
  dt_cloture TIMESTAMP COMMENT 'Date de cl�ture',
  dt_prochaine_echeance TIMESTAMP COMMENT 'Date de prochaine �ch�ance',
  mt_plan DECIMAL(18,8) COMMENT 'Montant',
  mode_reglement STRING COMMENT 'Mode de r�glement',
  support_attente STRING COMMENT 'Support d attente',
  type_repartition STRING COMMENT 'Type de r�partition',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  tx_repart_gestion_financiere DECIMAL(18,8) COMMENT 'Taux r�partition gestion financi�re',
  id_support BIGINT COMMENT 'Identifiant support',
  tx_repartition_support DECIMAL(18,8) COMMENT 'Taux de r�partition Support',
  bic STRING COMMENT 'BIC')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_plan_versement';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_prime_versee (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_dossier BIGINT COMMENT 'Identifiant dossier',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  dt_effet_dossier TIMESTAMP COMMENT 'Date d effet',
  nature_operation STRING COMMENT 'Nature op�ration',
  type_operation STRING COMMENT 'Type d op�ration',
  mode_reglement STRING COMMENT 'Mode r�glement',
  dt_reception TIMESTAMP COMMENT 'Date de r�ception',
  dt_debut_periode TIMESTAMP COMMENT 'Date de d�but de p�riode',
  dt_fin_periode TIMESTAMP COMMENT 'Date de fin de p�riode',
  mt_brut DECIMAL(18,8) COMMENT 'Montant brut',
  id_plan BIGINT COMMENT 'Identifiant plan',
  id_dossier_annule BIGINT COMMENT 'Identifiant dossier annul�',
  dt_saisie TIMESTAMP COMMENT 'Date de saisie')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_prime_versee';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_produit (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  typologie_produit STRING COMMENT 'Typologie du produit',
  lib_crt_produit_technique STRING COMMENT 'Libell� Court Produit Technique',
  lib_lg_produit_technique STRING COMMENT 'Libell� Long Produit Technique',
  lib_produit_commerc_crt STRING COMMENT 'Libell� Produit Commercial Court',
  lib_produit_commerc_lg STRING COMMENT 'Libell� Produit Commercial Long',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code Entit� Juridique',
  entite_juridique STRING COMMENT 'Entit� Juridique',
  type_commerc STRING COMMENT 'Type de commercialisation',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  num_convention STRING COMMENT 'Num�ro de convention',
  portefeuille STRING COMMENT 'Portefeuille',
  systeme_source STRING COMMENT 'Syst�me source')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_produit';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_produit_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_produit STRING COMMENT 'Identifiant produit',
  typologie_produit STRING COMMENT 'Typologie du produit',
  lib_crt_produit_technique STRING COMMENT 'Libell� Court Produit Technique',
  lib_lg_produit_technique STRING COMMENT 'Libell� Long Produit Technique',
  lib_produit_commerc_crt STRING COMMENT 'Libell� Produit Commercial Court',
  lib_produit_commerc_lg STRING COMMENT 'Libell� Produit Commercial Long',
  assureur STRING COMMENT 'Assureur',
  cd_entite_juridique STRING COMMENT 'Code Entit� Juridique',
  entite_juridique STRING COMMENT 'Entit� Juridique',
  type_commerc STRING COMMENT 'Type de commercialisation',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  num_convention STRING COMMENT 'Num�ro de convention',
  portefeuille STRING COMMENT 'Portefeuille',
  systeme_source STRING COMMENT 'Syst�me source')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_produit';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_provision_mathematique (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  id_affiliation BIGINT COMMENT 'Identifiant affiliation',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_pm TIMESTAMP COMMENT 'Date PM',
  pm_tmg_a_dt_extract DECIMAL(18,8) COMMENT 'PM TMG � la Date d extraction',
  pm_anticipees_a_dt_extract DECIMAL(18,8) COMMENT 'PM Anticip�es � la Date d extraction',
  pm_brutes DECIMAL(18,8) COMMENT 'PM Brutes',
  pm_nettes DECIMAL(18,8) COMMENT 'PM Nettes',
  nombre_parts DECIMAL(25,10) COMMENT 'Nombre de parts',
  interets_techniques_inclus DECIMAL(18,8) COMMENT 'Int�r�ts techniques inclus',
  participation_resultat_incluse DECIMAL(18,8) COMMENT 'Participation au r�sultat incluse',
  dt_valeur_vl TIMESTAMP COMMENT 'Date de valeur de la VL',
  vl_support DECIMAL(18,8) COMMENT 'VL du support')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_provision_mathematique';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_support (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  type_support STRING COMMENT 'Type Support',
  forme_support STRING COMMENT 'Forme Support',
  isin STRING COMMENT 'ISIN',
  lib_crt_support STRING COMMENT 'Libelle Court Support',
  lib_lg_support STRING COMMENT 'Libelle Long Support',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  portefeuille STRING COMMENT 'Portefeuille')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_support';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_support_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  type_support STRING COMMENT 'Type Support',
  forme_support STRING COMMENT 'Forme Support',
  isin STRING COMMENT 'ISIN',
  lib_crt_support STRING COMMENT 'Libelle Court Support',
  lib_lg_support STRING COMMENT 'Libelle Long Support',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but de commercialisation',
  dt_fin_commerc TIMESTAMP COMMENT 'Fin de commercialisation',
  portefeuille STRING COMMENT 'Portefeuille')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_support';


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_tarification (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_tarification BIGINT COMMENT 'Identifiant tarification',
  id_palier_tarification BIGINT COMMENT 'Identifiant palier tarification',
  identifant_tranche_tarification BIGINT COMMENT 'Identifant tranche tarification',
  acte_tarife STRING COMMENT 'Acte Tarif�',
  famille_frais STRING COMMENT 'Famille de frais',
  type_frais STRING COMMENT 'Type de frais',
  id_produit STRING COMMENT 'Identifiant produit',
  identifian_contrat BIGINT COMMENT 'Identifian contrat',
  canton STRING COMMENT 'Canton',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  type_support STRING COMMENT 'Type de support',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but d application',
  dt_fin_appli TIMESTAMP COMMENT 'Fin d application',
  garantie_financee BIGINT COMMENT 'Garantie financ�e',
  frequence STRING COMMENT 'Fr�quence',
  mode_calcul STRING COMMENT 'Mode de calcul',
  dt_ref STRING COMMENT 'Date de r�f�rence',
  type_palier STRING COMMENT 'Type de palier',
  borne_palier_sup BIGINT COMMENT 'Borne palier sup�rieure',
  assiette_tranche_nb BIGINT COMMENT 'Assiette tranche',
  assiette_tranche_txt STRING COMMENT 'Assiette tranche',
  borne_tranche_inf DECIMAL(18,8) COMMENT 'Borne tranche inf�rieure',
  borne_tranche_sup DECIMAL(18,8) COMMENT 'Borne tranche sup�rieure',
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

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_tarification_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_tarification BIGINT COMMENT 'Identifiant tarification',
  id_palier_tarification BIGINT COMMENT 'Identifiant palier tarification',
  identifant_tranche_tarification BIGINT COMMENT 'Identifant tranche tarification',
  acte_tarife STRING COMMENT 'Acte Tarif�',
  famille_frais STRING COMMENT 'Famille de frais',
  type_frais STRING COMMENT 'Type de frais',
  id_produit STRING COMMENT 'Identifiant produit',
  identifian_contrat BIGINT COMMENT 'Identifian contrat',
  canton STRING COMMENT 'Canton',
  id_gestion_financiere BIGINT COMMENT 'Identifiant gestion financi�re',
  type_support STRING COMMENT 'Type de support',
  id_support BIGINT COMMENT 'Identifiant support',
  dt_deb_commerc TIMESTAMP COMMENT 'D�but d application',
  dt_fin_appli TIMESTAMP COMMENT 'Fin d application',
  garantie_financee BIGINT COMMENT 'Garantie financ�e',
  frequence STRING COMMENT 'Fr�quence',
  mode_calcul STRING COMMENT 'Mode de calcul',
  dt_ref STRING COMMENT 'Date de r�f�rence',
  type_palier STRING COMMENT 'Type de palier',
  borne_palier_sup BIGINT COMMENT 'Borne palier sup�rieure',
  assiette_tranche_nb BIGINT COMMENT 'Assiette tranche',
  assiette_tranche_txt STRING COMMENT 'Assiette tranche',
  borne_tranche_inf DECIMAL(18,8) COMMENT 'Borne tranche inf�rieure',
  borne_tranche_sup DECIMAL(18,8) COMMENT 'Borne tranche sup�rieure',
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


CREATE EXTERNAL TABLE IF NOT EXISTS retraite_taux_support (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_tx STRING COMMENT 'Type de taux',
  dt_debut TIMESTAMP COMMENT 'Date de d�but',
  dt_fin TIMESTAMP COMMENT 'Date de fin',
  tx_support DECIMAL(18,8) COMMENT 'Taux',
  top_calcule STRING COMMENT 'Calcul� ?',
  type_tx_pm STRING COMMENT 'Type de taux PM',
  frequence STRING COMMENT 'Fr�quence')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_taux_support';

CREATE EXTERNAL TABLE IF NOT EXISTS retraite_taux_support_all (
  type_ligne STRING COMMENT 'Type de ligne du fichier (header; corps; footer)',
  id_support BIGINT COMMENT 'Identifiant support',
  id_contrat BIGINT COMMENT 'Identifiant contrat',
  type_tx STRING COMMENT 'Type de taux',
  dt_debut TIMESTAMP COMMENT 'Date de d�but',
  dt_fin TIMESTAMP COMMENT 'Date de fin',
  tx_support DECIMAL(18,8) COMMENT 'Taux',
  top_calcule STRING COMMENT 'Calcul� ?',
  type_tx_pm STRING COMMENT 'Type de taux PM',
  frequence STRING COMMENT 'Fr�quence')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/bicolor_retraite/data/retraite_taux_support';


