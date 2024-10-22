create or replace table event
(event_name varchar comment 'The name of the event'
, event_timestamp timestamp_ntz comment 'The timestamp of the event'
, payload variant comment 'The JSON payload representing the event properties');