/* for reference sake, the schema for the entire CMS original fee file */

/*   Note: field sizes are not optimized, check appendix A in the CMS methodology */

CREATE TABLE `raw_payments` (
  `npi` char(12) DEFAULT NULL,
  `nppes_provider_last_org_name` varchar(255) DEFAULT NULL,
  `nppes_provider_first_name` varchar(255) DEFAULT NULL,
  `nppes_provider_mi` char(2) DEFAULT NULL,
  `nppes_credentials` varchar(20) DEFAULT NULL,
  `nppes_provider_gender` char(1) DEFAULT NULL,
  `nppes_entity_code` char(2) DEFAULT NULL,
  `nppes_provider_street1` varchar(255) DEFAULT NULL,
  `nppes_provider_street2` varchar(255) DEFAULT NULL,
  `nppes_provider_city` varchar(100) DEFAULT NULL,
  `nppes_provider_zip` varchar(20) DEFAULT NULL,
  `nppes_provider_state` char(4) DEFAULT NULL,
  `nppes_provider_country` char(4) DEFAULT NULL,
  `provider_type` varchar(255) DEFAULT NULL,
  `medicare_participation_indicator` char(1) DEFAULT NULL,
  `place_of_service` char(1) DEFAULT NULL,
  `hcpcs_code` char(6) DEFAULT NULL,
  `hcpcs_description` varchar(255) DEFAULT NULL,
  `line_srvc_cnt` mediumint(7) DEFAULT NULL,
  `bene_unique_cnt` mediumint(7) DEFAULT NULL,
  `bene_day_srvc_cnt` mediumint(7) DEFAULT NULL,
  `average_Medicare_allowed_amt` decimal(15,2) DEFAULT NULL,
  `stdev_Medicare_allowed_amt` decimal(15,2) DEFAULT NULL,
  `average_submitted_chrg_amt` decimal(15,2) DEFAULT NULL,
  `stdev_submitted_chrg_amt` decimal(15,2) DEFAULT NULL,
  `average_Medicare_payment_amt` decimal(15,2) DEFAULT NULL,
  `stdev_Medicare_payment_amt` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
