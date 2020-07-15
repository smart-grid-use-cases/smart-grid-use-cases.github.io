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
| UC-DE-2| **Area:** Energy system </br> **Domain:** Distribution, Customer Premise, Field, DER </br> **Zones:** Operation, Enterprise, Process, Field | Flex Provision: </br> Implementing of an Energy Management System that enables a local energy community to provide flexibility on request of a user (operator) |

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
| **Scope** | Communities with a high penetration of photovoltaic systems and correspondingly large installed generation capacity can be expected to generate an energy surplus during times of peak generation and low local demand, and vice versa to run into an energy deficit during seasons of low generation. Surplus energy can be stored and shifted to times of low generation in order to satisfy temporary demand and hence increase the degree of self-sufficiency up to 100%. UC 2 demonstrates the ability and practical feasibility of a local community to maintain constant power exchange with the distribution network for a previously defined duration. <br/> Networks: LV <br/> Markets: None|
| **Objective(s)** | Maintain constant defined power exchange between energy community and the distribution network for a defined duration |
| **Related business case(s)** | Improving reliability of grid operation/grid security: <br/> - Integration in Congestions Management Mechanism via provision of grid stabilizing power/energy <br/> - Voltage Management <br/> - Peak Shaving <br/> - Reactive Power Provision |

## 1.4. Narrative of Use Case


**Short description**

Local energy communities (LEC, CEC) are likely to emerge in Europe in the near future but will most likely retain an interconnection to the distribution grid. These communities will require a large share of flexibility to enable their primary use case. Situations could arise that require the LEC to provide flexibility to a third party –driven by technical circumstances, such as a demand of system security triggered by the DSO or following economic considerations (market incentives). UC2 demonstrates the ability and practical feasibility of a local community to maintain constant power exchange with the distribution network for a previously defined duration.

**Complete description**

The community is consuming and/or generating energy. A user (in the case of the field trial the DSO) triggers the EMS to apply Use Case 2 and sets a target value (P’Breaker) for the power exchange at the grid connection. The EMS (ALF-C) processes weather forecasts and measurement values from the grid connection and flexible assets such as BESS, household energy storages and flexible loads located in the community. Based on the data and historic values the EMS forecasts the local generation and demands and determines the best strategy to reach (P’Breaker) by utilizing the available flexibility to keep the power flow constant for a pre-defined duration. <br/> The EMS communicates with sensors through the Blockchain Access Platform and DSO Technical Platform and handles all data in a dedicated data base. The DSO Technical Platform provides encryption and decryption in the whole IT infrastructure. Control signals are routed through the DSO technical platform and the Blockchain Access Platform to flexible devices, if applicable through a third-party backend that connects to the hardware.



## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
| UC2-K01 | Flex Availability | Assessment of availability of Flex for Data Acquisition and Flex provision | |
| UC2-K02 | Responsiveness | Assessment on how fast a flex request is implemented measurably | |
| UC2-K03 | Accuracy | Assessment of the accuracy of the achievment of a given setpoint |  |

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
| Private Customer households with flexible loads and storages are organized a local energy community with a central EMS. | Participants of the energy communities incl. flexible loads and storages are connected to a single low voltage grid (feed by a single MV/LV transformer) and are monitored and steered by an EMS. |
| The energy community needs an operator for the “Islanding” EMS. | National regulations have to be clarified who can be the service providers and who can’t (TSO, DSO, Aggregator, Retailer, Energy Service provider) |

