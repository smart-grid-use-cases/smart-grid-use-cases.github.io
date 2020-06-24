# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*
| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-GR-1| Area: Energy system </br> Domains: Distribution, DER, Customer Premises </br> Zones: Station, Operation  </br> | Functions of SE tool given conventional measurements|

***Notes:***
* **ID** - uniqe identification label: DE-1/GR-3/IT-2
* **Area /Domain(s)/Zone(s)** - placement of the use case in the SGAM domains and zones. It can be left blank if you are not sure.

## 1.2. Version Management

*Version management*
|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1|17th June 2020|Themistoklis Xygkis, Panagiotis Pediaditis, Stavroula Tzioka, Eleni Daridou, Dimitris Stratogiannis|Initial creation|Draft|


## 1.3. Scope and Objectives of Use Case

|||
| --- | --- |
| Scope | The scope of the UC is the investigation of the capability of the state estimation tool to filter the available measurement data, comprising actual measurements obtained from active metering devices and pseudo-measurements, i.e. data derived from load forecasting or RES scheduling for network observability accomplishment, in order to identify measurement with gross errors (bad data), to suppress measurement errors, to reconcile inconsistent data and, ultimately, to estimate the actual operational network state. The goal is to ensure that high quality estimative of the network state will be acquired via the state estimation tool in real-time conditions under various network operating scenarios. The estimated network state will be used as an input to distribution management applications.<br/>|
| **Objective(s)** | The DSO needs to improve confidence in actual measurement data obtained throughout the network as well as available load forecasts in order to capture the real-time operational network state.|
| **Related business case(s)** |add text|

***Notes:***
* **Scope** - describes the aims and boundaries of the use case in a short, precise text.
* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.
* **Realted business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**
Fulfillment of network observability and estimation of its real-time state by the State Estimation tool.

**Complete description**
The DSO operates the distribution network. A measurement set, composed of actual and historical measurement data obtained from the dispersed metering devices (AMR, GIS, SCADA) installed throughout the network, is available for real-time operation purposes. The related measurements refer to power flows and voltage magnitudes at the top of distribution feeders, power injections from distributed generation units, and load pseudo-measurements for aggregated consumer demand at MV/LV transformer level. Given that the network model (topology) is known with a good degree of certainty, the state estimation tool ensures that the network is observable based on the available measurement set and, subsequently, calculates the estimated state vector, that is, the voltage magnitudes and angles of all network buses. 


## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|1||||

***Notes:***
Can be left blank now

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-----------|
|add text| The network model (topology) is known with a good degree of certainty, DSO systems (e.g.AMR, GIS, SCADA) being operational|

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

\&lt;! Example for img1: {{\&lt; imgproc img\_1 Fit &quot;600x400&quot; \&gt;}} Diagram 1 {{\&lt; /imgproc \&gt;}} !\&gt;

# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| AMR | System | Automatic Meter Reading system| add text |
| DMS | System | Distribution Management System | add text|
| DSO | Person | Distribution System Operator| The entity responsible for: the safe and secure operation and management of the distribution system; for data management associated with the use of the distribution system; for procurement of flexibility services using optimization algorithms and the DSO Technical Platform  |
| DSO Data Server | System | Database containing data from AMR, DMS & SCADA| |
| GIS | System | Geographical Information System |  |
| PMU | Device | Phasor Measurement Unit | |
| SCADA | Device | Supervisory Control And Data Acquisition system|  |
| State Estimation tool| System | Tool that allows and supports the operation of other DMS services and applications by processing network observability, improving confidence in available measurement data and calculating the most likely real-time network state.|  |


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
| 1 | Attainment of quality state estimation using accurate pseudo-measurements or indicating new measured points. | SCADA | State estimation accuracy below predefined threshold| State vector with relatively low accuracy | High-accuracy state vector | 
| 2 | Fulfillment of observability using additional/alternative data to substitute for the missing ones.| SCADA | Initially missing or inconsistent measurements | Unobservable network | High-accuracy state vector | 

***Notes***
This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.
* **Primary Actor** - the first actor appearing in the scenario at the incident causing the scenario to begin.
* **Triggering Event** - the incident causing the scenario to begin.
* **Pre-Condition** - indicates which terms have to be fulfilled for the scenario to be executed.
* **Post-Condition** - indicates which terms should be valid after the scenario. TIt can also specify whether a scenario has been successfully completed or not.

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - Attainment of quality state estimation**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |Measurements from the Distribution Network|Data Aquisition|	Various field measurements that reflect the network state are communicated |REPORT|SCADA,DMS,GIS,AMR|DSO Data Server|Measurements||
| 2 |Measurements from the Distribution Network|Data Aquisition|	Various field measurements that reflect the network state are communicated |REPORT|DSO Data Server|State Estimation tool|Measurements||
| 3 |Measurements from the Distribution Network| Observability assessment| A numerical observability method is used in order to determine observability status |EXECUTE|State Estimation tool||Observability status||
| 4 |Measurements from the Distribution Network|Calculation of state vector| State estimation algorithm is carried out |EXECUTE|State estimation tool||State vector||
| 5 |State vector with low accuracy|Data Aquisition|New measurements/pseudo-measurements integrated in the State Estimation tool |CHANGE|DSO Data Server|State estimation tool|Measurements||
| 6 |Measurements from the Distribution Network| Calculation of state vector| State estimation algorithm is carried out |EXECUTE|State Estimation tool||State vector||
| 7 |Measurements from the Distribution Network| Output of State Estimation tool| Estimated state vector is communicated |REPORT|State Estimation tool|DSO|State vector||


**Scenario Name: No. 2 - Fulfillment of observability**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged (IDs)** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |Measurements from the Distribution Network|Data Aquisition|	Various field measurements that reflect the network state are communicated |REPORT|SCADA,DMS,GIS,AMR|DSO Data Server|Measurements||
| 2 |Measurements from the Distribution Network|Data Aquisition|	Various field measurements that reflect the network state are communicated |REPORT|DSO Data Server|State Estimation tool|Measurements||
| 3 |Measurements from the Distribution Network| Observability assessment| A numerical observability method is used in order to determine observability status |EXECUTE|State Estimation tool||Observability status||
| 4 |Lack of observability| Data acquisition | Additional/alternative data to substitute for missing or inconsistent measurements, are into integrated in the State Estimation tool|CHANGE|DSO Data Server|State Estimation tool|Measurements||
| 5 |Measurements from the Distribution Network| Observability assessment| A numerical observability method is used in order to determine observability status |EXECUTE|State Estimation tool||Observability status||
| 6 |Measurements from the Distribution Network| Output of State Estimation tool| Estimated state vector is communicated |REPORT|State Estimation tool|DSO|State vector||

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

***Notes***
* **Information exchanged ID** - unique number (I-01,I-02...) for identification
* **Requirements to information data** - optional, defined in section 6

# 6. Requirements (optional)

# 7. Common Terms and Definitions

| **Term** | **Definition** |
| --- | --- |
|Pseudo-measurement|An injection whose value is obtained either from bus load forecasts or generation schedules. It is used as a substitute for a missing measurement in order to restore observability. |
|State vector|Voltage magnitudes and angles of all network buses|


# 8. Custom Information (optional)

| **Key** | **Value** | **Refers to Section** |
| --- | --- | --- |
|||
