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
| UC-DE-3| **Area:** Energy system </br> **Domain:** Distribution, Customer Premise, Field, DER, Operation <br/> **Zone:** Operation, Enterprise, Process, Field | Package-based Energy Supply: <br/> Electricity is delivered to local energy community during predefined timeslots, outside of which the community reverts to temporary island-mode. |

## 1.2. Version Management

*Version management*

|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1||Thorsten Gross|Initial creation||
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|
|0.3|19th June 2020|Benjamin Petters|Extended description and added technical part|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*

|||
| --- | --- |
| Scope | Energy communities with a high proportion of self-generation and flexible consumers and storage can maximize the self-consumption of locally generated energy. These communities are unlikely to meet their own needs with locally generated energy throughout the year and will potentially run into energy-deficit in times of low local generation. Energy deficits could be compensated by the supplying distribution network. To reduce the stress on the mid-voltage feeder and reduce overall network cost, energy deficits occurring could be forecasted and delivered in discrete packages ahead of time at fixed time slots and be stored in local storages until demand arises. <br/> Networks: LV, MV <br/> Markets: None|
| **Objective(s)** | •	Enabling temporary islanding even in times of energy deficit of the local community <br/> •	Forecasting of residual energy demand of an energy community <br/> •	Calculation of required energy packages serving energy deficits <br/> •	Determination of power exchange schedule for the energy community for the grid connection point LV/MV (time and power of load exchange) <br/> •	Determination of a setpoint schedule for individual local asset to meet energy community setpoint schedule <br/> •	Execution of defined power exchange between energy community and the distribution network|
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

|Relation to other use cases|
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


