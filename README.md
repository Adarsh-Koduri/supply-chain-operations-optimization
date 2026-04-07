#  Supply Chain Operations Optimization Dashboard

## Overview

This project analyzes end-to-end supply chain operations to uncover the key drivers of shipment delays and operational inefficiencies. Using Python for data preparation, SQL for business analysis, and Power BI for dashboarding, the project focuses on improving visibility into logistics performance, asset efficiency, and demand versus inventory behavior.

The goal was not just to visualize supply chain data, but to diagnose where operations were breaking down and identify which factors were actually driving delays. The analysis revealed that delays were primarily caused by traffic and operational bottlenecks rather than inventory shortages, shifting the optimization focus toward routing, scheduling, and dispatch efficiency.

---

## Tools Used
### Python (Pandas)
*Data cleaning
*Datetime conversion
*Missing value handling
*Feature engineering
### SQL (MySQL via DBeaver)
*KPI analysis
*Aggregations
*Bottleneck detection
*Root cause analysis
### Power BI
*Interactive dashboard development
*KPI reporting
*Multi-page visual storytelling
*Executive and operational insights

##  Key Findings
*56.6% of shipments were delayed, showing a major supply chain performance issue.

*Heavy traffic caused a 100% delay rate, making it the single biggest operational bottleneck.

*Inventory shortages had little impact on delay rates, meaning stock levels were not the primary problem.

*Peak delay periods were concentrated in specific hours, especially around hour 17, hour 14, and hour 4.

*Waiting time showed a strong relationship with delays, pointing to dispatch and routing inefficiencies.

*Asset performance varied across trucks, with some assets showing weaker efficiency and higher delay contribution than others.

*Traffic, weather, and mechanical failure emerged as the main recorded reasons behind delayed shipments, with traffic dominating under heavy congestion conditions.

---

##  Results & Business Impact
Identified a system-wide logistics issue, with **more than half** of all shipments delayed.
Confirmed that **traffic conditions** were the dominant cause of delays, especially in heavy congestion scenarios.
Showed that **inventory risk was not meaningfully associated** with delay risk, preventing misdirected optimization efforts.
Highlighted time-based inefficiencies, revealing windows of peak operational breakdown.
Ranked asset-level performance, helping distinguish higher-performing trucks from weaker contributors.
Built a multi-page Power BI dashboard that translates raw operational data into business-facing insights and recommendations.

---

## Methodology
### 1. Data Understanding

The dataset contained 1,000 shipment records with logistics, inventory, environmental, and asset-related variables, including:

Timestamp

Asset_ID

Inventory_Level

Shipment_Status

Traffic_Status

Waiting_Time

Logistics_Delay_Reason

Asset_Utilization

Demand_Forecast

Logistics_Delay

This made it possible to analyze the chain from operational conditions to shipment outcomes.

### 2. Data Cleaning and Feature Engineering in Python

The raw dataset was first processed in Python using Pandas. Key preparation steps included:

Converting Timestamp to datetime format

Extracting:

Hour

Day

Month

Filling missing delay reasons with "No Delay"

**Creating derived business features:**

Inventory_Risk

High_Risk_Delay

Efficiency_Score

Exporting the cleaned dataset for SQL and Power BI use

### 3. SQL-Based Analysis

The cleaned dataset was imported into MySQL through DBeaver and used to answer business questions related to:

overall supply chain health

traffic-related bottlenecks

asset performance

inventory risk impact

peak delay timing

root cause patterns

### 4. Dashboard Design in Power BI

A multi-page dashboard was built to present the analysis in a structured way:

Executive Overview

Delay Root Cause Analysis

Inventory & Demand Analysis

Asset Performance & Efficiency

Root Cause Analysis of Supply Chain Delays

## What Was Done in Each Tool
### Python

Python was used to prepare the dataset for deeper analysis.

#### Main steps:
parsed timestamps into usable date-time format

created time-based columns for hourly and trend analysis

handled null values in delay reason

created business logic columns to support later SQL and Power BI analysis

**Derived columns:**

Hour: used for identifying peak delay periods

Day: used for daily pattern analysis

Month: used for time trend grouping

Inventory_Risk: flagged records where inventory level was lower than demand forecast

High_Risk_Delay: flagged delayed shipments under heavy traffic or detour conditions

Efficiency_Score: custom metric to compare asset utilization against waiting time

Python helped transform the data from a raw operational table into something analysis-ready.

### SQL

SQL was used to investigate the business side of the problem and quantify the major patterns.

#### Business questions answered:
What is the total delay rate across all shipments?

Which traffic conditions create the highest delay rate?

Which trucks are contributing the most to delay risk?

Does inventory risk significantly increase delay probability?

At what hours are delay rates highest?

What combinations of traffic conditions and recorded reasons appear most often in delayed shipments?

#### SQL insights found:
Total shipments: 1000

Delayed shipments: 566

Delay rate: 56.60%

Average waiting time: 35.06

Average utilization: 80.0

#### Delay rate by traffic status:

Heavy: 100.00%

Detour: 35.94%

Clear: 35.06%


This showed that heavy traffic was not just an influence, but a guaranteed failure condition in this dataset.

#### Inventory risk impact:

Safe inventory: 56.29% delay rate

Risk inventory: 57.47% delay rate

This near-identical result showed that inventory shortages were not a major delay driver.

#### Peak delay hours:

Highest delay rates occurred at:

Hour 17: 69.44%

Hour 14: 67.44%

Hour 4: 65.12%

Hour 8: 64.00%

