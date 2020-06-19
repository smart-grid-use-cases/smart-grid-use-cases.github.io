# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*
| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-GR-2| Area: Energy system </br> Domains: Distribution, DER, Customer Premises </br> Zones: Station, Operation  </br> | PMU data integration into SE tool |

***Notes:***
* **ID** - uniqe identification label: DE-1/GR-3/IT-2
* **Area /Domain(s)/Zone(s)** - placement of the use case in the SGAM domains and zones. It can be left blank if you are not sure.

## 1.2. Version Management

*Version management*
|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1|17th June 2020|Themistoklis Xygkis, Panagiotis Pediaditis, Stavroula Tzioka, Eleni Daridou, Dimitris Stratogiannis|Initial creation|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*

|||
| --- | --- |
| Scope | The scope of the UC is the integration of measurement data obtained from PMUs into the State Estimation tool.The installation of PMUs at selected buses is sure to upgrade the overall metering infrastructure of the network, since they record synchronized measurements of bus voltage phasors as well as a number of line current phasors—all of which are independent of each other and count as individual measurements. Yet, their proper utilization via the SE tool is a challenging task due to a) the intense discrepancies in update rates between conventional and PMU measurements, b) the provision of current measurements which often lead to various numerical problems, and c) the contrast between the large weighting factors linked to PMU measurements compared to the much lower ones linked to pseudo-measurements, which usually raises ill-conditioning issues. The goal is to ensure that the integration of PMU data will be smooth and all the aforesaid problems will be circumvented. In this way, the overall performance of the SE tool will be enhanced; the network state will be calculated with increased precision and high quality real-time operational standards for distribution management applications, will be met.|
| **Objective(s)** | * To reinforce network observability and controllability via improved state estimation performance.<br/> * To ensure smooth incorporation of synchronised measurement data derived from PMUs into the preexisting system of conventional measurements.|
| **Related business case(s)** |add text|

***Notes:***
* **Scope** - describes the aims and boundaries of the use case in a short, precise text.
* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.
* **Realted business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**
Measurement data obtained from the installed PMUs are integraded in the State Estimation tool and used to enhance the network observability. 

**Complete description**
A measurement set, composed of actual and historical measurement data obtained from the dispersed metering devices (AMR, GIS, SCADA, PMUs) installed throughout the network, is available to the DSO for real-time operation purposes. The aforementioned data refer to a) synchronised measurements of bus voltage phasors and line current phasors (magnitude and angle) and b) conventional measurements of power flows and voltage magnitudes at the top of distribution feeders, power injections from distributed generation units, and load pseudo-measurements for aggregated consumer demand at MV/LV transformer level. Given that the network model (topology) is known with a good degree of certainty, the state estimation tool ensures that the network is observable based on the available measurement set, reconciles the PMU data with the conventional measurements, and, subsequently, calculates the estimated state vector, that is, the voltage magnitudes and angles of all network buses.

## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|add text|add text|add text|add text|

***Notes:***
Can be left blank now

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|	-----------|
|add text| The network model (topology) is known with a good degree of certainty, DSO systems (e.g.AMR, GIS, SCADA) being operational, PMUs are installed|

***Notes:***
* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)
* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|Relation to other use cases|
|---------------------------|
|Associate with UC-GR-6|
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
| DSO | Person | add text| DMS, DSO technical Platform , PMUs , Measurement Data, Network topology|
| Residential consumer | Person | add text| Load information (aggregated) and Measurements|
| Commercial consumer | Person | add text| Load information (aggregated) and Measurements|
| RES production| Person | add text| Measurements|
| State Estimation tool| System | Tool that allows and assists the use of other DMS services and applications to provide network state estimation, improvement of measurement data reliability and better network observability | |

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
| 1 |PMU data integration | SCADA,PMU |	State estimation accuracy to be improved|PMU field intstallation | High-accuracy state vector|

***Notes***
This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.
* **Primary Actor** - the first actor appearing in the scenario at the incident causing the scenario to begin.
* **Triggering Event** - the incident causing the scenario to begin.
* **Pre-Condition** - indicates which terms have to be fulfilled for the scenario to be executed.
* **Post-Condition** - indicates which terms should be valid after the scenario. TIt can also specify whether a scenario has been successfully completed or not.

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - PMU data integration**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |Measurements from the Distribution Network|Data Aquisition|	Various field measurements that reflect the network state are communicated |REPORT|SCADA,DMS,GIS,AMR, PMUs|DSO Data Server|Measurements||
| 2 |Measurements from the Distribution Network|Data Aquisition|	Various field measurements that reflect the network state are communicated |REPORT|DSO Data Server|State Estimation tool|Measurements||
| 3 |Measurements from the Distribution Network| PMU data integration | PMU and conventional measurements integrated into a unified measurement set|EXECUTE|State Estimation tool||Measurements||
| 4 |Measurements from the Distribution Network| Observability assessment| A numerical observability method is used in order to determine observability status |EXECUTE|State Estimation tool||Observability status||
| 5 | Measurements from the Distribution Network|Calculation of the state vector| State estimation algorithm is carried out |EXECUTE|State estimation tool||State vector||
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
|I-03|Measurements|Measurements from PMUs (e.g. voltage magnitudes, voltage phasors, current phasors)||


***Notes***
* **Information exchanged ID** - unique number (I-01,I-02...) for identification
* **Requirements to information data** - optional, defined in section 6

# 6. Requirements (optional)

PMU field installation

# 7. Common Terms and Definitions

| **Term** | **Definition** |
| --- | --- |
|Phasor measurements|Measurements of magnitude and phase angle of voltage or current signals, which are synchronised via the global positioning satellite (GPS) system.|
|Pseudo-measurement|An injection whose value is obtained either from bus load forecasts or generation schedules. It is used as a substitute for a missing measurement in order to restore observability. |
|State vector|Voltage magnitudes and angles of all network buses|


# 8. Custom Information (optional)

| **Key** | **Value** | **Refers to Section** |
| --- | --- | --- |
|||
