ALTER TABLE `providers`
  ADD INDEX `npi_participation_indicator_pos` (`npi`,`medicare_participation_indicator`,`place_of_service`)
  ADD INDEX `zip_on_providers` (`nppes_provider_zip`),
  ADD INDEX `state_on_providers` (`nppes_provider_state`)
