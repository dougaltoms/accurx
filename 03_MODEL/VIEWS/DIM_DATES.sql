create or replace view dim_dates
comment = 'Dimension: Generated calendar for 2024'
as
with cte as (
select row_number() over (order by seq4()) as date_id
, to_date(dateadd(day, date_id, to_date('2024-01-01'))) as date
from table(generator(rowcount =>365))
)
select date_id
, date
, monthname(date) as month_name
, dayname(date) as day_name
, year(date) as year
, month(date) as month
, week(date) as week
, quarter(date) as quarter
from cte;