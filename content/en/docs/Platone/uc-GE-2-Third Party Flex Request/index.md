---
title: "UC-GE-2"
linkTitle: "UC-GE-2"
date: 2020-07-09
description: >
  Third Party Flex Request
---

# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*

| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-DE-2| **Area:** Energy system </br> **Domain:** Distribution, Customer Premise, Field, DER </br> **Zones:** Operation, Enterprise, Process, Field | Flex Provision: </br> Implementing of an Energy Management System that enables a local energy community to provide flexibility at request of a third party (operator) |

## 1.2. Version Management

*Version management*

|Version No.|Date     |Name of author(s)|Changes|Approval status|
|---        |---      |---              |---    |---            |
|0.1|1st April 2020|Thorsten Gross|Initial creation|Draft|
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|
|0.3|16th June 2020|Benjamin Petters|Extended description and added technical part|Draft|
|0.4|22nd June 2020|Padraic McKeever|Template corrections|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*

|||
| --- | --- |
| **Scope** | Communities with a high penetration of photovoltaic systems and correspondingly high installed generation capacity can be expected to generate an energy surplus during times of peak generation and low local demand, and vice versa to run into an energy deficit during seasons of low generation. Surplus energy can be stored and shifted to times of low generation in order to satisfy temporary demand and hence increase the degree of self-sufficiency. Use Case 2 demonstrates how the flexibility required to enable a local balancing mechanism could temporarily be allocated to other uses, for example the provision of flexibility to a third party, e.g. the connecting grid operator. Use Case 2 uses the available flexibility in a given local energy community to maintain an externally defined non-zero setpoint at the point of connection. <br/> Networks: LV <br/> Markets: None|
| **Objective(s)** | Maintain a fixed non-zero power exchange between energy community and the distribution network for a limited duration. |
| **Related business case(s)** | Integration of local energy communities in network management strategies for the stabilization and uniform utilization in distribution grid |

## 1.4. Narrative of Use Case


**Short description**

Local energy communities are likely to emerge in Europe in the near future but will most likely retain an interconnection to the distribution grid. These communities will require a large share of flexibility to enable their primary use case. Situations could arise that require the community to provide flexibility to third parties – driven by technical circumstances or following economic considerations (market incentives). Use Case 2 demonstrates the ability and practical feasibility of a local community to maintain constant non-zero power exchange with the distribution network for a previously defined duration.

**Complete description**

The community is consuming and/or generating energy. A user (in the case of the field trial the DSO) triggers the EMS to apply Use Case 2 and sets a target value (P’Breaker) for the power exchange at the grid connection. The EMS (ALF-C) processes weather forecasts and measurement values from the grid connection and flexible assets such as BESS, household energy storages and flexible loads located in the community. Based on the data and historic values the EMS forecasts the local generation and demands and determines the best strategy to reach (P’Breaker) by utilizing the available flexibility to keep the power flow constant for a pre-defined duration. <br/> The EMS communicates with sensors through the Blockchain Access Platform and DSO Technical Platform and handles all data in a dedicated data base. The DSO Technical Platform provides encryption and decryption in the whole IT infrastructure. Control signals are routed through the DSO technical platform and the Blockchain Access Platform to flexible devices, if applicable through a third-party backend that connects to the hardware.



## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
| UC2-K01 | Flexibility Availability | Assessment of availability of Flexibility | |
| UC2-K02 | Responsiveness | Assessment of response times to flex requests and latencies along the use case process | |
| UC2-K03 | Accuracy | Assessment of the accuracy of the achievment of a given setpoint |  |

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
| Private Customer households with flexible loads and storages are organized in a local energy community with a central EMS. | Participants of the energy communities incl. flexible loads and storages are connected to a single low voltage grid (feed by a single MV/LV transformer) and are monitored and steered by an EMS. |
| The energy community needs an operator for the “Islanding” EMS. | National regulations have to be clarified who can be the service providers and who can’t (TSO, DSO, Aggregator, Retailer, Energy Service provider) |

***Notes:***
* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)
* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|Relation to other use cases|
|---------------------------|
| UC 1 as a prerequisite for islanding the community |
|**Level of depth**|
| Primary Use Case |
|**Prioritisation**|
| very important |
|**Generic, regional or national relation**|
|add text|
|**Nature of the use cases**|
| technical |
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
|-	Use case 1 is anticipated to emerge as a result of the Clean Energy Package, driven by the bottom-up demand of customers and local communities.|
|-	It is a prerequisite for the advanced use 2 - 4|