This pointed to schedule and timing inefficiencies.

#### Root cause combinations:

Among delayed shipments, the most common patterns included:

Heavy + Traffic

Heavy + Weather

Heavy + Mechanical Failure

This confirmed that traffic was the dominant issue, while weather and mechanical problems acted as secondary contributors.

### Power BI

Power BI was used to convert the analytical findings into an executive-friendly dashboard.

#### Page 1: Executive Overview

##### Purpose:

summarize overall supply chain performance

Visuals included:

#### KPI cards:
Total Shipments

Delay Rate

Avg Waiting Time

Avg Utilization

Inventory Risk %

Delay trend over time

Shipment status distribution

Delay by traffic

Delay by time bucket

#### Page 2: Delay Root Cause Analysis

##### Purpose:

explain why delays are happening

##### Visuals included:

Traffic condition breakdown

Delay reason analysis

Delay intensity across hour/day

Waiting time impact visuals

#### Page 3: Inventory & Demand Analysis

##### Purpose:

compare inventory pressure against operational outcomes

##### Visuals included:

Inventory vs demand by asset

Inventory risk distribution

Demand trends

Inventory risk vs delay impact

##### Main message:

inventory was not the operational bottleneck

#### Page 4: Asset Performance & Efficiency

##### Purpose:

evaluate truck-level operational contribution

##### Visuals included:

Utilization by asset

Delay rate by asset

Efficiency score ranking

Waiting time by asset

Asset performance table

#### Page 5: Root Cause Analysis of Supply Chain Delays

##### Purpose:

synthesize the full story

##### Visuals included:

delay causes by traffic condition

inventory risk vs delay

waiting time vs delay

delay patterns across time of day

key insights and recommendation panel

## Expanded Results
#### 1. Supply Chain Health Was Weak

A delay rate of 56.6% indicates that the system is underperforming at a broad operational level rather than suffering from isolated incidents.

#### 2. Traffic Was the Core Driver

The most important result in the project was the finding that shipments under heavy traffic had a 100% delay rate. This makes traffic the strongest predictor of operational failure in the dataset.

#### 3. Inventory Was Not the Problem

A common assumption in supply chain projects is that low stock directly drives poor outcomes. This analysis showed otherwise. Delay rates were almost identical for risky and non-risky inventory situations, meaning the main issue lies in logistics execution rather than stock planning.

#### 4. Delay Risk Was Time-Dependent

Specific hours had far higher delay rates than others, suggesting that dispatch timing, route scheduling, and congestion windows play a major role in performance.

#### 5. Waiting Time Was a Strong Operational Signal

Higher average waiting times aligned with worse shipment outcomes. This suggests inefficiencies in loading, routing, dispatch coordination, or operational readiness.

#### 6. Assets Did Not Perform Equally

Truck-level analysis showed meaningful differences in delay contribution, utilization, and efficiency. This provides a foundation for better fleet assignment and performance monitoring.

---

##  Dashboard Screenshots

### Executive Overview

<img width="1534" height="744" alt="1" src="https://github.com/user-attachments/assets/da422b42-fa37-47ad-b739-8c3e9f09ed7d" />

### Delay Root Cause Analysis

<img width="1533" height="752" alt="2" src="https://github.com/user-attachments/assets/53f0d84b-133f-454f-b9ae-937d89f9b6f0" />

### Inventory & Demand Analysis

<img width="1547" height="768" alt="3" src="https://github.com/user-attachments/assets/30b56668-c26f-47e3-89aa-555fa78a1331" />


### Asset Performance

<img width="1519" height="755" alt="4" src="https://github.com/user-attachments/assets/f7850a81-14bc-42d7-9135-5676962a50ca" />


### Root Cause Analysis

<img width="1531" height="757" alt="5" src="https://github.com/user-attachments/assets/f6f8c60b-6309-4082-8651-09105e4eba22" />

---

## Final Advice / Recommendations

Based on the analysis, the following actions would likely improve supply chain performance:

#### 1. Optimize Routing Around Heavy Traffic

Since heavy traffic produced a 100% delay rate, route planning should prioritize congestion avoidance and dynamic route adjustment.

#### 2. Shift Operations Away from Peak Delay Hours

High-risk time windows should be addressed through better scheduling and load balancing across the day.

#### 3. Reduce Waiting Time Through Dispatch Improvements

Operational handoff delays should be reviewed to reduce idle time before shipment movement.

#### 4. Monitor Fleet Performance at Asset Level

Truck-level differences suggest that not all assets should be managed the same way. Underperforming assets should be flagged and investigated.

#### 5. Focus Improvement Efforts on Execution, Not Inventory

Since inventory risk had minimal impact on delays, optimization resources should be directed first toward traffic handling, timing, and dispatch coordination.
---

## Future Plan / Next Steps

### This project can be extended in several valuable directions:

* add route-level or location-level mapping if richer geography data becomes available
* build predictive models for shipment delay risk
* integrate real-time traffic APIs for live operational monitoring
* develop asset scorecards for continuous fleet performance evaluation
* create alerting logic for high-risk shipments based on traffic, waiting time, and utilization
* compare planned vs actual operational outcomes if planned shipment schedules are available

## Conclusion

This project demonstrates how analytics can move beyond descriptive dashboards and into operational diagnosis. By combining **Python, SQL, and Power BI**, the project identified the real sources of supply chain inefficiency and separated perception from reality.

The most important takeaway was clear: **traffic and execution bottlenecks** were the primary causes of delay, not inventory shortages.

