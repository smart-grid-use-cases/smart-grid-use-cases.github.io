# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*

| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-GR-04| Area: Energy system/</br> Domains: Distribution,Transmission, DER, Customer Premises/</br> Zone: Station,Operation </br> | Frequency support by the distribution network|

***Notes:***

* **ID** - unique identification label: DE-1/GR-3/IT-2

* **Area /Domain(s)/Zone(s)** - placement of the use case in the SGAM domains and zones. It can be left blank if you are not sure.

## 1.2. Version Management

*Version management*

|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1|17th June 2020|Panagiotis Pediaditis, Stavroula Tzioka, Eleni Daridou, Dimitris Stratogiannis, Themistoklis Xygkis|Initial creation|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*
|||
| --- | --- |
| Scope | The scope of the UC is to examine the operational use of flexibility tools in order to satisfy that line and voltage limits of the distribution network are not violated in the case of a frequency support request by the transmission system. More in detail, customers with flexible loads will respond to such requests and the DSO will use flexibility tools to coordinate their response aiming at achieving the frequency support objective while ensuring distribution network operational safety. As in the previous Use Cases the state of the system is provided by the state estimation tool. <br/> Network: MV <br/> Markets: Near Real Time|
| **Objective(s)** | To keep the distribution network within physical limits (line and voltage) with appropriate actions in the case of a frequency restoration reserve activation request by the TSO.|
| **Related business case(s)** |add text|

***Notes:***
* **Scope** - describes the aims and boundaries of the use case in a short, precise text.
* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.
* **Related business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**
Various types of flexible loads -aggregated for the scope of the Use Case- react to network tariffs sent by the DSO, so that frequency restoration request from the TSO is adequately handled.

**Complete description**
Customers with flexible loads are connected to the distribution network and their loads are considered aggregated for the scope of the UCs regarding their management in the MV level. State of the network is known with a good degree of certainty based on the available measurements and the topology via the AMR, GIS and SCADA data. A frequency support activation request from the TSO arrives at the customers with flexible loads. The request is also communicated to the DSO technical platform via an API and the information is shared with the appropriate tools and services. The DSO calculated and communicated to the customers the appropriate network tariffs that reflect the situation of the network. The flexible loads react to these tariffs and respond to the frequency support request appropriately.

add text - longer narrative from user viewpoint about *what* happens *how*, *where*, *when*, *why* and *under which assumptions*. It has to be written in a way that it can also be understood by non-experts.


## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|add text|add text|add text|add text|

***Notes:***
Can be left blank now

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
|Customers' consent required for participation in the flexibility mechanism, Customers are rational, Part of the load is flexible, State of the network is known with a good degree of certainty|Simulation of TSO, Dynamic network charging is allowed, Smart metering is installed, Smart appliances can perform load shifting, DSO systems (e.g.AMR, GIS, SCADA) being operational|


Customers are rational, Part of the load is flexible, State of the network is known with a good degree of certainty
***Notes:***
* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)
* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|Relation to other use cases|
|---------------------------|
|include uc-GR-1 and potentially uc-GR-2|
|**Level of depth**|
|detailed|
|**Prioritisation**|
|add text|
|**Generic, regional or national relation**|
|add text|
|**Nature of the use cases**|
|technical, market, test|
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

![Diagram of Use Case](UC_GR_1_2_3_4_UCdiagrams-UC4.svg)
![Sequence diagram](UC_GR_1_2_3_4_Seq_Diag-UC4.svg)
# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| Aggregator| Person | add text| add text|
| AMR | System | Automatic Meter Reading system|  |
| Commercial customer | Person | Final end user to denote a typical commodity commercial consumption with capability of neither generation nor storage.| |
| DMS | System | Distribution Management System | |
| DSO | Person | Distribution System Operator| The entity responsible for the safe and secure operation and management of the distribution system; for data management associated with the use of the distribution system; for procurement of flexibility services using optimization algorithms and the Platone DSO Technical Platform.  |
| DSO Data Server | System | Database containing data from AMR, DMS & SCADA| |
| GIS | System | Geographical Information System |  |
| PMU | Device | Phasor Measurement Unit | |
| RES | Person | Renewable Energy Source| |
| Residential customer | Person | Final end user to denote a typical commodity residential consumption with capability of neither generation nor storage.| |
| SCADA | Device | Supervisory Control And Data Acquisition system|  |
| State Estimation tool| System | Tool that allows and supports the operation of other DMS services and applications by processing network observability, improving confidence in available measurement data and calculating the most likely real-time network state.|  |
| TSO | Person | Transmission System Operator| Simulated entity to trigger the use case|

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
| 1 |Frequency support request resolved |TSO |TSO sending a fequency support request |Distribution network observability | Frequency support request resolved|

***Notes***
This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.
* **Primary Actor** - the first actor appearing in the scenario at the incident causing the scenario to begin.
* **Triggering Event** - the incident causing the scenario to begin.
* **Pre-Condition** - indicates which terms have to be fulfilled for the scenario to be executed.
* **Post-Condition** - indicates which terms should be valid after the scenario. TIt can also specify whether a scenario has been successfully completed or not.

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - Frequency support request resolved**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2 |TSO needs frequency support|Frequency support request|Frequency support request sent to the Aggregator|CREATE|TSO|Aggregator|Frequency support request||
| 3 |TSO needs frequency support|Frequency support request|Frequency support communicated to the DSO|CREATE|TSO|DSO|Frequency support request||
| 4 |Frequency support request|Tariffs calculation|Tariffs calculation that reflect the situation of the network|EXECUTE|DNO|DNO|Network tariffs||
| 5 |Tariffs calculation|Tariffs communication|Tariffs are communicated to the Aggregator|CREATE|DSO|Aggregator|Network tariffs||
| 6 |Tariffs communication|Setpoint sent to Residential Customer| Sending setpoint to the flexibility load|CREATE|Aggregator|Residential consumer|Setpoint||
| 7 |Tariffs communication|Setpoint sent to Commercial Customer| Sending setpoint to the flexibility load|CREATE|Aggregator|Commercial consumer|Setpoint||
| 8 |Tariffs communication|Setpoint sent to RES| Sending setpoint to the RES producer|CREATE|Aggregator|RES|Setpoint||
| 9 |none|Data Aquisition|New Distribution Network state (Distribution Network state updated following the Aggregator's response)|REPORT|SCADA,DMS,GIS,AMR,PMU|DSO Data Server|Measurements||
| 10 |New Distribution Network state|Data Aquisition|New Distribution Network state|REPORT|DSO Data Server|State Estimation Tool|Measurements||
| 11 |New Distribution Network state|Data Aquisition|New Distribution Network state|REPORT|State Estimation Tool|DSO|Measurements||

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
|I-01|Measurements|Measurements from the Distribution Network (e.g. voltage levels, power injections, etc)||
|I-02|State Vector|Voltage magnitudes and angles of all network buses||
|I-03|Frequency support request|Frequency support request from the TSO||
|I-04|Network tariffs|Network tariffs that reflect the Disribution Network state||
|I-05|Setpoint|Setpoint for adjustment of flexible load/RES production||


***Notes***
* **Information exchanged ID** - unique number (I-01,I-02...) for identification
* **Requirements to information data** - optional, defined in section 6

# 6. Requirements (optional)

# 7. Common Terms and Definitions

| **Term** | **Definition** |
| --- | --- |
|Dynamic tariffs|Price signals communicated to the flexible loads in order to incentivise their behaviour.|


# 8. Custom Information (optional)

| **Key** | **Value** | **Refers to Section** |
| --- | --- | --- |
|||