***Notes:***

Add any remarks which do not fit in any other category

# 2. Diagrams of Use Case

![Diagram of Use Case](UC2_2_Diagram_of_Use_Case.png)

*Diagram of Use Case*

![Sequence Diagram](UC_GE_1_2_3_4_Seq_Diag.png)

*Sequence Diagram*

![Use Case Diagram](UC_GE_1_2_3_4_UC_diagram.png)

*Use Case Diagram*

# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| --- | --- | --- | --- |
| Consumer Load | System | Household with a standard load profile energy consumption of a single household or energy consumer with a standard load profile of an agricultural building. | No direct measurement of energy consumption, demand not controllable (passive consumer). |
| Generators | System | Rooftop photovoltaic system generating energy directly correlated with solar radiation at location. | Limited controllability (can be curtailed in extreme cases). Located on customers premise and can be operated in combination with a battery storage system, for optimization of own consumption. |
| Controller | Device | Summarises all devices that are able to receive setpoints or setpoint schedules and translate them into actionable steering commands for the flexible load or storage. | |
| Sensors | Device | Devices that measure voltage, current and angle of phase or SOE or SOC in case of storages and able to communicate to external systems or devices. | Retrofit (PMU or other) or integrated |
| Battery Energy Storage System (BESS) | System | System that are demanding, storing and feeding energy to the local grid/energy community. | 300 kW/600 kWh, fully integrated in EMS and full time available for UC. |
| Household Energy Storage | System | System that are demanding, storing and feeding energy to the local grid/energy community. | Integrated in EMS and full time available for UC. |
| Flexible Loads | System | Electrical heater or eat pump used by household for generation of domestic heat. | Could be provided by customer households. |
| Weather Forecast Service Provider | External System | Provides weather forecasts for the next 24h of wind, solar radiation, cloudiness and temperature. | |
| BESS Data Management Backend | External System | Data backend provided by BESS manufacturer for storing data and providing measurement data and forwarding setpoint to BESS. | |
| Sensor & Controller Data Management Backend | External System | Cloud service of assets vendor (can be individual for different assets) storing data, providing measurement data of asset and/or interface for transmission of setpoints to asset. | Assets with different vendors, requires connection to different vendor cloud platform and backends. |
| DSO Technical Platform | System | Central Platform providing services, e.g. data storage and state estimation. Used as middleware for data acquisition and setpoint delivery of assets and sensors in the field. | Provided by RWTH. |
| Blockchain Access Platform | System | Platform for encryption and verification of data flows along the was of communication from EMS (ALF-C) to sensors and Assets in the field. | Provided by Engineering |
| EMS (ALF-C) | Component | -	Monitors local generation and demand </br> - Monitors available flexibility and storages </br> -	Forecasts generation, demand and available flexibility via historic data and weather forecasts </br> -	Accepts use case Trigger from EMS Use Case Modul and determines and dispatches setpoints for individual assets <br/> -	Calculates the setpoint or setpoint schedule for the EMS Controller | EMS named Avacon Local Flex Controller (EMS). <br/> <br/> In a productive environment operator could be DSO, retailer, storage system operators or any other energy service provider. |
| Distribution System Operator (Avacon) | Person | Local grid operator (Avacon) setting use case and setting setpoint for load exchange along the grid connection point (P’Breaker) | Only in field test trial. In future done by DSO, TSO, marketer or energy service providers |

* **Actor Type** - Device/ Sytem/ Person

## 3.2. References

OPTIONAL - you can leave it blank

| **No.** | **References Type** | **Reference** | **Status** | **Impact on Use Case** | **Organistaor / Organisation** | **Link** |
| --- | --- | --- | --- | --- | --- | --- |
|add text|add text|add text|add text|add text|add text|


# 4. Step by Step Analysis of Use Case

