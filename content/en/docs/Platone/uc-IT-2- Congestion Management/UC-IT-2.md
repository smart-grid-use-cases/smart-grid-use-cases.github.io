# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*

| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-IT-2| Area: Energy system </br> *Leave it blank if not sure* | Voltage Management in transmission and distribution system using resources connected to distribution system |

***Notes:***

* **ID** - unique identification label: DE-1/GR-3/IT-2

* **Area /Domain(s)/Zone(s)** - placement of the use case in the SGAM domains and zones. It can be left blank if you are not sure.

## 1.2. Version Management

*Version management*

|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1||Areti, Acea Energia, Engineering, Siemens|Initial creation||
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*

|||
| --- | --- |
| Scope | Congestion avoidance in distribution and transmission grid by use of flexibility resources connected to transmission and distribution system providing ancillary services through a market mechanism. <br/> Network: MV, LV (HV users have their own market) <br/> Market: Day Ahead, Near Real Time  <br/> |
| **Objective(s)** | *	To support the TSO to use the flexibility provided by resources connected to the distribution system for congestion management, while respecting distribution system constraints <br/> * To ensure an inclusive and non-discriminatory access to the market for all agents that provide grid services <br/> * To enable coordination between system operators <br/> * To optimize the distribution network utilization <br/> * *To activate flexibility to solve congestion in the distribution grid* <br/> * *To minimize RES curtailment due to technical requirements and operation constraints*|
| **Related business case(s)** |add text|

***Notes:***

* **Scope** - describes the aims and boundaries of the use case in a short, precise text.

* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.

* **Realted business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**

The BUC describes the steps to prevent voltage issues in transmission and distribution system. DSO can use flexible resources connected to distribution system and TSO can use flexible resources connected to transmission and distribution system after the DSO’s approval. The state of the grid is assessed and monitored by DSO and TSO respectively, in order to keep the electrical quantities of the system within admissible range.

**Complete description**

The decentralization of the electricity system brings an increase of the generation power plants connected in Medium and in Low Voltage, on the other hand the mobility electrification, especially in the urban areas, requires a broad widespread of fast and slow charging points, so the management of the distribution system have to change to face this new challenges.
This new scenario also involves the transmission level, because a lot of high voltage power plant are no longer convenient, so they will close. Therefore the services for the network stabilization provided today by the HV plants, in the future will be required to the DER connected in medium and in low voltage.
So, in the next years the active role of DSO in the flexibility services it’s crucial for the of the electricity system. 
In Italy, since July 2017, ARERA – the Italian Authority for the Electricity market regulation – has launched pilot projects to involve the resources connected in medium and low voltage in the flexibility market. In these projects the TSO can use the resources connected to the distribution grid to solve some HV issues.
However, a complete framework about the local flexibility market have to define and in this demo we describe a contribute. 
The main points of the Italian demo are:
-	Inclusivity: every customer connected to distribution grid must be able to participate;
-	Interoperability: the device used to enable the users have to be interoperable, for avoid the lock-in phenomenon;
-	Transparent: the energy provided in the flexibility market is certificated and communicated to the customer.
The UC deals the congestion on transmission and distribution grid, describing all the main phases: procurement, activation and settlement, in the day ahead and real time flexibility market.
In the day ahead the DSO Technical Platform detects the congestion on the distribution grid and the TSO simulator defines the congestions on the transmission network. The DSO try first to solve the issues using the own technologies, after it uses the local flexibility market, defining the local flexibility requests and communicating to TSO the new load and voltage profile in Primary Substation.
In parallel the TSO requires the flexibility to solve the congestion in HV grid to the local market. 
Finally, the aggregator gathers the flexibility from the customers in low and in medium voltage and offer it to the market
At gate closure, all the day ahead requests and offers are stored on the market platform. The market operator matches first the offers with the DSO’s requests, and arranges them in economic order, after repeats the procedure with the TSO requests. Hence the list of auctioned offer is sent to DSO Technical Platform for evaluate the grid constraints violations. In the end the market operator receives the list of offers comply with local grid constraints and sends them to all the stakeholders.
The same steps are used for the Real Time session, where the DSO and TSO can add or change the flexibility requests using the day ahead offers.
When the DSO or the TSO need of flexibility, begin the Activation phase, where the DSO or TSO communicate the order to market for move a specific offer, the market operator sends the set-point for every PODs to the DSO Technical Platform, which sends it to every light nodes. The light node makes available the set points to the EMS. Finally, the Light Node measures the electrical quantities for evaluate the energy flexibility and sends them to the Shared Customer Database (SCD).
For the settlement the market operator acquires the data from the SCD and calculates the difference between market baseline and electrical quantities measured in the same time frame. The outcomes are shared with Aggregator, DSO and TSO, who can recognize the respective economic items.
The enabling technologies used in the use case are:
-	the SCD: this database shares the data with the stakeholders ensuring the transparency;
-	the Light Node: this device break down the barriers to entry market and ensuring the interoperability and inclusivity;
-	the blockchain Access layer: this technology ensures the reliability and safety of the transactions.



## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|add text|add text|add text|add text|

***Notes:***

Can be left blank now

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

![Diagram of Use Case](img1.png)

# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| DSO| Person |DSO is each Distribution System Operator. It is an entity in charge for the management of the energy distribution networks| DMS, Light Node, Shared Customer Database, Simulator of DSO flexibility requests, Blockchain access layer|
|Light Node|Device|Device installed on the electrical meter that reads, arranges, certifies in blockChain and sends the measurement for the dispatching market to the SCD (shared customer database). Moreover the device receives set-point from DSO Platform and make it available to client on client apparatus (e.g. EMS) ||
|DSO Technical Platform|System|System that manages the distribution network. It foresees the grid state estimation, the productions and consumptions. Moreover it defines the flexibility requests for DSO’s grid. The DSO Technical Platform interfaces to SCADA and other system comprising in the Operation Domain||
|EMS|System|System used to monitor, control, and optimize the energy consumption. It includes the Building Energy Management System (BEMS) for tertiary sector and Home Management System (HMS) for residential users||
|Blockchain Access Layer|System|Platform that certify the customer data for the flexibility||
|Shared Customer Database|System|Database that gathers all the data of flexibility resources and services and shares them with all the stakeholders||
|TSO|Person|TSO is each Transmission System Operator. It is an entity in charge for the management of the energy transmission networks|The TSO will be simulated in a tool developed in WP 2|
|Market Operator|Person|Market Operator is the responsible for the market Platform, it matches the offers and requests||
|DER|Person|Customer connected in medium and in low voltage that can provide ancillary services through the aggreagator|In the demo several DERs will be involved: prosumers, storages, electric vehicle|
|Aggregator/Flexibility operator|Person|Aggregator / Flexibility operator is an entity that aggregates the flexibility offers on the market and provide them to DSO in case of needs for the grid|Aggregator Platform|
|Balance responsible party|Person|Balance responsible party is a market participant or its chosen representative responsible for its imbalances||
***Notes:***

* **Actor Type** - Device/ Sytem/ Person

## 3.2. References

OPTIONAL - you can leave it blank

| **No.** | **References Type** | **Reference** | **Status** | **Impact on Use Case** | **Organistaor / Organisation** | **Link** |
| --- | --- | --- | --- | --- | --- | --- |
|add text|add text|add text|add text|add text|add text|


# 4. Step by Step Analysis of Use Case

## 4.1. Overview of Scenarios

| **No.** | **Scenario Name** | **Primary Actor** | **Triggering Event** | **Pre-Condition** | **Post-Condition** |
| --- | --- | --- | --- | --- | --- |
| 1 |Day Ahead|DSO|DSO assesses the Grid for the day after and finds a Voltage violation|The DSO Technical Platform is able to foresees the grid status for the day after|The DSO acquires on the market the energy flexibility to solve the grid issues for the day after|
| 2 |Real Time|DSO|DSO assesses the Grid for the next 4 hour to take in account the last grid outages or riconfiguration|The DMS is able to detect the critical issues in  short term|The DSO acquires on the market the energy flexibility to solve the grid issues for the real time|
| 3 |Activation|DSO|DSO sends the order to move the resources|The resources have won the session market|The Light Node measures the deviation from the baseline|
| 4 |Settlement|BRP|BRP sends the baseline to SCD|BRP estimate the baseline for the energy market| The market operator calculates the flexibility energy respect to BRP's baseline|


***Notes***

This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.

* **Primary Actor** - the first actor appearing in the scenario at the incident causing the scenario to begin.

