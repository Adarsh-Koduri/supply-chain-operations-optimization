-- Quick overview of data;
select *
from supply_chain_cleaned scc 
limit 10;

-- Overall Supply Chain Health;
select 
		count(*) as total_shipments,
		SUM(Logistics_Delay) as delayed_shipments,
		ROUND(100*SUM(Logistics_Delay)/count(*),2) as delay_rate,
		ROUND(avg(Waiting_Time),2) as avg_waiting_time,
		round(avg(Asset_Utilization)) as avg_utilization
from supply_chain_cleaned scc ;

-- Traffic Bottleneck Detection;
select
		Traffic_Status,
		count(*) as total_shipments,
		sum(Logistics_Delay) as delays,
		round(100*sum(Logistics_Delay)/count(*),2) as delay_rate,
		round(avg(Waiting_Time),2) as avg_waiting_time
from supply_chain_cleaned scc 
group by Traffic_Status
order by delay_rate desc;

-- Truck Performance Ranking;
select 
		Asset_ID,
		sum(Logistics_Delay) as delays,
		round(avg(Waiting_Time),2) as avg_waiting_time,
		round(avg(Asset_Utilization),2) as avg_utilization,
		round(100*sum(Logistics_Delay)/count(*),2) as delay_rate
from supply_chain_cleaned scc 
group by Asset_ID
order by delay_rate desc;		

-- Inventory Risk Impact;
select
		Inventory_Risk,
		count(*) as shipments,
		sum(Logistics_Delay) as delays,
		round(100*sum(Logistics_Delay)/count(*),2) as delay_rate
from supply_chain_cleaned scc 
group by Inventory_Risk ;

-- Peak Delay Timing;
select
		hour,
		count(*) as shipments,
		sum(Logistics_Delay) as delays,
		round(100*sum(Logistics_Delay)/count(*),2) as delay_rate
from supply_chain_cleaned scc 
group by `hour` 
order by delay_rate desc ;


-- Root Cause Analysis;
select 
		Traffic_Status,
		Logistics_Delay_Reason,
		count(*) as cases,
		sum(Logistics_Delay) as delays
from supply_chain_cleaned scc 
where Logistics_Delay = 1
group by Traffic_Status, Logistics_Delay_Reason 
order by delays desc;