## 4.1. Overview of Scenarios
| 1 | Initiating of UC 2 | Trigger Event | Operator sets EMS (ALF-C) mode of operation to UC 2 and defines target setpoint (PBreaker) for load exchange and duration (t) | REPORT | DSO | EMS | I - 01 | |
| 2 | EMS requests weather forecasts data | Data-Aquisition | EMS sends a request for the provision of real time and forecast weather data (6h ahead) to an external service provider. <br/> The process will be repeated in regular intervals). | GET | EMS | External System | I-02 |   |
| 3 | External service provider sends weather forecasts | Transmitting data | An external service provider sends weather data and weather forecast values | GET | External System | EMS |  I-03 |
| 4 | EMS receives forecasting values | Forecasting of generation and demand | The EMS forecasts local generation and demand: <br/> -	Generation based on weather forecasts <br/> -	Load – based on weather forecast and load profiles from historic measurement data | CREATE | EMS | EMS | | |
| 5 | EMS requests data of total generation/ consumption | Data-Acquisition | The EMS triggers measurement values from sensors located at the secondary substation to provide measurement data (PBreaker) of the power exchange at the MV/LV grid connection. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. <br/> From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. <br/> <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed backwards along the communication from the sensor to the EMS every 10 seconds. | GET | EMS | Sensor | I-04 | |
| 6 | Sensor (grid connection point in secondary substation) provides values | Transmitting the data | The local sensor located at secondary substation measures the residual power export and sends data to EMS. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 10 seconds. | CHANGE | Sensor | EMS | I-05 | |
| 7 | EMS requests measurement data of sensors located in the field | Data – Acquisition | The EMS sends request to sensors to provide load demand and SOE, SOC values of local customer flexible loads, household energy storages and battery energy storage system. The connection is established via a backend of data management platform provided by the manufacturer of the asset (BESS, household battery storage, flexible loads). <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. | GET | EMS | Sensor | I-04 | |
| 8 | Local sensors provide data via Data Management Backend | Transmitting the data | Local sensors provide measurements values and data via sensor data management backend to the EMS. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 15 minutes. | CHANGE | Sensor | EMS | I-05 | |
| 9 | All data collected | Evaluation and determination of control strategy and setpoints | Based on provided measurement data, asset key data. EMS calculates the power bandwidth of each asset available for steering (PFlex). <br/> <br/> The EMS determines for each asset a setpoint (P’Asset) to reach P’Breaker. The determination of setpoints is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and household energy storages. | CREATE | EMS | EMS | |
| 10 | Individual setpoints determined | Transmitting setpoints to controllers | The EMS sends setpoints via a data management backend to controllers to increase, decrease consumption assets (battery energy storage, household energy storage and flexible load) located in the field to increase consumption. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS along the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the Data Management Backend of the controller. <br/> This signal is sent every ten seconds to the BESS Management Backend and every 15 minutes to loads located at customer premise and replaces the default signal until the EMS calculates a setpoint. | EXECUTE | EMS | Controllers | I-06 | |
| 11 | Setpoint send to controller | Verification of setpoint execution | The EMS compares measured values comparison of PBreaker from the grid connection point with the target values P’Breaker. In case of deviation the setpoint are redefined by walking through step numbers 2 to 10. The process is continuously repeated until the end of use case. | CREATE | Sensor | EMS | | |
| 12 | End of Use Case 2 | End of Use Case 2 | The use case ends, when a user triggers another use case, or in a case of lack of flexibility to reach P’Breaker. | REPORT/CREATE | DSO or ALF-C | EMS | I-01 | |
| **No.** | **Scenario Name** | **Primary Actor** | **Triggering Event** | **Pre-Condition** | **Post-Condition** |
| --- | --- | --- | --- | --- | --- |
| 1 | Increasing Residual Energy Demand | •	ALF-C <br/> •	BESS <br/> •	Energy Storage <br/> •	Flexible Load <br/> •	Generator <br/> •	Controller | Measured load flow (export) at grid connection point (Residual generation is decreasing/residual demand is increasing) | •	Sensors and controllers are connected with EMS <br/> •	Enough flexible loads and storages capacity are available | Demand of local flexible loads and storages will be decreased, or feed of storages into the grid will be increased in order to reach P’Breaker. |
| 2 | Decreasing Residual Energy Demand | •	ALF-C <br/> •	BESS <br/> •	Energy Storage <br/> •	Flexible Load <br/> •	Generator <br/> •	Controller | Measured load flow at grid connection point (Residual generation is increasing/residual demand is decreasing) | •	Sensors and actuators are connected with ALF-C <br/> •	Enough flexible loads and storages capacity are available for balancing | |

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - Increasing Residual Energy Demand **

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Initiating of UC 2 | Trigger Event | Operator sets EMS (ALF-C) mode of operation to UC 2 and defines target setpoint (PBreaker) for load exchange and duration (t) | REPORT | DSO | EMS | I - 01 |
| 2 | EMS requests weather forecasts data | Data-Aquisition | EMS sends a request for the provision of real time and forecast weather data (6h ahead) to an external service provider. <br/> The process will be repeated in regular intervals). | GET | EMS | External System | I-02 | 
| 3 | External service provider sends weather forecasts | Transmitting data | An external service provider sends weather data and weather forecast values | GET | External System | EMS |  I-03 |
| 4 | EMS receives forecasting values | Forecasting of generation and demand | The EMS forecasts local generation and demand: <br/> -	Generation based on weather forecasts <br/> -	Load – based on weather forecast and load profiles from historic measurement data | CREATE | EMS | EMS | |
| 5 | EMS requests data of total generation/ consumption | Data-Acquisition | The EMS triggers measurement values from sensors located at the secondary substation to provide measurement data (PBreaker) of the power exchange at the MV/LV grid connection. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. <br/> From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. <br/> <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed backwards along the communication from the sensor to the EMS every 10 seconds. | GET | EMS | Sensor | I-04 |
| 6 | Sensor (grid connection point in secondary substation) provides values | Transmitting the data | The local sensor located at secondary substation measures the residual power export and sends data to EMS. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 10 seconds. | CHANGE | Sensor | EMS | I-05 |
| 7 | EMS requests measurement data of sensors located in the field | Data – Acquisition | The EMS sends request to sensors to provide load demand and SOE, SOC values of local customer flexible loads, household energy storages and battery energy storage system. The connection is established via a backend of data management platform provided by the manufacturer of the asset (BESS, household battery storage, flexible loads). <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. | GET | EMS | Sensor | I-04 |
| 8 | Local sensors provide data via Data Management Backend | Transmitting the data | Local sensors provide measurements values and data via sensor data management backend to the EMS. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 15 minutes. | CHANGE | Sensor | EMS | I-05 |
| 9 | All data collected | Evaluation and determination of control strategy and setpoints | Based on provided measurement data, asset key data. EMS calculates the power bandwidth of each asset available for steering (PFlex). <br/> <br/> The EMS determines for each asset a setpoint (P’Asset) to reach P’Breaker. The determination of setpoints is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and household energy storages. | CREATE | EMS | EMS | |
| 10 | Individual setpoints determined | Transmitting setpoints to controllers | The EMS sends setpoints via a data management backend to controllers to increase, decrease consumption assets (battery energy storage, household energy storage and flexible load) located in the field to increase consumption. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS along the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the Data Management Backend of the controller. <br/> This signal is sent every ten seconds to the BESS Management Backend and every 15 minutes to loads located at customer premise and replaces the default signal until the EMS calculates a setpoint. | EXECUTE | EMS | Controllers | I-06 |
| 11 | Setpoint send to controller | Verification of setpoint execution | The EMS compares measured values comparison of PBreaker from the grid connection point with the target values P’Breaker. In case of deviation the setpoint are redefined by walking through step numbers 2 to 10. The process is continuously repeated until the end of use case. | CREATE | Sensor | EMS | |
| 12 | End of Use Case 2 | End of Use Case 2 | The use case ends, when a user triggers another use case, or in a case of lack of flexibility to reach P’Breaker. | REPORT/CREATE | DSO or ALF-C | EMS | I-01 |



