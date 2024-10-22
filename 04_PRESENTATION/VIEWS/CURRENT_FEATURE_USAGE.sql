create or replace view current_feature_usage
comment = 'Summary stats for current user/org feature settings'
as
select
'SMS Lite' as feature
, count(distinct a.user_id) as user_count
, count(distinct a.organisation_id) as org_count
from "03_MODEL".dim_users a 
join "03_MODEL".dim_selected_features b
on a.organisation_id = b.organisation_id
where feature = 'SMS'
and selected_option = 'SMS Lite'
and b.date = (select dateadd(day, -1, max(date)) from "03_MODEL".dim_selected_features) -- get max load date and minus one
group by 1

union all

select
'SMS Plus' as feature
, count(distinct a.user_id) as user_count
, count(distinct a.organisation_id) as org_count
from "03_MODEL".dim_users a 
join "03_MODEL".dim_selected_features b
on a.organisation_id = b.organisation_id
where feature = 'SMS'
and selected_option = 'SMS Plus'
and b.date = (select dateadd(day, -1, max(date)) from "03_MODEL".dim_selected_features) -- get max load date and minus one
group by 1

union all

select
b.feature
, count(distinct a.user_id) as user_count
, count(distinct a.organisation_id) as org_count
from "03_MODEL".dim_users a 
join "03_MODEL".dim_selected_features b
on a.organisation_id = b.organisation_id
where feature = 'Video'
and selected_option = 'On'
and b.date = (select dateadd(day, -1, max(date)) from "03_MODEL".dim_selected_features) -- get max load date and minus one
group by 1

union all 

select
b.feature
, count(distinct a.user_id) as user_count
, count(distinct a.organisation_id) as org_count
from "03_MODEL".dim_users a 
join "03_MODEL".dim_selected_features b
on a.organisation_id = b.organisation_id
where feature = 'Self Book Individual'
and selected_option = 'On'
and b.date = (select dateadd(day, -1, max(date)) from "03_MODEL".dim_selected_features) -- get max load date and minus one
group by 1;