![Use Case Diagram](UC_GE_1_2_3_4_UC_diagram.png)


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
| Weather Forecast Service Provider | External System | Provides weather forecasts for the next 24h of wind, solar radiation, cloudiness and temperature. | |
| BESS Data Management Backend | External System | Data backend of BESS manufacturer for storing data and providing measurement data and forwarding setpoint to BESS. | |
| Sensor & Controller Data Management Backend | External System | Cloud service of assets vendor (can be individual for different assets) storing data, providing measurement data of asset and/or interface for transmission of setpoints to asset. | Assets with different vendors, requires connection to different vendor cloud platform and backends. |
| DSO Technical Platform | System | Central Platform providing services, e.g. data storage and state estimation. Used as middleware for data acquisition and setpoint delivery of assets and sensors in the field. | Provided by RWTH. |
| Blockchain Access Platform | System | Platform for encryption and verification of data flows along the was of communication from EMS (ALF-C) to sensors and Assets in the field. | Provided by Engineering |
| EMS (ALF-C) | Component | -	Monitors local generation and demand <br/> -	monitors available flexibility and storages <br/> -	forecasts generation, demand and available flexibility via historic data and weather forecasts <br/> -	Accepts use case trigger and use case parameter - from EMS Use Case Modul and determines and dispatches setpoints for individual assets <br/> -	Calculates the setpoint or setpoint schedule for the EMS Controller | EMS named Avacon Local Flex Controller (EMS). <br/> <br/> In a productive environment operator could be DSO, retailer, storage system operators or any other energy service provider. |
| Distribution System Operator (Avacon) | Person | Local grid operator (Avacon) setting use case and setting setpoint for load exchange along the grid connection point (P’Breaker) | Only in field test trial. n future done by DSO, TSO, marketer or energy service providers |


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
| 1 | Energy delivery in discrete packages | •	EMS (ALF-C) <br/> •	BESS <br/> •	Energy Storage <br/> •	Flexible Load <br/> •	Generator <br/> •	Controller | Forecast of an energy deficit of energy community | •	UC 1 - is applied <br/> •	Sensors and actuators are connected with EMS <br/> •	Enough flexible loads and storages capacity are available for balancing <br/> •	User has triggered UC 3 and provided necessary time and duration for energy exchange along grid connection point. | •	Islanding is applied. <br/> •	Realtime imbalances of generation demand are balanced by local storages. |

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
| 1 | Initiating of UC 3 | User sets mode of operation for EMS to UC 3 and inputs use case parameter time, duration and power | Operator sets the application of UC-3 via a UI. <br/> <br/> The setting includes the setting of duration of UC 3 application as well as times, setpoints and time slots for the delivery of packages for the next 24h. | REPORT | DSO | DSO | I-01 | |
| 2 | EMS requests weather forecasts data | Data – Acquisition | EMS sends a request for the provision of real time and forecast weather data (6h ahead) to a weather forecast service provider. <br/> The Process will be repeated in regular intervals). | GET | EMS | External System | I-02 | |
| 3 | Weather forecast service provider send weather forecasts | Transmitting the data | Weather forecast service provider pushes weather data and weather forecast values. | GET | External System | EMS | I-03 | |
| 4 | EMS receives forecasting values | Forecasting of generation and demand | The EMS forecasts local generation and demand: <br/> -	Generation based on weather forecasts <br/> -	Load – based in weather forecast and load profiles from historic measurement data | CREATE | EMS | EMS | | |
| 5 | EMS requests data of total generation/ consumption | Data – Acquisition | The EMS triggers provision measurement values from sensor located at the secondary substation to provide measurement data (PBreaker) of the power exchange along the MV/LV grid connection point. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the Data Management Backend of the sensor. <br/> <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by backwards along the communication from the sensor to the EMS every 10 seconds. | GET | EMS | Sensor | I-04 | |
| 6 | Sensor (grid connection point in secondary substation) provides values | Transmitting the data | The local sensor located at secondary substation measures the residual power export and sends data to EMS. <br/> <br/> If Applicable (to be clarified): <br/> <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 10 seconds. | CHANGE | Sensor | EMS | I-05 | |
| 7 | Then data will be pushed by the sensor to the EMS every 10 seconds. | Data – Acquisition | The EMS sends request to sensors to provide load demand and SOE, SOC values of local customer flexible loads, household energy storages and battery energy storage system. The connection is established via a backend of data management platform provided by the manufacturer of the asset (BESS, household battery storage, flexible loads). <br/> <br/> If Applicable (to be clarified): <br/> <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. | GET | EMS | Sensor | I-04 | |
| 8 | Local sensors provide data. | Transmitting the data | Local sensors provide measurements values and data via sensor data management backend to the EMS. <br/> <br/> If Applicable (to be clarified): <br/> <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor via data management sensor to the EMS every 15 minutes. | CHANGE | Sensor | EMS | I-05 | |
| 9 | All data collected | Evaluation and determination of control strategy and setpoints | Based on all provided data and load and generation forecasts, EMS forecasts the energy deficits for the next 24h and optimum times, durations and power for the delivery in time slots defined by the DSO (Step 1). As result the EMS determines a setpoint schedule for the load exchange along the grid connection point P’Breaker.(t+1). <br/> <br/> EMS determines each 15 minutes individual setpoints for the BESS and flexible loads and household energy storages in the field to balance local consumption generation to reach P’Breaker at grid connection point. | CREATE | EMS | EMS | | |
| 10 | Individual setpoints determined | Transmitting setpoints to controller | The EMS sends setpoints via a data management backend to controllers to increase, decrease consumption assets (battery energy storage, household energy storage and flexible load) located in the field to increase consumption. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS along the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the Data Management Backend of the controller. <br/> <br/> This signal is sent each ten seconds to the BESS Management Backend and every 15 minutes to loads located at customer premise and replaces the default signal until the EMS calculates a setpoint. | EXECUTE | EMS | Controllers | I-06 | |
| 11 | Setpoint send to controller | Verification of setpoint execution | The EMS compares measured values comparison of PBreaker from the grid connection point with the target values P’Breaker. In case of deviation the setpoint are redefined by walking through step numbers 2 to 10. The process is continuously repeated until the end of use case. | CREATE | Sensor | EMS | | |
| 12 | End of Use Case 3 | End of Use Case 3 | The use case ends, when a user triggers another use case, or in a case of lack of flexibility to reach P’Breaker. | REPORT/CREATE | DSO or ALF-C | EMS | I-01 | |






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
| I-01 | User sets UC and variables | -	DSO sets the use case via an UI the EMS to apply UC 3 “Energy Delivery”. The trigger signal is: <br/> 0 = stop current use case <br/> 1 = application of UC 1 <br/> 2 = application of UC 2 <br/> 3 = application of UC 3 <br/> 4 = application of UC 4 <br/> <br/> -	Set of time schedule: <br/> DSO (user) sets via UI a time schedule for load exchange at grid connection point. The schedules define time (t) – earliest time for beginning of load exchange and duration for load exchange delivery (dt) – longest duration for delivery | |
| I-02 | EMS requests weather data | EMS triggers External weather forecast service providers to provide real time and forecast weather data. | |
| I-03 | Weather forecasts provision | -	Solar radiation (t + 24h) <br/> -	Cloudiness (t + 24 h) <br/> -	Temperature (t + 24 h) <br/> -	Humidity (t + 24 h) <br/> -	Windspeed (t + 24 h) | |
| I-04 | Sensor wake up | The EMS sends a signal to sensors located at secondary substation to push measurement data | |
| I-05 | Sensor measurement data provision | The sensor sends measurement values containing: <br/> voltage (U), current (I) and angle of phase (Phi) values of all 3 phases measured in secondary substation. Values indicate the residual power demand/generation as sum of demand or feed of BESS, household energy storage, flexible loads, generators and customer households and agricultural buildings. | |
| I-06| Sending of setpoint (t) or setpoint schedule (t+1) | Setpoint to increase or decrease demand/generation as static value [P] or relative value [%] or [SOC] | |

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