* **Triggering Event** - the incident causing the scenario to begin.

* **Pre-Condition** - indicates which terms have to be fulfilled for the scenario to be executed.

* **Post-Condition** - indicates which terms should be valid after the scenario. TIt can also specify whether a scenario has been successfully completed or not.

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - Day Ahead**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 a | Users involvement | List of flexible customer - step 1 | Aggregator shares the customer list with the SCD | CREATE | Aggregator Platform | SCD | II - 02 |  |
| 2 a | Active POD | List of flexible customer - step 2 | The DSO acquires from SCD the list of POD involved | CREATE | SCD | DSO Techncial Platfoem | II - 02 |  |
| 3 a | DSO forecasts for day after | DSO Data acquisition | DSO Technical Platform acquires the data from SCD and from the field sensors (V&C sensors and LV3G) to run the forecast tool, to evaluate the production and the consumption | CREATE | SCD / LV3G /V&C sensors | DSO Technical PlatForm | II-19 / II-01 |  |
| 4 a | DSO simulate the grid for day after | Day Ahead grid assessment | DSO Tehcnical Platform runs the state estimation tool to assess the grid for the day after | CREATE | DSO Technical Platform | DSO Technical PlatForm |  |  |
| 5 a | Congestion Detection | Congestion localiaztion | If the DSO Technical Platform detect a congestion sends an alert to DSO operator | CREATE | DSO Technical Platform | DSO | II - 10 |  |
| 6 a | Using of solutions in premisis of DSO | Grid management | DSO tries first to solve the issues, using its own technical solutions.  | CREATE | DSO | SCADA | II - 11 |  |
| 7 a | Involving of the customers | Active Grid Management | DSO Technical Platform checks the further amount of flexibility that is required to solve the congestion and detects the location of the flexibility resources connected to distribution system, that can contribute to eliminate the voltage violation | CREATE | DSO Technical Platform | DSO Technical PlatForm |  |  |
| 8 a | Changing of Load Profile on Primary Substation (PS) | TSO - DSO PS Coordination | DSO sends to TSO the update of load profile on primary substation | CHANGE | DSO Technical Platform | TSO Simulator | II - 12 |  |
| 9 a | Flexibility Procurement | Flexibility requests | DSO communicates the flexibility requests (Volumes, time frame) to market | CREATE | DSO Technical Platform | market platfomr | II - 06 |  |
| 10 a | Market session | Requests Acquisition | The market Platform acquires and stores the DSO Day Ahead Requests | CREATE | market platfomr | market platfomr |  |  |
| 1 b | DER availability | Availability of Flexibility resources | DER Owner,through the app developed in the demo, communicates the availability of own resources to Aggregator, for the day after | CREATE | DER Owner | Aggregator Platform Platform | II - 10 |  |
| 2 b | Data acquisition | Data DER Acquisition | AGGREGATOR, known the available resources, acquires their data from Shared Customer Database | GET | SCD | Aggregator Platform Platform | II - 01 |  |
| 3 b | Customer flexibility | Providing of flexibility from DER | AGGREGATOR calculates the baseline and the flexibility energy for every customer in our premises | Execute | Aggregator Platform Platform | Aggregator Platform Platform |  |  |
| 4 b | Definition of the offer | Offering | AGGREGATOR arranges the offer for PODs defining the flexibility providing | CREATE | Aggregator Platform Platform | Aggregator Platform Platform |  |  |
| 5 b | Offers providing | Offers sending | AGGREGATOR sends the scheduling (volumes, time frame and price) for POD to market | CREATE | Aggregator Platform | market platfomr | II - 05 |  |
| 6 b | Market session | Offers Acquisition | Market Operator Acquires and stores the Aggregator Day Ahead Bids | GET | market platform | market platfomr |  |  |
| 1 c | TSO flexibility requests for day after | TSO requests | The TSO detects the location of the flexible resources that can contribute to eliminate the congestions at transmission level | CREATE | TSO Simulator | TSO Simulator |  |  |
| 2 c | Procurement of flexibility  | Flexibility requests | TSO communicates the requests (Volumes, time frame) of flexibility to market | CREATE | TSO Simulator | market platfomr | II - 06 |  |
| 3 c | Market session | Requests Acquisition | Market Operator acquires and stores the TSO Day Ahead Requests | CREATE | market platform | market platfomr |  |  |
| 11 a | Select of the cheaper requests for DSO | Economic market clearing | Market Operator solves the DSO requests, selecting the best offers located in the distribution network area subjected to congestions. To increase the realiability Market Platform selects also some additional offers beyond the requests | REPEAT | market platform | Martket Platform |  |  |
| 12 a | Select of the cheaper requests for TSO | Economic market clearing | The Market Operator uses the remaining flexibility to clear the TSO requests | REPEAT | market platform | Martket platform |  |  |
| 13 a | Preliminary list of auctioned offers  | Economical Auctioned offers | Market Operator gathers and orders the list of auctioned offers and send it to DSO  | REPORT | market platform | DSO | II - 08 |  |
| 14 a | Grid constraints assessment | Techncical assessment | DSO receives from Market the list of auctioned offers and assesses the grid constraints  | CREATE | DSO Technical Platform | DSO Techncial Platfoem |  |  |
| 15 a | Changing of Load Profile on Primary Substation (PS) | TSO - DSO PS Coordination | DSO sends the update of load profile on primary substation | CHANGE | DSO  | TSO Simulator | II - 12 |  |
| 16 a | Finally list of auctioned offers  | Auctioned offers | DSO sends the list of approved offers to Market | REPORT | DSO Technical Platform | market platfomr | II - 07 |  |
| 17 a | Market outcomes | Market Day Ahead outcomes | DSO, TSO and Aggregator receives Market Day Ahead outcomes from the Market Operator | REPORT | market platform | DSO/TSO/Aggregator Platform | II - 08 |  |
| 18 a | Available resources | Resource Planning | DER Owner receives the detail on the service to provide for the day after | REPORT | Aggregator Platform | DER Owner | II - 14 |  |


