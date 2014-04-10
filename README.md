## CMS Medicare Provider fees; A data diary





### Official data source and format

Name: "Medicare Provider Utilization and Payment Data: Physician and Other Supplier"


Homepage: [http://cms.gov/Research-Statistics-Data...](http://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Medicare-Provider-Charge-Data/Physician-and-Other-Supplier.html)

- Tab delimited file format
- Lines terminated by `\r\n`
- Second line contains metadata (WTF)
- Quotation marks not used/needed to enclose values 


### Data features

- 9,153,273 rows (including useless second row) 
- 880,645 distinct NPI
 
  ``` sql
      SELECT COUNT(DISTINCT npi) FROM payments
  ```

- 1,117,074 distinct nppes info
 
  ``` sql
      select  npi,  nppes_provider_last_org_name,  nppes_provider_first_name,  nppes_provider_mi,  nppes_credentials,  nppes_provider_gender,  nppes_entity_code,  nppes_provider_street1,  nppes_provider_street2,  nppes_provider_city,  nppes_provider_zip,  nppes_provider_state,  nppes_provider_country,  provider_type,  medicare_participation_indicator,  place_of_service
FROM `payments`
GROUP BY npi,  nppes_provider_last_org_name,  nppes_provider_first_name,  nppes_provider_mi,  nppes_credentials,  nppes_provider_gender,  nppes_entity_code,  nppes_provider_street1,  nppes_provider_street2,  nppes_provider_city,  nppes_provider_zip,  nppes_provider_state,  nppes_provider_country,  provider_type,  medicare_participation_indicator,  place_of_service
  
   ```

- 1,117,074 distinct `npi` with `place_of_service` and `medicare_participation_indicator`
  
   ``` sql
       select COUNT(DISTINCT npi, medicare_participation_indicator, place_of_service)
   ```
