use Project_Hostel;

with hotels as(
select * from dbo.['h18']
union
select * from dbo.['h19']
union
select * from dbo.['h20'])

--select arrival_date_year,hotel,
--round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as revenue from hotels
--group by arrival_date_year,hotel

select * from hotels
left join dbo.market_segment on
hotels.market_segment=market_segment.market_segment
left join dbo.meal_cost on
meal_cost.meal=hotels.meal
