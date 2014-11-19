CREATE EXTERNAL TABLE IF NOT EXISTS omega_faits_flux_activites (
  region STRING COMMENT 'R�gion',
  branche STRING COMMENT 'Branche',
  sous_branche STRING COMMENT 'Sous_branche',
  canal_entree STRING COMMENT 'Canal_entr�e',
  date_reception TIMESTAMP COMMENT 'Date_r�ception',
  date_classement TIMESTAMP COMMENT 'Date_classement',
  n_saisine STRING COMMENT 'N_saisine',
  n_contrat STRING COMMENT 'N_contrat',
  code_portefeuille STRING COMMENT 'Code_portefeuille',
  code_siret STRING COMMENT 'Code_SIRET',
  nom_client STRING COMMENT 'Nom_client',
  importance_client STRING COMMENT 'Importance_client',
  nom_intermediaire STRING COMMENT 'Nom_interm�diaire',
  type_intermediaire STRING COMMENT 'Type_interm�diaire',
  departement_intermediaire STRING COMMENT 'D�partement_interm�diaire',
  type_produit STRING COMMENT 'Type_produit',
  libelle_processus_suffixe STRING COMMENT 'Libelle_Processus_Suffixe',
  libelle_processus STRING COMMENT 'Libelle_Processus',
  motif_indexation STRING COMMENT 'Motif_indexation',
  domaine_activite STRING COMMENT 'Domaine_activit�',
  collaborateur STRING COMMENT 'Collaborateur',
  site_collaborateur STRING COMMENT 'Site_collaborateur',
  statut STRING COMMENT 'Statut',
  date_dernier_statut TIMESTAMP COMMENT 'Date_dernier_statut',
  engagement BIGINT COMMENT 'Engagement',
  poids BIGINT COMMENT 'Poids',
  engagement_axa STRING COMMENT 'Engagement_AXA',
  esop_s_idutilisateur STRING COMMENT 'ESOP_S_IDUTILISATEUR',
  esop_s_codetre STRING COMMENT 'ESOP_S_CODETRE',
  esop_s_libelletre STRING COMMENT 'ESOP_S_LIBELLETRE',
  esop_s_montantsmp DECIMAL(10,2) COMMENT 'ESOP_S_MONTANTSMP',
  esop_s_grpsegmentation STRING COMMENT 'ESOP_S_GRPSEGMENTATION',
  esop_s_clauseensemble STRING COMMENT 'ESOP_S_CLAUSEENSEMBLE1',
  esop_s_clauseensemble2 STRING COMMENT 'ESOP_S_CLAUSEENSEMBLE2',
  type_engagement STRING COMMENT 'TypeEngagement',
  typereponse STRING COMMENT 'TypeReponse',
  topdossiercomplet STRING COMMENT 'TopDossierComplet',
  dateindexation TIMESTAMP COMMENT 'DateIndexation',
  codesyndic STRING COMMENT 'CodeSyndic',
  nombal STRING COMMENT 'NomBAL',
  codenaf STRING COMMENT 'CodeNAF',
  libellenaf STRING COMMENT 'LibelleNAF',
  segmentnaf STRING COMMENT 'SegmentNAF',
  chif_freaffaire BIGINT COMMENT 'ChiffreAffaire',
  identifiant_flux BIGINT COMMENT 'Identifiant_Flux',
  date_vision TIMESTAMP COMMENT 'Date_vision')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_faits_flux_activites';

