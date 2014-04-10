ALTER TABLE `payments`
   ADD INDEX `index_cmsfee_hcpcs_code` (`hcpcs_code`),
   ADD INDEX `payments_npi_participation_pos` (`npi`,`medicare_participation_indicator`,`place_of_service`)
