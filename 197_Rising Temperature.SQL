with func as (
    select
    id,
    recordDate,
    temperature, 
    LAG(temperature,1) over(order by recordDate) as prev_temp,
    LAG(recordDate, 1) over(order by recordDate) as prev_day
    from
    Weather
)

select id from func
where temperature > prev_temp
and recordDate = DATE_ADD(prev_day, INTERVAL 1 DAY);
