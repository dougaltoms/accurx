create or replace view dim_selected_features
comment = 'Dimension: Selected features for an organisation on given day'
as
select
organisation_id
, export_date as date
, feature
, selected_option
from "02_CLEAN".features_normalised
order by 1,2;