CREATE EXTERNAL TABLE IF NOT EXISTS omega_faits_flux_activites_all (
  region STRING COMMENT 'R�gion',
  branche STRING COMMENT 'Branche',
  sous_branche STRING COMMENT 'Sous_branche',
  canal_entree STRING COMMENT 'Canal_entr�e',
  date_reception TIMESTAMP COMMENT 'Date_r�ception',
  date_classement TIMESTAMP COMMENT 'Date_classement',
  n_saisine STRING COMMENT 'N_saisine',
  n_contrat STRING COMMENT 'N_contrat',
  code_portefeuille STRING COMMENT 'Code_portefeuille',
  code_siret STRING COMMENT 'Code_SIRET',
  nom_client STRING COMMENT 'Nom_client',
  importance_client STRING COMMENT 'Importance_client',
  nom_intermediaire STRING COMMENT 'Nom_interm�diaire',
  type_intermediaire STRING COMMENT 'Type_interm�diaire',
  departement_intermediaire STRING COMMENT 'D�partement_interm�diaire',
  type_produit STRING COMMENT 'Type_produit',
  libelle_processus_suffixe STRING COMMENT 'Libelle_Processus_Suffixe',
  libelle_processus STRING COMMENT 'Libelle_Processus',
  motif_indexation STRING COMMENT 'Motif_indexation',
  domaine_activite STRING COMMENT 'Domaine_activit�',
  collaborateur STRING COMMENT 'Collaborateur',
  site_collaborateur STRING COMMENT 'Site_collaborateur',
  statut STRING COMMENT 'Statut',
  date_dernier_statut TIMESTAMP COMMENT 'Date_dernier_statut',
  engagement BIGINT COMMENT 'Engagement',
  poids BIGINT COMMENT 'Poids',
  engagement_axa STRING COMMENT 'Engagement_AXA',
  esop_s_idutilisateur STRING COMMENT 'ESOP_S_IDUTILISATEUR',
  esop_s_codetre STRING COMMENT 'ESOP_S_CODETRE',
  esop_s_libelletre STRING COMMENT 'ESOP_S_LIBELLETRE',
  esop_s_montantsmp DECIMAL(10,2) COMMENT 'ESOP_S_MONTANTSMP',
  esop_s_grpsegmentation STRING COMMENT 'ESOP_S_GRPSEGMENTATION',
  esop_s_clauseensemble STRING COMMENT 'ESOP_S_CLAUSEENSEMBLE1',
  esop_s_clauseensemble2 STRING COMMENT 'ESOP_S_CLAUSEENSEMBLE2',
  type_engagement STRING COMMENT 'TypeEngagement',
  typereponse STRING COMMENT 'TypeReponse',
  topdossiercomplet STRING COMMENT 'TopDossierComplet',
  dateindexation TIMESTAMP COMMENT 'DateIndexation',
  codesyndic STRING COMMENT 'CodeSyndic',
  nombal STRING COMMENT 'NomBAL',
  codenaf STRING COMMENT 'CodeNAF',
  libellenaf STRING COMMENT 'LibelleNAF',
  segmentnaf STRING COMMENT 'SegmentNAF',
  chif_freaffaire BIGINT COMMENT 'ChiffreAffaire',
  identifiant_flux BIGINT COMMENT 'Identifiant_Flux',
  date_vision TIMESTAMP COMMENT 'Date_vision')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_faits_flux_activites';


CREATE EXTERNAL TABLE IF NOT EXISTS user_faits_presences_collaborateurs (
  matricule STRING COMMENT 'Matricule',
  jour TIMESTAMP COMMENT 'Jour',
  libelle_activite_presence STRING COMMENT 'Libelle_Activite_Presence',
  valeur_presence DECIMAL(2,1) COMMENT 'Valeur_presence')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_faits_presences_collaborateurs';

CREATE EXTERNAL TABLE IF NOT EXISTS user_faits_presences_collaborateurs_all (
  matricule STRING COMMENT 'Matricule',
  jour TIMESTAMP COMMENT 'Jour',
  libelle_activite_presence STRING COMMENT 'Libelle_Activite_Presence',
  valeur_presence DECIMAL(2,1) COMMENT 'Valeur_presence')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_faits_presences_collaborateurs';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_activites_presences (
  libelle_activite_presence STRING COMMENT 'Libelle_Activite_Presence')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_activites_presences';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_activites_presences_all (
  libelle_activite_presence STRING COMMENT 'Libelle_Activite_Presence')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_activites_presences';


CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_branches (
  libelle_branche STRING COMMENT 'Libelle_Branche')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_branches';

CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_branches_all (
  libelle_branche STRING COMMENT 'Libelle_Branche')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_branches';


CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_collaborateurs (
  matricule STRING COMMENT 'Matricule',
  nom STRING COMMENT 'Nom',
  prenom STRING COMMENT 'Prenom',
  profil STRING COMMENT 'Profil',
  region STRING COMMENT 'Region',
  branche STRING COMMENT 'Branche',
  branche_2 STRING COMMENT 'Branche_2',
  branche_3 STRING COMMENT 'Branche_3',
  site STRING COMMENT 'Site',
  domaine_activite STRING COMMENT 'Domaine_Activite',
  domaine_activite_2 STRING COMMENT 'Domaine_Activite_2',
  type_formulaire STRING COMMENT 'Type_Formulaire',
  adresse_mail_service STRING COMMENT 'Adresse_Mail_Service',
  adresse_mail_archivage_service STRING COMMENT 'Adresse_Mail_Archivage_Service')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_collaborateurs';

CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_collaborateurs_all (
  matricule STRING COMMENT 'Matricule',
  nom STRING COMMENT 'Nom',
  prenom STRING COMMENT 'Prenom',
  profil STRING COMMENT 'Profil',
  region STRING COMMENT 'Region',
  branche STRING COMMENT 'Branche',
  branche_2 STRING COMMENT 'Branche_2',
  branche_3 STRING COMMENT 'Branche_3',
  site STRING COMMENT 'Site',
  domaine_activite STRING COMMENT 'Domaine_Activite',
  domaine_activite_2 STRING COMMENT 'Domaine_Activite_2',
  type_formulaire STRING COMMENT 'Type_Formulaire',
  adresse_mail_service STRING COMMENT 'Adresse_Mail_Service',
  adresse_mail_archivage_service STRING COMMENT 'Adresse_Mail_Archivage_Service')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_collaborateurs';


CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_doms_activite (
  libelle_domaine_activite STRING COMMENT 'Libelle_Domaine_Activite',
  libelle_region STRING COMMENT 'Libelle_Region',
  libelle_branche STRING COMMENT 'Libelle_Branche')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_doms_activite';

CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_doms_activite_all (
  libelle_domaine_activite STRING COMMENT 'Libelle_Domaine_Activite',
  libelle_region STRING COMMENT 'Libelle_Region',
  libelle_branche STRING COMMENT 'Libelle_Branche')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_doms_activite';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_motifs_indexation (
  libelle_motif_indexation STRING COMMENT 'Libelle_Motif_Indexation')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_motifs_indexation';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_motifs_indexation_all (
  libelle_motif_indexation STRING COMMENT 'Libelle_Motif_Indexation')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_motifs_indexation';


CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_processus (
  libelle_processus STRING COMMENT 'Libelle_Processus',
  identifiant_processus_ged STRING COMMENT 'Identifiant_Processus_GED',
  libelle_branche STRING COMMENT 'Libelle_Branche')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_processus';

CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_processus_all (
  libelle_processus STRING COMMENT 'Libelle_Processus',
  identifiant_processus_ged STRING COMMENT 'Identifiant_Processus_GED',
  libelle_branche STRING COMMENT 'Libelle_Branche')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_processus';


CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_regions (
  libelle_region STRING COMMENT 'Libelle_Region')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_regions';

CREATE EXTERNAL TABLE IF NOT EXISTS omega_ref_regions_all (
  libelle_region STRING COMMENT 'Libelle_Region')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/group/iard_en/data/dataomega_ref_regions';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_sites (
  libelle_site STRING COMMENT 'Libelle_Site',
  libelle_site_regroupement STRING COMMENT 'Libelle_Site_Regroupement')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_sites';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_sites_all (
  libelle_site STRING COMMENT 'Libelle_Site',
  libelle_site_regroupement STRING COMMENT 'Libelle_Site_Regroupement')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_sites';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_sites_rattachement_distributeurs (
  libelle_branche STRING COMMENT 'Libelle_Branche',
  departement_distributeur STRING COMMENT 'Departement_Distributeur',
  libelle_type_produit STRING COMMENT 'Libelle_Type_Produit',
  libelle_site_distributeur STRING COMMENT 'Libelle_Site_Distributeur')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_sites_rattachement_distributeurs';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_sites_rattachement_distributeurs_all (
  libelle_branche STRING COMMENT 'Libelle_Branche',
  departement_distributeur STRING COMMENT 'Departement_Distributeur',
  libelle_type_produit STRING COMMENT 'Libelle_Type_Produit',
  libelle_site_distributeur STRING COMMENT 'Libelle_Site_Distributeur')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_sites_rattachement_distributeurs';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_sous_branches (
  libelle_sous_branche STRING COMMENT 'Libelle_Sous_Branche')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_sous_branches';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_sous_branches_all (
  libelle_sous_branche STRING COMMENT 'Libelle_Sous_Branche')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_sous_branches';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_statuts (
  libelle_statut STRING COMMENT 'Libelle_Statut')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_statuts';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_statuts_all (
  libelle_statut STRING COMMENT 'Libelle_Statut')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_statuts';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_types_produits (
  libelle_type_produit STRING COMMENT 'Libelle_Type_Produit',
  libelle_regroup_produit STRING COMMENT 'Libelle_Regroup_Produit',
  no_type_produit STRING COMMENT 'No_Type_Produit')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_types_produits';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_types_produits_all (
  libelle_type_produit STRING COMMENT 'Libelle_Type_Produit',
  libelle_regroup_produit STRING COMMENT 'Libelle_Regroup_Produit',
  no_type_produit STRING COMMENT 'No_Type_Produit')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_types_produits';


CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_types_engagements (
  libelle_processus STRING COMMENT 'Libelle_Processus',
  libelle_motif_indexation STRING COMMENT 'Libelle_Motif_indexation',
  libelle_type_engagement STRING COMMENT 'Libelle_Type_Engagement')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_types_engagements';

CREATE EXTERNAL TABLE IF NOT EXISTS user_ref_types_engagements_all (
  libelle_processus STRING COMMENT 'Libelle_Processus',
  libelle_motif_indexation STRING COMMENT 'Libelle_Motif_indexation',
  libelle_type_engagement STRING COMMENT 'Libelle_Type_Engagement')
PARTITIONED BY (yyyy STRING, mm STRING, dd STRING, hhmmss STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/group/iard_en/data/datauser_ref_types_engagements';