**Scenario Name: No.  - Decreasing Residual Energy Demand **

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Initiating of UC 2 | Trigger Event | Operator sets EMS (ALF-C) mode of operation to UC 2 and defines target setpoint (PBreaker) for load exchange and duration (t) | REPORT | DSO | EMS | I - 01 |
| 2 | EMS requests weather forecasts data | Data-Aquisition | EMS sends a request for the provision of real time and forecast weather data (6h ahead) to an external service provider. <br/> The process will be repeated in regular intervals). | GET | EMS | External System | I-02 | 
| 3 | External service provider sends weather forecasts | Transmitting data | An external service provider sends weather data and weather forecast values | GET | External System | EMS |  I-03 |
| 4 | EMS receives forecasting values | Forecasting of generation and demand | The EMS forecasts local generation and demand: <br/> -	Generation based on weather forecasts <br/> -	Load – based on weather forecast and load profiles from historic measurement data | CREATE | EMS | EMS | |
| 5 | EMS requests data of total generation/ consumption | Data-Acquisition | The EMS triggers measurement values from sensors located at the secondary substation to provide measurement data (PBreaker) of the power exchange at the MV/LV grid connection. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. <br/> From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. <br/> <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed backwards along the communication from the sensor to the EMS every 10 seconds. | GET | EMS | Sensor | I-04 |
| 6 | Sensor (grid connection point in secondary substation) provides values | Transmitting the data | The local sensor located at secondary substation measures the residual power export and sends data to EMS. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 10 seconds. | CHANGE | Sensor | EMS | I-05 |
| 7 | EMS requests measurement data of sensors located in the field | Data – Acquisition | The EMS sends request to sensors to provide load demand and SOE, SOC values of local customer flexible loads, household energy storages and battery energy storage system. The connection is established via a backend of data management platform provided by the manufacturer of the asset (BESS, household battery storage, flexible loads). <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS to the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middle ware from where the signal is sent to the Data Management Backend of the sensor. | GET | EMS | Sensor | I-04 |
| 8 | Local sensors provide data via Data Management Backend | Transmitting the data | Local sensors provide measurements values and data via sensor data management backend to the EMS. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the sensor via the sensor data management backend to the Blockchain Access Platform (BAP). The BAP acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the EMS. <br/> After the trigger for provision of measurement data, the <br/> Then data will be pushed by the sensor to the EMS every 15 minutes. | CHANGE | Sensor | EMS | I-05 |
| 9 | All data collected | Evaluation and determination of control strategy and setpoints | Based on provided measurement data, asset key data. EMS calculates the power bandwidth of each asset available for steering (PFlex). <br/> <br/> The EMS determines for each asset a setpoint (P’Asset) to reach P’Breaker. The determination of setpoints is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and household energy storages. | CREATE | EMS | EMS |
| 10 | Individual setpoints determined | Transmitting setpoints to controllers | The EMS sends setpoints via a data management backend to controllers to increase, decrease consumption assets (battery energy storage, household energy storage and flexible load) located in the field to increase consumption. <br/> <br/> If Applicable (to be clarified): <br/> The communication will take place from the EMS along the Blockchain Access Platform. The Blockchain Access Platform acts as middleware for data encryption. From there the data will be forwarded to the DSO Technical Platform acting as second level middleware from where the signal is sent to the Data Management Backend of the controller. <br/> This signal is sent every ten seconds to the BESS Management Backend and every 15 minutes to loads located at customer premise and replaces the default signal until the EMS calculates a setpoint. | EXECUTE | EMS | Controllers | I-06 |
| 11 | Setpoint send to controller | Verification of setpoint execution | The EMS compares measured values comparison of PBreaker from the grid connection point with the target values P’Breaker. In case of deviation the setpoint are redefined by walking through step numbers 2 to 10. The process is continuously repeated until the end of use case. | CREATE | Sensor | EMS | |
| 12 | End of Use Case 2 | End of Use Case 2 | The use case ends, when a user triggers another use case, or in a case of lack of flexibility to reach P’Breaker. | REPORT/CREATE | DSO or ALF-C | EMS | I-01 |



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
| I-01 | User sets UC and variables | -	DSO sets the use case via an UI the EMS (ALF-C) to apply UC 2. The trigger signal is: <br/> 0 = stop current use case <br/> 1 = application of UC 1 <br/> 2 = application of UC 2 <br/> 3 = application of UC 3 <br/> 4 = application of UC 4 <br/> <br/> -	DSO set via UI  a target setpoint (P’Breaker) for the load - exchange along the grid connection point. | |
| I-02 | EMS requests weather data | EMS triggers External weather forecast service providers to provide real time and forecast weather data | |
| I-03 | Weather forecasts provision | -	Solar radiation (t + 24h) <br/> -	Cloudiness (t + 24 h) <br/> -	Temperature (t + 24 h) <br/> -	Humidity (t + 24 h) <br/> Windspeed (t + 24 h) | |
| I-04 | Sensor Wake UP | The EMS sends a signal to sensors located at secondary substation to push measurement data | |
| I-05 | Sensor measurement data provision | The sensor sends measurement values containing: <br/> voltage (U), current (I) and angle of phase (Phi) values of all 3 phases measured in secondary substation. Values indicate the residual power demand/generation as sum of demand or feed of BESS, household energy storage, flexible loads, generators and customer households and agricultural buildings. | |
| I-06 | Sending of setpoint (t) or setpoint schedule (t+1) | Setpoint to increase or decrease demand/generation as static value [P] or relative value [%] or [SOC] | |

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
