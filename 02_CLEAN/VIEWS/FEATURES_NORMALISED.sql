create or replace view features_normalised
-- 3 rows per org per day (SMS, Self Book, Video)
as
select a.export_date
, a.file_row_no
, a.file_loaded_day
, a.payload['organisationId']::int as organisation_id
, feature.value:"Name"::varchar as feature
, feature.value:"SelectedOption"::varchar as selected_option
from "01_RAW".feature a,
lateral flatten(input => payload:"features") as feature;