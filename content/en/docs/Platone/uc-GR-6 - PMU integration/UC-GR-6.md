# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*
| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-GR-6 | Area: Energy system </br> Domains: Distribution/</br> Zone: Station,Operation </br>  | PMU integration and Data Visualization for Flexibility Services Management |

***Notes:***
* **ID** - uniqe identification label: DE-1/GR-3/IT-2
* **Area /Domain(s)/Zone(s)** - placement of the use case in the SGAM domains and zones. It can be left blank if you are not sure.

## 1.2. Version Management

*Version management*
|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1|17th June 2020|Dimitris Stratogiannis, Panagiotis Pediaditis, Stavroula Tzioka, Eleni Daridou, Themistoklis Xygkis|Initial creation|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*

|||
| --- | --- |
| Scope | The scope of the UC is to examine the integration and operational use of low cost PMUs in order to increase network observability collecting measurement data such as voltage, current and phases in various points of the distribution network. More in detail, the DSO will use the data collected to improve the operation of the tools and services developed within the project by exploiting increased data granularity. Furthermore, the data coming from various sources and systems of the DSO should be integrated and visualised in a friendly User Interface (UI) of the DSO Technical platform in order to be handled by the DSO personnel. <br/> Network: MV, LV <br/> Markets: Near Real Time 	<br/> **to comment: should be or will be delivered/integrated in this UC? " In addition, all the available data should be further delivered for use by tools and services developed in order to support flexibility mechanisms. All the appropriate communication protocols should be integrated and tested to develop a unique point of data delivery to various actors involved in the project."** |
| **Objective(s)** | * To increase network observability. <br/> * To integrate data coming from different sources in the DSO Technical Platform.|
| **Related business case(s)** |add text|

***Notes:***
* **Scope** - describes the aims and boundaries of the use case in a short, precise text.
* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.
* **Realted business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**
The DSO operates the distribution network and handles the data sources coming from various systems such as SCADA/DMS, AMR, GIS etc. Data coming from various sources get integrated into the Open DSO Technical Platform providing an adequate level of network observability. Low cost PMUs are deployed in Mesogia area in critical network points and nodes where there is limited observability or a requirement to have an increased awareness such as DER and prosumers bidirectional power flows. PMUs are integrated in the DSO Technical Platform following a data collection plan that serves the functionalities of the flexibility tools and services. Measurements from PMUs  enhance network awareness in terms of data granularity and number of nodes observed in a cost effective manner. Also, the open DSO Technical Platform performs the correlation of the data coming from different sources and systems during real time, providing to the DSO the technical capacity for flexibility mechanisms support and a User Interface (UI) where the aforementioned is visualised.

**Complete description**

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

\&lt;! Example for img1: {{\&lt; imgproc img\_1 Fit &quot;600x400&quot; \&gt;}} Diagram 1 {{\&lt; /imgproc \&gt;}} !\&gt;

# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| DSO | Person | add text| DMS, DSO technical Platform , PMUs , State estimation tool, Measurement Data, Network topology|
| TSO| Person | add text| add text|
| Residential Consumer| Person | add text| Load information (aggregated) and Measurements|
| Commercial Consumer| Person | add text| Load information (aggregated) and Measurements|
| Aggregator/ Flexibility operators| Person | add text|add text|
| RES production| Person | add text|add text|

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
| 1 | | | | | |

***Notes***
This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.
* **Primary Actor** - the first actor appearing in the scenario at the incident causing the scenario to begin.
* **Triggering Event** - the incident causing the scenario to begin.
* **Pre-Condition** - indicates which terms have to be fulfilled for the scenario to be executed.
* **Post-Condition** - indicates which terms should be valid after the scenario. TIt can also specify whether a scenario has been successfully completed or not.

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - (name of scenario)**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |||||||||
| 2 |||||||||

**Scenario Name: No. 2 - (name of scenario)**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged (IDs)** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |||||||||
| 2 |||||||||

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
|I-01|Voltage and Current levels|||
|I-02|phasors|||
|I-03|Power Flows |||
|I-04|Consumption data|||
|I-05|Network topolgy change|||

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
