
ALTER TABLE `payments` 
  ADD INDEX `index_cmsfee_on_state_and_city` (`nppes_provider_state`,`nppes_provider_city`),
  ADD INDEX `index_cmsfee_on_provider_type` (`provider_type`),
  ADD INDEX `index_cmsfee_on_npi` (`npi`),
  ADD INDEX `index_cmsfee_hcpcs_code` (`hcpcs_code`)
 
