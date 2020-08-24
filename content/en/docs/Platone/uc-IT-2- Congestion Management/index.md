---
title: "UC-IT-2"
linkTitle: "UC-IT-2"
date: 2020-07-09
description: >
  Congestion Management
---

# 1. Description of the Use Case

## 1.1. Name of the Use Case

| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-IT-2| Area: Energy system </br> | Congestion Management in transmission and distribution system |

## 1.2. Version Management

|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1||Areti, Acea Energia, Engineering, Siemens|Initial creation||
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|


## 1.3. Scope and Objectives of Use Case

|||
| --- | --- |
| Scope | Avoiding the congestions in distribution and transmission grid, using the flexibility resources connected to the distribution systems which provide flexibility services through a market mechanism. <br/> Network: MV, LV <br/> Market: Day Ahead, Real Time  <br/> |
| **Objective(s)** | *	To support the TSO in using the flexibility provided by resources connected to the distribution system for congestion management, while respecting distribution system constraints <br/> * To ensure an inclusive and non-discriminatory access to the market for all agents that provide grid services <br/> * To empower coordination between system operators <br/> * To activate flexibility to solve congestion in the distribution grid <br/>|
| **Related business case(s)** |add text|

## 1.4. Narrative of Use Case


**Short description**

This use case describes the main steps to prevent congestion issues in transmission and distribution systems by exploiting flexibility resources, contemplating all the phases concerned (procurement, activation and settlement) in the day-ahead and real time flexibility market. The DSO can use flexible resources connected to the distribution system and the TSO can use flexible resources connected to distribution systems under the DSO’s approval. The state estimation is assessed and monitored by the DSO in order to keep the electrical quantities within admissible ranges.

**Complete description**

The Use Case describes the main steps to prevent congestion issues in transmission and distribution systems by exploiting flexibility resources, contemplating all the phases concerned (procurement, activation and settlement) in the day-ahead and real time flexibility market. The DSO can use flexible resources connected to the distribution system and the TSO can use flexible resources connected to distribution systems under the DSO’s approval. The state estimation is assessed and monitored by the DSO in order to keep the electrical quantities within admissible ranges
In the day ahead market, the FR Owner sends to Aggregator Platform the list of the resources available for the day after. The list is subsequently transmitted by the Aggregator Platform to the Shared Customer Database (SCD). For each Point of delivery (PODs), the SCD collects quarterly measures and data useful for flexibility and sends them to the DSO Technical Platform, the TSO simulator and the Aggregator Platform. 

Other three processes take place parallelly:
- Detection of congestion issues on the distribution grid by the DSO Technical Platform and definition of local flexibility requests, in the event the issue cannot be solved through its own solutions;

- Definition of congestion issues on the transmission network by the TSO simulator and request of flexibility to solve them in HV grid;

- Gathering by the Aggregator Platform of flexibility offers from customers in LV and MV and offering to the Market.

At gate closure, all day ahead requests and offers are stored in the Market Platform, which matches first the offers with the DSO’s requests, and orders them economically; then, it repeats the same procedure with the TSO requests. 

The list of awarded offers is sent to DSO TP for evaluating the grid constraints violations. Finally, the market platform receives the list of offers compliant with local grid constraints and sends it to all the stakeholders.

At this step, the Aggregator Platform sends a reservation to the FR Owner for the resources that will be selected for the day-ahead market.
The same steps are also followed in the Real Time sessions. Indeed, in these Market sessions, the offers to be matched with DSO and TSO Real Time requests are the ones still valid because not matched in previous market sessions.

The activation phase begins when the DSO and TSO need flexibility. The DSO TP and the TSO simulator communicate to the market Platform to move a specific offer. The Market Platform sends the order to the DSO TP, that divides it for every POD and dispatches the set point to the light nodes. The light nodes make available the set points to the BMS and measures the electrical quantities to be sent to the SCD for evaluate the energy flexibility.

For the settlement phase, the Market Platform acquires data from the SCD and calculates the difference between market baseline, evaluated by BRP, and electrical quantities measured in the same time frame, uploaded in the SCD by Light Nodes. The Market Platform runs the settlement algorithm and finds the outcomes. Settlement outcomes are transmitted to the Aggregator Platform, the DSO and the TSO Simulator.

