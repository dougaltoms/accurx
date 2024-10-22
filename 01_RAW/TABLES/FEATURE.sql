create or replace table feature
(export_date date comment 'The date the data was exported from the product database'
, filename varchar comment 'The name of the file ingested into Snowflake'
, file_row_no int comment 'The row number of the file ingested'
, file_loaded_day date comment 'The date the export was ingested into Snowflake'
, payload variant comment 'The JSON payload representing the whole exported row');