**Scenario Name: No. 2 - Real Time**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 a | DSO forecast for the next hours | DSO Data acquisition | DSO Technical Platform acquires the data from SCD and from the field sensors (V&C sensors and LV3G) to run the forecast tool, to evaluate the production and the consumption | CREATE | SCD / LV3G /V&C sensors | DSO Technical PlatForm | II-19 / II-01 |  |
| 2 a | DSO simulate the grid for the next hours | Real Tima grid assessment | DSO Tehcnical Platform run the state estimation tool to assesses the grid for the next four hours | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 3 a | Congestion detection | Congestion Localization | If the DSO Technical Platform detect a congestion sends an alert to DSO Operator | CREATE | DSO Technical Platform | DSO | II - 10 |  |
| 4 a | Using of solution in premisis of DSO | Grid management | DSO tries first to solve the isses, using its own technical solutions.  | CREATE | DSO | SCADA | II - 11 |  |
| 5 a | Involving of the customer  | Active Grid Management | DSO Technical Platform assess the amount of flexibility that is required to solve the congestions and decides the location of the flexibility resources connected to distribution system, that can contribute to eliminate the issues | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 6 a | Changing of Load Profile on Primary Substation (PS) | TSO - DSO PS Coordination | DSO sends to TSO the update of load profile on primary substation | CHANGE | DSO Technical Platform | TSO Simulator | II - 12 |  |
| 7 a | Flexibility Procurement  | Flexibility requests | DSO communicates the requests (Volumes, time frame) of flexibility | CREATE | DSO Technical Platform | market platfomr | II - 06 |  |
| 8 a | Open market session | Requests pubblishing | Market Platform acquires and stores the DSO Real time Requests | CREATE | DSO Technical Platform | market platfomr |  |  |
| 1 c | TSO flexibility requests for day after | TSO requests | The TSO detects the location of the flexible resources that can contribute to eliminate the Congestion at transmission level | CREATE | TSO Simulator  | TSO Simulator |  |  |
| 2 c | Flexibility Procurement | Flexibility requests | TSO communicates the requests (Volumes, time frame) of flexibility to market | CREATE | TSO Simulator  | market platfomr | II-06 |  |
| 3 c | Open market session | Requests pubblishing | Market Platform Acquires and stores the TSO Real time Requests | CREATE | TSO Simulator  | market platfomr |  |  |
| 9 a | Select of the cheaper requests for DSO | Economic market clearing | Market Platform solves the DSO requests, selecting the best offers located in the distribution network area subjected to congestions. To increase the realiability Market Platform select also some additional offers beyond the requests | REPEAT | market platform | Martket platform |  |  |
| 10 a  | Select of the cheapest requests for TSO | Economic market clearing | The Market Platform uses the remaining flexibility to clear the TSO requests | REPEAT | market platform | Martket platform |  |  |
| 11 a | Preliminary list of auctioned offers  | Economical Auctioned offers | The Market Platform gathers and orders the list of auctioned offers and sends it to DSO Technical Platform | REPORT | market platform | DSO Technical Platform | II - 08 |  |
| 12 a | Grid constraints assessment | Techncical assessment | DSO Technical Platform receives from Market Operator the list of auctioned offers and assesses the grid constraints  | CREATE | DSO Technical Platform | DSO Technical Platform |  |  |
| 13 a | Changing of Load Profile on Primary Substation (PS) | TSO - DSO PS Coordination | DSO Technical Platform sends the update of load profile on primary substation | CHANGE | DSO Technical Platform | TSO Simulator | II-12 |  |
| 13 a | Finally list of auctioned offers  | Auctioned offers | DSO Technical Platform sends the list of approved offers to Market | REPORT | DSO technical Platform | market platfomr | II -07 |  |
| 14 a | Market outcomes | Market Real Time outcomes | DSO, TSO and Aggregator receives Market Real Time outcomes from the Market Operator | REPORT | market platfomr | DSO/TSO/Aggregator Platform | II - 08 |  |
| 15 a | Available resources | Resorces planning | DER Owner receives the detail on the service to provide in the Real Time | REPORT | Aggregator Platform | DER Owner | II-14 |  |