Finally, the DSO pays the flexibility to the aggregator, that can pay the fee to the FR Owner.


## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|add text|add text|add text|add text|

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
|add text| add text|

***Notes:***

* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)

* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|Relation to other use cases|
|---------------------------|
|add text|
|**Level of depth**|
|add text|
|**Prioritisation**|
|add text|
|**Generic, regional or national relation**|
|add text|
|**Nature of the use cases**|
|add text|
|**Further keywords for classification**|
|add text|

***Notes:***

* **Relation to other use cases** - relation to other use cases in the same project or thematic area. Possible relation types are for instance include, extend, invoke, or associate.

* **Level of depth** - reflects the degree of specialisation of the use case. Although no common notation is settled, descriptions like high level use case, generic, detailed, or specialised use case are often used.

* **Prioritisation** - helps to rate the use cases in a project from very important to nice-to-have with labels like obligatory/mandatory or optional which have to be agreed upon beforehand.

* **Generic, regional or national relation** - for the purpose of generalisation if use case is applied to areas where restictions by law or silimiar issues occur.

* **Nature of the use cases** - describes the viewpoint and field of attention like *technical, political, business/market, test*, etc.


## 1.8. General remarks

|General remarks|
|---|
|- add text <br/> - add text <br/> - add text|

***Notes:***

Add any remarks which do not fit in any other category

# 2. Diagrams of Use Case

**Use Case Diagram Congestion: Component**

![Sgam Component Layer](0_SGAM_Component_Layer.PNG)

**Use Case Diagram Congestion: Function**

![Sgam Function Layer](0_SGAM_Function_Layer.PNG)

**Sequence Diagram Congestion**

![Sequence Diagram Congestion Day Ahead](1_Sequence_DA_Congestion.png)
![Sequence Diagram Congestion Real Time](2_Sequence_RT_Congestion.png)
![Sequence Diagram Congestion Activation](3_Sequence_Activation_Congestion.png)
![Sequence Diagram Congestion Settlement](4_Sequence_Settlement_Congestion.png)


# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| DSO | Person | DSO is each Distribution System Operator. It is an entity in charge for the management of the energy distribution networks |  |
| Light Node | Device | Device installed on the DSO’s smart meter in order to read, arrange, certify in Blockchain (at first level) and send to the SCD measurements and other data for the flexibility market and observability. Moreover, the device receives set-point from DSO Platform and make it available to client on client’s apparatus (e.g. EMS). |  |
| DSO Technical Platform | System | A software-based system that manages the distribution network. It performs grid state estimation and productions and consumptions forecasting. Moreover, it defines the flexibility requests for DSO’s grid. The DSO Technical Platform exchanges data with SCADA and other system comprised in the Operation Domain. |  |
| EMS (Energy Management System) | System | A system, in customer premises, used to monitor, control, and optimize the energy consumption and production. It could include the Building Energy Management System (BEMS) for tertiary sector, the Home Management System (HMS) for residential users, the Battery Management System (BMS) and the management system for EV charging points  |  |
| Blockchain Access Platform (BAP) | System | A software-based platform that certify, on Blockchain technology, the customers’ data for flexibility and observability |  |
| Shared Customer Database (SCD) | System | Database that gathers all the data and services of flexibility resources and shares them with all the stakeholders |  |
| TSO | Person | TSO is each Transmission System Operator. It is an entity in charge for the management of the energy transmission networks. | Within the Italian Demo, the TSO is simulated by tool “TSO Simulator” (see below) |
| TSO simulator | Software component | Tool that emulates the TSO flexibility requests involving the resources connected in medium and in low voltage | Developed and implemented by WP2 |
| Market Operator (MO) | Person | Party responsible for the Market Platform. The Market Operator matches the flexibility offers and requests on the Market Platform |  |
| PlatOne Market Platform (MP) | Software component | Virtual Place where the requests of flexibility match the offers | Developed and implemented within WP2 |
| Flexibility Resources (FR) | System | Resources, in customer premises, that provide flexibility to the market. They could be generation plants, electric vehicles, batteries, active demand. They are closely related to the demo’s areas |  |
| Flexibility Resources Owner (FR Owner) | Person | FR Owner is the customer that makes available its flexibility to provide services |  |
| Aggregator/Flexibility Operator | Person | Aggregator / Flexibility Operator is an entity that aggregates the flexibility offers in the market and provides them to the DSO in case of needs for the grid | Aggregator Platform |
| Aggregator Platform/Software component | Software component  | A software-based system that gathers the data measurement from the customers and calculates the flexibility to be offered on the market |  |
| Balance responsible party | Person | A market participant or its chosen representative responsible for its imbalances |  |