***Notes:***
* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)
* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|Relation to other use cases|
|---------------------------|
| UC2 requires UC1 as a prerequisite |
|**Level of depth**|
|add text|
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
| Standard Household | System | Household with a standard load profile energy consumption of a single household. | No direct measurement of energy consumption, demand not controllable (passive consumer). |
| Agricultural Buildings | System | Energy consumer with a standard load profile of an agricultural building. | No direct measurement of energy consumption, demand not controllable. |
| Street light | System | Household with a standard load profile energy consumption of a street light. | No direct measurement of energy consumption, demand not controllable. |
| Roof Top Photovoltaic System | System | Power generation directly correlated with solar radiation at location. | Limited controllability (can be curtailed in extreme cases). Located on customers premise and can be operated in combination with a battery storage system, for optimization of own consumption. |
| Integrated Controller | Device | Summarises all controllers that are already installed in local flexible loads. | |
| Retrofit Controller | Device | Summarises all controllers that a installed as a retrofit solution to make flexible loads, controllable. | |
| Current Sensor | Device | Summarises all sensors that measure the current and delivers values as input for the EMS for load flow monitoring. | PMU |
| Voltage Sensor | Device | Summarises all sensors that measure the voltage and delivers values as input for the EMS for load flow monitoring. | PMU |
| Temperature Sensor | Device | Summarises all sensors that measure the temperature of the heat storage be used as input for the EMS SOC calculation of flexible heaters (head pumps, night storage heaters). | Retrofit or integrated in existing system of customers heater. |
| SOC/SOE Sensor | Device | Summarises all sensors that measure the SOC/SOE of storages. | Integrated in BESS and household battery storages |
| Battery Energy Storage System (BESS) | System | Stores electrical energy | 300 kW/600 kWh, fully integrated in EMS and full time available for UC. |
| Household Energy Storage | System | Stores electrical energy | Integrated in EMS and full time available for UC. |
| Storage Heater | Device | Electrical Heater with a large-scale water storage, able to store electrical generated heat. Heater is used by household for generation of domestic heat. | Could be provided by customer households. |
| Heat pump | Device | Electrical Heater able to store electrical generated heat for 1 -2 hours. Heater is used by household for generation of domestic heat. | At least one is targeted to be integrated in UC. |
| Weather Forecast Service Provider | External System | Provides weather forecasts for the next 24h of wind, solar radiation, cloudiness and temperature. | |
| ALF-C Controller | System | -	Monitors local generation and demand </br> - monitors available flexibility and storages </br> -	forecasts generation, demand and available flexibility via historic data and weather forecasts </br> -receives “Islanding” -Trigger from ALF-C Use Case Modul and determines and dispatches setpoints for individual assets | In a productive environment operator can could be DSO, retailers, storage system operators or any other energy service provider. |
| ALF-C Use Case Modul | System | Calculated the setpoint or setpoint schedule for the ALF-C Controller | |
| DSO (Avacon) | Person | Local grid operator | In future done by DSO, TSO, marketer or energy service providers |

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
| 1 | Increasing Residual Energy Demand | •	ALF-C </br> •	Energy Storage </br> • Flexible Load | Measured load flow (export) at grid connection point (Residual generation is decreasing/residual demand is increasing) | •	Sensors and actuators are connected with the ALF-C </br> •	Enough flexible loads and storages capacity are available for balancing | -	Demand of local flexible loads and storages will be decreased, or feed of storages into the grid will be increased in order to reach Ptarget. |
| 2 | Decreasing Residual Energy Demand | •	ALF-C </br> •	Energy Storage </br> •	Flexible Load | Measured load flow at grid connection point (Residual generation is increasing/residual demand is decreasing) | •	Sensors and actuators are connected with the ALF-C </br> •	Enough flexible loads and storages capacity are available for balancing | |

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - Increasing Residual Energy Demand **

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Initiating of UC 2 ||Operator sets ALF-C mode of operation to UC 2 and set via a GUI the target setpoint for load exchange aalong the grid connection point MV/LV P'_Breaker and duration (t) | REPORT | USER | ALF-C | I - 01 | |
| 2 | ALF-C requests data of total generation/ consumption | Data-Aquisition | The ALF-C request measurement values from the sensor located at the secondary substation to provide measurement data (P_Breaker) of the power exchange along the MV/LV grid connection point. </br> Then data will be pushed by sensor every 10 seconds. | GET | ALF-C | Sensor | I-04 |   |
| 3 | Sensor (grid connection point) provides values | Transmitting data | The local measurement device (PMU) located at the grid connection point measures the residual power export and sends data to the ALF-C (PBreaker). </br> Step will be repeated every 10 seconds. | CHANGE | Sensor| ALF-C|  I-05 |
| 4 | ALF-C requests data of current of demand/SOC of local flex | Data-Aquisition | The ALF-C sends request to sensors to provide load demand and SOC values of local customer flexible loads, customer storages and the BESS. Then data will be pushed by PMU every 15 minutes. | GET | ALF-C | Sensors | I-04 | |
| 5 | Local sensors provide data | Transmitting data | Local sensors provide measurements values and data to the ALF-C. </br> Step will be repeated every 15 minutes. | CHANGE | Sensor, | ALF-C | I-05 | |
| 6 | All data is collected | Evaluation and determination of control strategy and setpoints | Based on provided measurement data, asset key data. ALF-C calculates the power bandwith and/or SOC of each asset available for steering (PFlex, available). </br> The ALF-C determines for each asset a setpoint to reach Ptarget. The determination of setpoint is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and storages located at customer premise. | Create | ALF-C | ALF-C | | |
| 7 | Individual setpoints determined | Transmitting setpoints to actuators | The ALF-C sends setpoints to actuators located in the field to increase their consumption. </br> This signal is sent each ten seconds to the BESS and every 15 minutes to actuators located at customer premise and replaces the default signal until the ALF-C calculates a setpoint. | EXECUTE | ALF-C | Actuators | I-06 | |
| 8 | Setpoint send to actuators | Verification of setpoint execution Comparison of target and measured values | The ALF-C compares measured values from the grid connection P_Breaker point with the target values (P'_Breaker). In case of deviation the setpoint are redefined by walking through step numbers 2 to 8. The process is continuously cycled until the end of use case. | CREATE | Sensor| ALF-C | | |
| 9 | End of Use Case 2 | End of Use Case 2 | The use case ends, when a user triggers another use case, or in a case of lack of flexibility to reach Ptarget. | REPORT | USER | ALF-C | I-01 |


**Scenario Name: No.  - Decreasing Residual Energy Demand **

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | Initiating of UC 2 ||Operator sets ALF-C mode of operation to UC 2 and set via a GUI the target setpoint for load exchange aalong the grid connection point MV/LV P'_Breaker and duration (t) | REPORT | USER | ALF-C | I - 01 | |
| 2 | ALF-C requests data of total generation/ consumption | Data-Aquisition | The ALF-C request measurement values from the sensor located at the secondary substation to provide measurement data (P_Breaker) of the power exchange along the MV/LV grid connection point. </br> Then data will be pushed by sensor every 10 seconds. | GET | ALF-C | Sensor | I-04 |   |
| 3 | Sensor (grid connection point) provides values | Transmitting data | The local measurement device (PMU) located at the grid connection point measures the residual power export and sends data to the ALF-C (PBreaker). </br> Step will be repeated every 10 seconds. | CHANGE | Sensor| ALF-C|  I-05 |
| 4 | ALF-C requests data of current of demand/SOC of local flex | Data-Aquisition | The ALF-C sends request to sensors to provide load demand and SOC values of local customer flexible loads, customer storages and the BESS. Then data will be pushed by PMU every 15 minutes. | GET | ALF-C | Sensors | I-04 | |
| 5 | Local sensors provide data | Transmitting data | Local sensors provide measurements values and data to the ALF-C. </br> Step will be repeated every 15 minutes. | CHANGE | Sensor, | ALF-C | I-05 | |
| 6 | All data is collected | Evaluation and determination of control strategy and setpoints | Based on provided measurement data, asset key data. ALF-C calculates the power bandwith and/or SOC of each asset available for steering (PFlex, available). </br> The ALF-C determines for each asset a setpoint to reach P'_Breaker. The determination of setpoint is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and storages located at customer premise. | Create | ALF-C | ALF-C | | |
| 7 | Individual setpoints determined | Transmitting setpoints to actuators | The ALF-C sends setpoints to actuators located in the field to decrease their consumption. </br> This signal is sent each ten seconds to the BESS and every 15 minutes to actuators located at customer premise and replaces the default signal until the ALF-C calculates a setpoint. | EXECUTE | ALF-C | Actuators | I-06 | |
| 8 | Setpoint send to actuators | Verification of setpoint execution Comparison of target and measured values | The ALF-C compares measured values from the grid connection P_Breaker point with the target values (P'_Breaker). In case of deviation the setpoint are redefined by walking through step numbers 2 to 8. The process is continuously cycled until the end of use case. | CREATE | Sensor| ALF-C | | |
| 9 | End of Use Case 2 | End of Use Case 2 | The use case ends, when a user triggers another use case, or in a case of lack of flexibility to reach Ptarget. | REPORT | USER | ALF-C | I-01 |



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
| I-01 | Signal from user via GUI | A user triggers the use case via an GUI to the ALF-C to apply islanding. The trigger signal is: </br> 0 = stop current use case </br> 1 = application of UC 1 </br> 2 = application of UC 2 </br> 3 = application of UC 3 </br> 4 = application of UC 4 <br/> Based on the UC 2 trigger the ALF-C sets the target setpoint for the load - exchange along the grid connection point accoring to user input (Target Setpoint P'_Breaker). | |
| I-02| Signal from ALF-C to External System | Trigger to provide weather forecast data | |
| I-03| Weather forecasts | -	Solar radiation (t + 24h) </br> -	Cloudiness (t + 24 h) </br> -	Temperature (t + 24 h) </br> -	Humidity (t + 24 h) </br> - Windspeed (t + 24 h) | |
| I-04| Signal from the ALF-C to sensor at secondary substation | The ALF-C sends a signal to sensors to get current measurements. | |
| I-05| Signal from sensor | The sensor sends measurement values containing:
voltage (U), current (I) and angle of phase (Phi) values for all 3 phases | |
| I-06| Signal from integrated sensors | The measurement of PMU contains voltage (U), current (I) and angle of phase (Phi) values, SOC, SOE and/or temperature | |

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