**Scenario Name: No. 3 - Activation**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 a | DSO have to solve a voltage violation  | DSO Flxibility order | DSO Technical Platform sends the order to move flexibility to the market operator | CREATE | DSO Technical Platform | Market Platform | II-09 |  |
| 1 b | TSO have to solve a grid congestion  | TSO Flxibility order | TSO sends the order to move the flexibility to the market operator | CREATE | TSO Simulator | Market Platform | II-09 |  |
|  2 a | Order transmission | Carryng of set point - step 1 | The Market Platform receives and sends the order to DSO Technical Platform | CREATE | Market Platform | DSO Technical Platform | II-09 |  |
| 3 a | Order transmission  | Carryng of set point - step 2 | DSO receives from Market the scheduling and sends the set points to Light Nodes | CREATE | DSO Technical Platform | Light Nodes | II-09 |  |
| 4 a | Order available | Delivering of set point  | The Light Node receives and makes available the set point to EMS (it can be BMS or HMS) | CREATE | Light Node | EMS / BMS / HMS | II-09 |  |
| 5 a | Moving of flexibility | Activation | Energy Management System, acquires the set point and select the correct scenario for electrical appliances (it can be also EV or storage), and/or suggests the right behaviour for the customers (f.i. through an alert); | CREATE | EMS / BMS / HMS | Smart Appliance / EV / Storage | II-15 |  |
| 6 a | Using of Bolckchian Access Layer | Data Certification | The Light Node carries the set point and the measurements (takes every 4 sec.) in the BlockChain | CREATE | Light Nodes | BlockChain Access Layer | II-04 / II-09 |  |
| 7 a | Flexibility Certification | BlockChain outcomes | The Blockchain sends the certification data to SCD | CREATE | BlockChain Access Layer | Shared Customer Database | II-04 / II-09 |  |
| 8 a | Measurement of flexibility energy | Energy Monitoring | Light Node measures the electrical quantities for calculate the flexibility and sends them to SCD | CREATE | Light Node | Shared Customer Database | II-04 / II-09 |  |