## 3.2. References

OPTIONAL - you can leave it blank

| **No.** | **References Type** | **Reference** | **Status** | **Impact on Use Case** | **Organistaor / Organisation** | **Link** |
| --- | --- | --- | --- | --- | --- | --- |
|add text|add text|add text|add text|add text|add text|


# 4. Step by Step Analysis of Use Case

## 4.1. Overview of Scenarios

| **No.** | **Scenario Name** | **Primary Actor** | **Triggering Event** | **Pre-Condition** | **Post-Condition** |
| --- | --- | --- | --- | --- | --- |
| 1 | Day Ahead | DSO | The DSO assesses the Grid for the day after and finds a Congestion | The DSO Technical Platform is capable to foresee the grid status for the day after | The DSO acquires in the market the energy flexibility to solve the grid issues for the day after |
| 2 | Real Time | DSO | The DSO assesses the Grid for the next 4 hours to take into account last grid outages or reconfiguration | The DSO TP is capable to detect the critical issues in the short term | The DSO acquires in the market the energy flexibility to solve the grid issues for the real time |
| 3 | Activation | DSO | The DSO sends the order to move the resources | The resources have won the session market | The Light Node measures the quantity of service provided  |
| 4 | Settlement | BRP | The BRP sends the baseline to the SCD | The BRP estimates the baseline for the energy market | The market operator calculates the energy flexibility with respect to BRP's baseline |



## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - Day Ahead**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 a | FR availability | Availability of Flexibility resources | FR Owner, through the app developed in the demo, communicates the availability of its resources to the Aggregator, for the day after | CREATE | FR Owner | Aggregator Platform | I - 12 |  |
| 2 a | Users involved | List of flexible customer - step 1 | The Aggregator shares the flexible resources list with the SCD | CREATE | Aggregator Platform | SCD | I - 02 |  |
| 3 a | Active POD | List of flexible customer - step 2 | The DSO TP acquires from SCD the list of POD involved | CREATE | SCD | DSO Technical Platform | I - 02 |  |
| 4 a | DSO forecasts for day after | DSO Data acquisition | The DSO Technical Platform acquires the data from the SCD and from the field sensors (like V&C sensors and LV3G), through the Operational Systems, and runs the forecast tool to evaluate the production and the consumption | CREATE | Operation Systems | DSO Technical Platform | I-18 / I-01 |  |
| 5 a | DSO simulates the grid for day after | Day Ahead grid assessment | The DSO Technical Platform runs the state estimation tool to assess the grid for the day after | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 6 a | Congestion | Congestion  localization | If the DSO Technical Platform detects a congestion, it sends an alert to the DSO operator | CREATE | DSO Technical Platform | DSO | I - 10 |  |
| 7 a | Using of solutions in the DSO premises   | Grid management | The DSO first tries to solve the issues, using its own technical solutions. | CREATE | DSO | Operational systems | I - 11 |  |
| 8 a | Involving of the FR | Active Grid Management | The DSO Technical Platform checks further amount of flexibility that is required to solve the congestion and detects the location of the flexibility resources connected to distribution system, that can contribute to eliminate the issue | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 9 a | Flexibility Procurement | Flexibility requests | The DSO communicates the flexibility requests (Volumes, time frame) to the market | CREATE | DSO Technical Platform | Market Platform | I - 06 |  |
| 10 a | Market session | Requests Acquisition | The market Platform acquires and stores the DSO Day Ahead Requests | CREATE | Market Platform | Market Platform |  |  |
| 1 b | Data acquisition | Data FR Acquisition | The Aggregator, once known the available resources, acquires their measurements from the Shared Customer Database | GET | SCD | Aggregator Platform  | I - 01 |  |
| 2 b | Customer flexibility | Provision of flexibility from FR | The Aggregator calculates the baseline and the energy flexibility for every customer in its premises | Execute | Aggregator Platform  | Aggregator Platform  |  |  |
| 3 b | Definition of the offer | Offering | The Aggregator arranges the offers for PODs defining the flexibility to be offered  | CREATE | Aggregator Platform  | Aggregator Platform  |  |  |
| 4 b | Offers providing | Offers sending | The Aggregator sends the scheduling (max. volumes, time frame and price) per POD to the market | CREATE | Aggregator Platform | Market Platform | I - 05 |  |
| 5 b | Market session | Offers Acquisition | The Market Operator acquires and stores the Aggregator Day Ahead Bids | GET | Market Platform | Market Platform |  |  |
| 1 c | TSO flexibility requests for day after | TSO requests | The TSO acquires from SCD the list of flexible resources that can contribute to eliminate the congestion at transmission level | CREATE | SCD | TSO Simulator |  |  |
| 2 c | Procurement of flexibility | Flexibility requests | The TSO communicates the requests (Volumes, time frame) of flexibility to the market | CREATE | TSO Simulator | Market  | I - 06 |  |
| 3 c | Market session | Requests Acquisition | The Market Operator acquires and stores the TSO Day Ahead Requests | CREATE | Market Platform | Market  |  |  |
| 11 a | Selection of the cheapest requests for the DSO | Economic market clearing | The Market Operator solves the DSO requests, selecting the best offers located in the distribution network area subjected to congestion. To increase the  reliability, the Market Platform also selects some additional offers beyond the requests | REPEAT | Market Platform  | Market Platform |  |  |
| 12 a | Selection of the cheapest  requests for the TSO | Economic market clearing | The Market Operator uses the remaining flexibility to clear the TSO requests | REPEAT | Market Platform | Market platform |  |  |
| 13 a | Preliminary list of auctioned offers | Economical Auctioned offers | The Market Operator gathers and orders the list of auctioned offers and sends it to the DSO | REPORT | Market Platform | DSO | I - 08 |  |
| 14 a | Grid constraints assessment |  Technical assessment | The DSO receives from the Market the list of auctioned offers and assesses the grid constraints | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 15 a | Final list of auctioned offers | Auctioned offers | The DSO sends the list of approved offers to the Market | REPORT | DSO Technical Platform | Market Platform | I - 07 |  |
| 16 a | Market outcomes | Market Day Ahead outcomes | The DSO, TSO and Aggregator receive Market Day Ahead outcomes from the Market Operator | REPORT | Market Platform | DSO/TSO/Aggregator Platform | I - 08 |  |
| 17 a | Available resources | Resource Planning | FR Owner receives the detail of the service to be provide for the day after | REPORT | Aggregator Platform | FR Owner | I - 13 |  |






