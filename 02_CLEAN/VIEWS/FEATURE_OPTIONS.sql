create or replace view feature_options
as
select distinct 
feature.value:"Name"::varchar as feature
, options.value::varchar as options
from "01_RAW".feature a,
lateral flatten(input => payload:"features") as feature,
lateral flatten(input => feature.value:"Options") as options
order by 1,2;