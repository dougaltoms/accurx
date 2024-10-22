create or replace view dim_features
comment = 'Dimension: Reference table for valid features and options'
as
select
feature
, array_agg(distinct selected_option) as options
from "02_CLEAN".features_normalised
group by feature
order by 1;