**Scenario Name: No. 2 - Real Time**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 a | DSO forecast for the next hours | DSO Data acquisition | DSO Technical Platform acquires the data from SCD and from the field sensors (V&C sensors and LV3G), through the Operational Systems and runs the forecast tool, to evaluate the production and the consumption | CREATE | Operational Systems | DSO Technical Platform | I-18 / I-01 |  |
| 2 a | DSO simulate the grid for the next hours | Real Time grid assessment | DSO Technical Platform run the state estimation tool to assesses the grid for the next four hours | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 3 a | Congestion | Congestion Localization | If the DSO Technical Platform detect a congestion sends an alert to DSO Operator | CREATE | DSO Technical Platform | DSO | I - 10 |  |
| 4 a | Using of solution in premises of DSO | Grid management | DSO tries first to solve the issue, using its own technical solutions. | CREATE | DSO | Operational Systems | I - 11 |  |
| 5 a | Involving of the customer | Active Grid Management | DSO Technical Platform assess the amount of flexibility that is required to solve the congestion and decides the location of the flexibility resources connected to distribution system, that can contribute to eliminate the issue | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 6 a | Flexibility Procurement | Flexibility requests | DSO communicates the requests (Volumes, time frame) of flexibility | CREATE | DSO Technical Platform | Market Platform | I - 06 |  |
| 7 a | Open market session | Requests publishing | Market Platform acquires and stores the DSO Real time Requests | CREATE | DSO Technical Platform | Market Platform |  |  |
| 1 c | Flexibility Procurement | Flexibility requests | TSO communicates the further requests (Volumes, time frame) of flexibility to market | CREATE | TSO Simulator | Market Platform | I-06 |  |
| 2 c | Open market session | Requests publishing | Market Platform Acquires and stores the TSO Real time Requests | CREATE | TSO Simulator | Market Platform |  |  |
| 8 a | Select of the cheaper requests for DSO | Economic market clearing | Market Platform solves the DSO requests, selecting the best offers located in the distribution network area subjected to congestion. To increase the reliability Market  Platform select also some additional offers beyond the requests | REPEAT | market platform | Market Platform |  |  |
| 9 a | Select of the cheapest requests for TSO | Economic market clearing | The Market Platform uses the remaining flexibility to clear the TSO requests | REPEAT | market platform | Market Platform |  |  |
| 10 a | Preliminary list of auctioned offers | Economical Auctioned offers | The Market Platform gathers and orders the list of all auctioned offers and sends it to DSO Technical Platform | REPORT | market platform | DSO Technical Platform | I - 08 |  |
| 11 a | Grid constraints assessment | Technical assessment | DSO Technical Platform receives from Market Operator the list of auctioned offers and assesses the grid constraints | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 12 a | Finally list of auctioned offers | Auctioned offers | DSO Technical Platform sends the list of all approved offers to Market | REPORT | DSO technical Platform | Market Platform | I -07 |  |
| 13 a | Market outcomes | Market Real Time outcomes | DSO, TSO and Aggregator receives Market Real Time outcomes from the Market Operator | REPORT | Market Platform | DSO/TSO/Aggregator Platform | I - 08 |  |
| 14 a | Available resources | Resources planning | FR Owner receives the detail on the service to provide in the Real Time | REPORT | Aggregator Platform | FR Owner | I-13 |  |