**Scenario Name: No. 4 - Settlement**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Baseline Definition | Market Baseline | BRP defines the production and/or consumption programs for any resource involved in the local flexibility market, and sends it to SCD | CREATE | BRP | SCD | II-03 |  |
| 2 | Energy moved after a flexibility requests | Flexibility measurements | The light nodes sends the measurements to SCD | CREATE | Light Node | SCD | II-04 |  |
| 3 | Gathering of the data | Settlement - step 1 | Market Platform acquires the data from SCD | CREATE | SCD | Market Platform | II-04 |  |
| 4 | Flexibility evaluation | Settlement - step 2 | Market Operator performs the settlement comparing the metering data and BRP baseline | CREATE | Market Platform | Market Platform |  |  |
| 5 | Settlements outcomes | Settlement - step 3 | Market Operator communicates the settlements outcomes to DSO, TSO and AGGREGATOR | CREATE | Market Platform | DSO ; TSO ; Aggregator Platform | II -16 |  |
| 6 | Payment of provided Energy | Payment | DSO pays the provided Energy for flexibility to AGGREGATOR | CREATE | DSO | Aggregator Platform | II -17 |  |
| 7 | Customer payment | Payment | AGGREGATOR shares the revenues with the flexibility resources under their jurisdiction | CREATE | Aggregator Platform | DER Owner | II -18 |  |


***Notes***

This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.

* **Event** - Event triggering a step, specific for that use case.

* **Name of Process/ Activity** - general classification of process/activity (e.g. data aquisition).

* **Description of Process/ Activity** - more detailed description of the step.

* **Service** - addresses the nature of the information flow. Possible: GET (The information receiver obtains information from the
information producer after an implicit request.), CREATE (The information producer creates an information object.), CHANGE (The information producer performs an update of the information at the information receiver’s.), DELETE (The information producer deletes information of the receiver.), CANCEL/CLOSE (A process is terminated.), EXECUTE (An action or service is performed.), REPORT (The information producer supplies information of its own account.), TIMER (The actor which represents both information producer
and receiver has to enforce a waiting period.), REPEAT (A number of steps has to be repeated until a break condition (stated in the field Event) is satisfied. The contemplated steps have to be added in parentheses.).

* **Information Producer and Receiver (Actor)** - actors from actor list in section 3.1

* **Information exchanged (IDs)** - ID of the information defined further in section 5

# 5. Information Exchanged

|**Information exchanged ID**|**Name of Information** | **Description of Information Exchanged** | **Requirements to information data** |
| --- | --- | --- | --- |
|I-01|Quarterly measures|The aggregator baseline or the DSO grid forecast use the data measurements (active power, energy consumption, energy production,…) stored in SCD. This measures have a 15 minutes granularity||
|I-02|Customer data|This information contains the list of customer involved in the flexibility providers for the day after||
|I-03|BRP Baseline|The BRP defines for every POD the day after load profile, in compliance with the market day ahead||
|I-04|Near real time measures|This information contains for every POD involved in the flexibility market, the active power measured every 4 second||
|I-05|Data for Offer|The flexibility offer contains the volume, the time frame and the price provided by the DER involved in the group||
|I-06|Data for Requests|The flexibility request contains the needs of flexibility (volume and time frame) localized in specific nodes of the grid||
|I-07|Technical Validation|This information contains the assessment of the local grid constraints||
|I-08|Market Outcomes|This information contains the list of offers arranges for economic order and in compliance with the grid constraint||
|I-09|Order|The TSO and the DSO send a signal of activation to move the DER involved in the service||
|I-10|Congestion localization|The DSO technical platform defines a list of grid nodes subject to congestions||
|I-11|Grid configuration|The DSO technical platform detects the possible grid configuration to solve the issue||
|I-12|Primary Substation load profiling |This information contains the load profiling on the transformer in Primary Substation||
|I-13|DER status|This information contains the customer availability for move own DER||
|I-14|DER planning|This information contains the time frame, and the power that the customer have to provide during the activation||
|I-15|Activation Signal|The EMS sends the signal of activation to smart load ||
|I-16|Settlement outcomes|This information contains for every offer the energy moved and the payment||
|I-17|DSO payment|It is the payment of DSO for the energy provided||
|I-18|Aggregator payment|It is the remuneration that the aggregator recognizes to the customer||
|I-19|Technical Measurement|Electrical quantities coming from the field sensors (Voltage and current sensors or Low Voltage circuit breaket embedded with IED)|

***Notes***

* **Information exchanged ID** - unique number (I-01,I-02...) for identification

* **Requirements to information data** - optional, defined in section 6

# 6. Requirements (optional)

# 7. Common Terms and Definitions

| **Term** | **Definition** |
| --- | --- |
|||


# 8. Custom Information (optional)

| **Key** | **Value** | **Refers to Section** |
| --- | --- | --- |
|||
