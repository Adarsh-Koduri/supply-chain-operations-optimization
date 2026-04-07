#  Supply Chain Operations Optimization Dashboard

##  Project Overview

This project analyzes end-to-end supply chain operations to identify inefficiencies in shipment delivery, asset utilization, and logistics performance. Using data-driven techniques, the analysis uncovers key delay drivers and operational bottlenecks impacting overall system efficiency.

The objective is to provide actionable insights that improve delivery performance, optimize resource utilization, and enhance decision-making across supply chain operations.

---

##  Key Findings

*  **High Delay Rate:**
  Over **56.6% of shipments are delayed**, indicating significant inefficiencies in logistics operations.

*  **Traffic as Primary Bottleneck:**
  Shipments under **heavy traffic conditions experience a 100% delay rate**, making it the most critical factor affecting performance.

*  **Peak Hour Inefficiencies:**
  Certain time periods (notably afternoon and evening hours) show significantly higher delay rates, suggesting poor scheduling strategies.

*  **Inventory Not a Key Driver:**
  Inventory shortages show **minimal impact on delays**, indicating that operational and external factors dominate performance issues.

*  **Asset Performance Variability:**
  Trucks show inconsistent performance in terms of utilization, waiting time, and delay contribution, highlighting opportunities for optimization.

*  **Waiting Time Correlation:**
  Increased waiting time is strongly associated with higher delay rates, indicating inefficiencies in dispatch and routing.

---

##  Tools & Technologies Used

* **Python (Pandas):** Data cleaning, preprocessing, and feature engineering
* **SQL (MySQL via DBeaver):** Business analysis, KPI extraction, and root cause investigation
* **Power BI:** Interactive dashboard creation and data visualization

---

##  Results & Business Impact

* Identified **traffic congestion as the dominant cause of delays**, enabling targeted route optimization strategies
* Discovered that **inventory planning is not a primary issue**, shifting focus toward logistics execution
* Highlighted **peak operational inefficiencies**, supporting better scheduling and load distribution
* Enabled **asset-level performance tracking**, helping identify underperforming trucks
* Provided a **data-driven framework for supply chain optimization**

---

##  Project Workflow

### 1. Data Collection

* Utilized a logistics dataset containing shipment, inventory, traffic, and asset-level data
* Included operational, environmental, and customer-related attributes

---

### 2. Data Cleaning & Feature Engineering (Python)

* Converted timestamps into structured time features (hour, day, month)
* Handled missing values in delay reasons
* Created derived features:

  * `Inventory_Risk`
  * `High_Risk_Delay`
  * `Efficiency_Score`
* Standardized boolean fields into numeric format (0/1)

---

### 3. Data Analysis (SQL)

Performed business-driven analysis using SQL queries:

* Calculated overall delay rate and operational KPIs
* Identified delay patterns across traffic conditions
* Evaluated asset-level performance and efficiency
* Analyzed impact of inventory risk on delays
* Detected peak delay periods across time
* Conducted root cause analysis using traffic and delay reasons

---

### 4. Dashboard Development (Power BI)

Designed a multi-page interactive dashboard:

####  Page 1: Executive Overview

* Key KPIs (Delay Rate, Utilization, Waiting Time)
* Delay trends over time
* Traffic impact and shipment distribution

####  Page 2: Delay Root Cause Analysis

* Traffic and delay reason breakdown
* Time-based delay heatmap
* Waiting time impact on delays

####  Page 3: Inventory & Demand Analysis

* Inventory vs demand comparison
* Inventory risk distribution
* Insight: Inventory does not drive delays

####  Page 4: Asset Performance

* Truck utilization and efficiency ranking
* Delay contribution by asset
* Waiting time comparison

####  Page 5: Root Cause Synthesis

* Integrated analysis of traffic, time, and operations
* Key insights and recommendations panel

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

##  Recommendations

* Implement **route optimization strategies** to avoid high-traffic zones
* Introduce **dynamic scheduling** to reduce peak-hour delays
* Use **real-time traffic monitoring systems** for proactive decision-making
* Optimize **asset allocation** based on performance metrics
* Reduce **waiting times** through improved dispatch and coordination

---

##  Conclusion

This project demonstrates how data analytics can be leveraged to uncover hidden inefficiencies in supply chain operations. By identifying key delay drivers and separating perceived issues from actual root causes, the analysis provides a strong foundation for operational improvements and strategic decision-making.

---

##  If you found this project useful, feel free to star the repo!