**Scenario Name: No. 3 - Activation**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 a | The DSO needs to solve a congestion | DSO Flexibility order | The DSO Technical Platform sends the order to move flexibility to the market operator | CREATE | DSO Technical Platform | Market Platform | I-09 |  |
| 1 b | The TSO needs to solve a congestion  | TSO Flexibility order | The TSO sends the order to move flexibility to the market operator | CREATE | TSO Simulator | Market Platform | I-09 |  |
| 2 a | Order transmission | Forwarding the set point - step 1 | The Market Platform receives and sends the order to the DSO Technical Platform, the SCD and the Aggregator | CREATE | Market Platform | DSO Technical Platform/SCD/Aggregator | I-09 |  |
| 3 a | Order transmission | Forwarding the of set point - step 2 | The DSO receives from the Market the scheduling and sends the set points to Light Nodes | CREATE | DSO Technical Platform | Light Nodes | I-09 |  |
| 4 a | Order available | Delivering of set point | The Light Node receives and makes available the set point to the EMS (it can be BMS or HMS) and FR | CREATE | Light Node | EMS / FR | I-09 |  |
| 5 a | Moving of flexibility | Activation | Energy Management System acquires the set point and selects the correct scenario for electrical appliances (it can be also EV or storage), and/or suggests the right behaviour for the customers (e.g. through an alert); | CREATE | EMS / FR | Smart Appliance / EV / Storage | I-14 |  |
| 6 a | Use of Blockchain Access Layer | Data Certification | The Light Node forwards the set point and the measurements (in  Blockchain | CREATE | Light Nodes | BlockCchain Access Platform | I-04 / I-09 |  |
| 7 a | Flexibility Certification | Blockchain outcomes | The Blockchain sends the certification data to the SCD | CREATE | Blockchain Access Platform | Shared Customer Database | I-04 / I-09 |  |
| 8 a | Measurement of flexibility   | Energy Monitoring | Light Node measures the electrical quantities for calculating the flexibility and sends them to the SCD | CREATE | Light Node | Shared Customer Database | I-04 / I-09 |  |



**Scenario Name: No. 4 - Settlement**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Baseline Definition | Market Baseline | The BRP defines the production and/or consumption programs for all the resources involved in the local flexibility market, and sends it to the SCD | CREATE | BRP | SCD | I-03 |  |
| 2 | Energy moved after a flexibility request | Flexibility measurements | The light node sends the measurements to the SCD | CREATE | Light Node | SCD | I-04 |  |
| 3 | Gathering of data | Settlement - step 1 | The Market Platform acquires the data from the SCD | CREATE | SCD | Market Platform | I-04 |  |
| 4 | Flexibility evaluation | Settlement - step 2 | The Market Operator performs the settlement comparing the metering data with the BRP baseline | CREATE | Market Platform | Market Platform |  |  |
| 5 | Settlements outcomes | Settlement - step 3 | The Market Operator communicates the settlements outcomes to the DSO, TSO and Aggregator  | CREATE | Market Platform | DSO / TSO / Aggregator Platform | I -15 |  |
| 6 | Payment of Energy provided | Payment | The DSO pays the Energy provided for flexibility to Aggregator  | CREATE | DSO | Aggregator Platform | I -16 |  |
| 7 | Customer payment | Payment | The Aggregator shares the revenues with the flexibility resources under their jurisdiction | CREATE | Aggregator Platform | FR Owner | I -17 |  |

# 5. Information Exchanged

|**Information exchanged ID**|**Name of Information** | **Description of Information Exchanged** | **Protocol** |
| --- | --- | --- | --- |
| I-01 | Quarterly measures | The data measurements (active power, energy consumption, energy production, etc.) stored in the SCD. These measures have a 15-minute granularity |  |
| I-02 | Customer list | The list of customers available to provide flexibility services for the day after |  |
| I-03 | BRP Baseline | The BRP defines for every POD the day after load profile, in compliance with the day ahead market |  |
| I-04 | Near real time measures | This information contains for every POD involved in the flexibility market, the active power measured every 4 seconds |  |
| I-05 | Data for Offer | The flexibility offer contains the volume, the time frame and the price provided by the FR involved in the group |  |
| I-06 | Data for Requests | The flexibility request contains the needs of flexibility (volume and time frame) localized in specific nodes of the grid |  |
| I-07 | Technical Validation | This information contains the assessment of the local grid constraints |  |
| I-08 | Market Outcomes | This information contains the list of offers arranged in economic order and in compliance with the grid constraint |  |
| I-09 | Order | The TSO and the DSO send a signal of activation to move the FR involved in the service |  |
| II-10 | Congestion localization | The DSO technical platform defines a list of grid nodes subject to congestions |  |
| I-11 | Grid configuration | The DSO technical platform detects the possible grid configuration to solve the issue |  |
| I-12 | FR status | This information contains the customer availability to move its own FR |  |
| I-13 | FR planning | This information contains the time frame and the power that the customer has to provide during the activation |  |
| I-14 | Activation Signal | The EMS sends the signal of activation to smart load |  |
| I-15 | Settlement outcomes | This information contains for every offer the energy moved and the payment |  |
| I-16 | DSO payment | It is the payment realised by the DSO for the energy provided  |  |
| I-17 | Aggregator payment | It is the remuneration that the aggregator recognizes to the customer |  |
| I-18 | Technical Measurement | Electrical quantities coming from the field sensors (Voltage and current sensors or Low Voltage circuit breakers embedded with IED) |  |

# 6. Requirements (optional)

# 7. Common Terms and Definitions

| **Term** | **Definition** |
| --- | --- |
|||


# 8. Custom Information (optional)

| **Key** | **Value** | **Refers to Section** |
| --- | --- | --- |
|||
