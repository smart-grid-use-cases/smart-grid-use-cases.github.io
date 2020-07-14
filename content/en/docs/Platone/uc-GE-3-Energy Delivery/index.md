---
title: "UC-GE-3"
linkTitle: "UC-GE-3"
date: 2020-07-09
description: >
  Energy Delivery
---

# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*

| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-DE-3| Area: Energy system </br> Domain(s): Distribution, Customer Premise, Field, DER, Operation <br/> Zone(s): Operation, Enterprise, Process, Field | Package-based Energy Supply: <br/> Electricity is delivered to local energy community during predefined timeslots, outside of which the community reverts to temporary island-mode. |

## 1.2. Version Management

*Version management*

|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1||Thorsten Gross|Initial creation||
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|
|0.3|19th June 2020|Benjamin Petters|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*

|||
| --- | --- |
| Scope | Package-based Energy Supply: <br/> Energy communities with a high proportion of self-generation and flexible consumers and storage can maximize the self-consumption of locally generated energy. These communities are unlikely to meet their own needs with locally generated energy throughout the year and will potentially run into energy-deficit in times of low local generation. Energy deficits could be compensated by the supplying distribution network. To reduce the stress on the mid-voltage feeder and reduce overall network cost, energy deficits occurring could be forecasted and delivered in discrete packages ahead of time at fixed time slots and be stored in local storages until demand arises. <br/> Networks: LV, MV <br/> Markets: None|
| **Objective(s)** | •	Enabling temporary islanding even in times of energy deficit of the local community <br/> •	Forecasting of residual energy demand of an energy community <br/> •	Calculation of required energy packages serving energy deficits <br/> •	Determination of power exchange schedule for the energy community for the grid connection point LV/MV (time and power of load exchange)  <br/> •	Determination of a setpoint schedule for individual local asset to meet energy community setpoint schedule  <br/> •	Execution of defined power exchange between energy community and the distribution network |
| **Related business case(s)** |Integration of local energy communities in network management and supply strategies for the stabilization and uniform utilization in distribution grid|

***Notes:***

* **Scope** - describes the aims and boundaries of the use case in a short, precise text.

* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.

* **Realted business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**

Local energy communities (LEC, CEC) are likely to emerge in Europe in the near future but will most likely retain an interconnection to the distribution grid. These communities will require a large share of flexibility to enable their primary use case (islanding). <br/> In the absence of sufficient generation and storage, the community is unlikely to be self-sufficient at all times. When energy deficits occur, they must be provided by the distribution network. Instead of a real time energy supply by the connected distribution network, energy deficits could be forecast and supplied as an energy package with a defined time, duration and power value for the load exchange at the LV/ MV-grid connection point that connects the community with the distribution grid. The energy package shall be stored in local storages within the community and available for use, when the demand is rising. Outside of the defined periods of energy provision, no power exchange shall all the grid connection point shall take place, according to DE-UC1. This use case enables the DSO to reduce overall network costs, for example by gaining the ability to stagger the demand of multiple communities along a single feeder, thusly reducing the factor of coincidence of peak load and peak load level accordingly.



**Complete description**

add text - longer narrative from user viewpoint about *what* happens *how*, *where*, *when*, *why* and *under which assumptions*. It has to be written in a way that it can also be understood by non-experts.


## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|add text|add text|add text|add text|

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
|Formation of energy communities in future distribution grid|The Clean Energy Package has to be implemented by national regulation and legislations, enabling the formation of energy communities.|
|Integration of battery storage in control mechanisms of the DSO|The local energy community has the ability to forecast net-energy deficit day ahead and can accept and follow power setpoints as defined by the DSO.|
|DSO supply mechanism for local energy communities|The DSO is enabled and capable to apply novel supply strategies to energy communities, moving away from real-time supply to a package-based philosophy.|


***Notes:***

* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)

* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|**Relation to other use cases**|
|---------------------------|
|UC 3 requires UC 1 and UC 2 as a prerequisite|
|**Level of depth**|
|Primary Use Case|
|**Prioritisation**|
|1, very important|
|**Generic, regional or national relation**|
|Germany|
|**Nature of the use cases**|
|Technical|
|**Further keywords for classification**|
|Medium Voltage Grid, Low Voltage Grid, Monitoring, Energy Communities, Islanding|

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

![Sequence Diagram](UC_GE_1_2_3_4_Seq_Diag.png)

*Sequence Diagram*

![Use Case Diagram](UC_GE_1_2_3_4_UC_diagram.png)

*Use Case Diagram*

# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| Consumer Load | System | Household with a standard load profile energy consumption of a single household or energy consumer with a standard load profile of an agricultural building. | No direct measurement of energy consumption, demand not controllable(passive user). |
| Generators | System | Roof Top photovoltaic system generating energy directly correlated with solar radiation at location. | Limited controllability (can be curtailed in extreme cases). Located on customers premise and can be operated in combination with a battery storage system, for optimization of own consumption. |
| Controller | Device | Summarises all devices that are able to receive setpoints or setpoint schedules and translate them into actionable steering commands for the flexible load or storage. | |
| Sensors | Device | Devices that measure voltage, current and angle of phase or SOE or SOC in case of storages and able to communicate to external systems or devices. | Retrofit (PMU or other) or integrated |
| Battery Energy Storage System (BESS) | System | System that are demanding, storing and feeding energy to the local grid/energy community. | 300 kW/600 kWh, fully integrated in EMS and full time available for UC. |
| Household Energy Storage | System | System that are demanding, storing and feeding energy to the local grid/energy community. | Integrated in EMS and full time available for UC. |
| Flexible Loads | System | Electrical heater or eat pump used by household for generation of domestic heat. | Could be provided by customer households. |

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

|**Information exchanged ID**|**Name of Information** | **Description of Information Exchanged** | **Protocol** |
| --- | --- | --- | --- |
| I-07 |Generation| --- | --- |
| I-08| Consumption|--- |--- |
| I-09| Power at point of connection (real time)|--- |--- |
| I-10| Battery SOE/SOC|--- |--- |
| I-11| Weather conditions|--- |--- |
| I-12| Individual setpoints for flexibilities|--- |--- |
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
