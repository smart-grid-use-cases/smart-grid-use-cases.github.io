# 1. Description of the Use Case

## 1.1. Name of the Use Case

| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-DE-1 | Area: Energy system </br> Domain: Distribution, Customer Premise, Field, DER </br> Zones: Operation, Enterprise, Process, Field  | Island Mode </br> Implementing of an Energy Management System that operates a specific low voltage network in virtual island mode, i.e. minimizing the power exchange with the connected medium voltage feeder by utilizing available flexibility (local energy storage systems and controllable loads)|

## 1.2. Version Management

|Version No.|Date     |Name of author(s)|Changes|Approval status|
| --------- | ------- | --------------- | ----- | ------------- |
|0.1|1st June 2020|Thorsten Gross|Initial creation|Draft|
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|
|0.3|16th June 2020|Benjamin Petters|Extended description and added technical part|Draft|
|0.4|17th June 2020|Navreet Dult|Review|Draft|
|0.5|18th June 2020|Thorsten Gross|Review|Draft|
|0.6|18th June 2020|Benjamin Petters|Revision|Draft|
|0.7|22nd June 2020|Padraic McKeever|Revision|Draft|


## 1.3. Scope and Objectives of Use Case

|||
| --- | --- |
| Scope | A local energy community - With the new Clean Energy Package, private households are encouraged not only to generate and consume energy, to market the flexibility of controllable producers and consumers in the future, but also to make energy available to each other and to share generated energy. <br> In the future energy distribution network, the new regulatory framework, technical developments and grid fee mechanisms canmotivate households to found and/or join energy communities with the aim to maximize the consumption of locally generated energy. <br> Communities with a high penetration of photovoltaic systems and correspondingly large  installed generation capacity can be expected to generate an energy surplus during times of peak generation and low local demand, and vice versa to run into an energy deficit during seasons of low generation.  Surplus energy can be stored and shifted to times of low generation in order to satisfy temporary demand and hence increase the degree of self-sufficiency up to 100%. <br/> Networks: LV <br/> Markets: None|
| **Objective(s)** | -	Maximize consumption of local generation/Minimize demand satisfied by public grid <br/> -	Islanding of local grid by making use of flexible loads and storages <br/> -	Maximizing duration of islanding operation <br> -	UC 1 is prerequisite for UC 2 to 4|
| **Related business case(s)** |no|

## 1.4. Narrative of Use Case


**Short description**

The use case “Islanding” of an energy community aims to balance generation and demand of a local energy community in such a way that the load flow across the connecting MV/LV transformer is reduced to a minimum. The balancing is enabled by an energy management systems called Avacon Local Flex Controller (ALF-C). The ALF-C monitors the power flow across the transformer and controls a battery energy storage system (BESS) connected directly to the LV-terminal of the substation. Generated energy surplus will be stored in the BESS and released at times of a generation deficit. Private households equipped with batteries and controllable electric heaters can be dispatched to increase the degree of self-sufficiency further.

**Complete description**

The Clean Energy for all Europeans Package, encourages private households are  not only to generate and consume energy, to market the flexibility of controllable producers and consumers in the future, but also to make energy available to each other and to share self-generated energy. <br> In the future energy distribution network, the new regulatory framework, technical development and grid fee mechanisms can motivate households to found and/or join energy communities with the aim to maximize the consumption of locally generated energy. This will lead to a change in the behaviors of electrical energy exchange along the grid connection point of the MV/LV grid and consequently load flows along the MV-lines. <br> A local Energy Management System (Avacon Local Flex Controller – ALF-C) will monitor local generation, demand and storage capacities and control available flexibilities in such a way that consumption of locally generated energy will be maximized. <br> When local generation exceeds local demand, surplus energy will automatically be stored in local storages and the consumption of available flexible loads will be increased. When local consumption is exceeding local generation, stored electrical energy in local batteries will be discharged. The target is to minimize the load flow exchange at the MV/LV grid connection  to a level at which the community is virtually islanded. In cases where generation and demand cannot be balanced due to a lack of available storage capacity or flexibility, the residual load will exported/imported. <br> A sensor located at the grid connection will measure the power exchange of all 3 phases between the medium voltage and low voltage grid. The measured values indicate the residual demand or export of surplus of generated energy/power. Data are provided from local sensors to the ALF-C.  Based on the information ALF-C increases or decreases local consumption in order balance the grid. Additionally, sensors will be installed in private customer households to provide measurements of energy consumption and SOC of Energy Management Systems (EMS) for ALF-C to evaluate state of charge of batteries or flexible loads and potential available storage capacity. With historical measurement data and weather forecast provided by external service providers enable the ALF-C to predict energy generation and consumption to maximize self-sufficiency. <br> Actuators (controllers) enable ALF-C to switch on and off, increase or decrease energy consumption of individual loads, such as storage heaters and heat pumps, and storages located in private households and the large scale storage located in the community. <br> The communication between sensors, actuators and ALF-C will be web based, via LTE or DSL and open protocols. Customers shall not sacrifice comfort due to a decrease of room heating. <br> The operation of the community in an “Island” mode will be initiated by the operator.


## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|UC1-K01|Saved kWh|Number of kWh that the community doesn’t purchase from the public grid anymore|Enabling an islanding mode for the community|
|UC1-K02|Reduction of power recuperation peak|Comparison of power recuperation peaks before and after use case and during different times|Controlling the efficiency of the method which enables an island mode of the community|
|UC-K03|Consumption of customer generation|Amount of consumption by the community from their generation|Measure the consumption for maximized internal consumption of the generation|
|UC-K04|Duration of Island Mode|Max/Min/Average duration in which the community is able to be in island mode|Identify the framing characteristics of the island mode|

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
|Simulation of TSO activies| add text|
|Private Customer households with flexible loads and storages join a local energy community.|Participants of the energy communities incl. flexible loads and storages are connected to a single low voltage grid (feed by a single MV/LV transformer) and are monitored and steered by an EMS.|
|The energy community needs an operator for the “Islanding” EMS.|National regulations have to be clarified who can be the service providers and who can’t (TSO, DSO, Aggregator, Retailer, Energy Service provider)|

## 1.7. Further information to the use case for classification/mapping

|Relation to other use cases|
|---------------------------|
|This use case is a prerequisite for Use Case 2 to 4|
|**Level of depth**|
||
|**Prioritisation**|
|very important|
|**Generic, regional or national relation**|
||
|**Nature of the use cases**|
|technical|
|**Further keywords for classification**|
||

## 1.8. General remarks

|General remarks|
|---|
|- Use case 1 is anticipated to emerge as a result of the Clean Energy Package, driven by the bottom-up demand of customers and local communities <br/> - It is a prerequisite for the advanced use 2 - 4|

# 2. Diagrams of Use Case

![Diagram of Use Case](UC1_2_Diagram_of_Use_Case.png)
<!--![Diagram of Use Case](UC1 - 2. Diagram of Use Case.png)-->

# 3. Technical Details

## 3.1. Actors

| **Actor Name** | **Actor Type** | **Actor Description** | **Further information specific to this Use Case** |
| -------- | -------- | -------- | -------- |
| Standard Household | System | Household with a standard load profile energy consumption of a single household. | No direct measurement of energy consumption, demand not controllable (passive consumer). | 
| Agricultural Buildings|System | Energy consumer with a standard load profile of an agricultural building. | No direct measurement of energy consumption, demand not controllable. |
| Street light | System | Household with a standard load profile energy consumption of a street light. | No direct measurement of energy consumption, demand not controllable. | 
|Roof Top photovoltaic system | System | Power generation directly correlated with solar radiation at location. | Limited controllability (can be curtailed in extreme cases). Located on customers premise and can be operated in combination with a battery storage system, for optimization of own consumption. |
| Integrated Controller | Device | Summarises all controllers that are already installed in local flexible loads. |   |
|Retrofit Controller|Device|Summarises all controllers that a installed as a retrofit solution to make flexible loads, controllable.|  |
|Current sensor|Device|Summarises all sensors that measure the current and delivers values as input for the EMS for load flow monitoring.|PMU|
|Voltage Storage|Device|Summarises all sensors that measure the voltage and delivers values as input for the EMS for load flow monitoring.|PMU|
|Temperature sensor|Device|Summarises all sensors that measure the temperature of the heat storage be used as input for the EMS SOC calculation of flexible heaters (head pumps, night storage heaters).|Retrofit or integrated in existing system of customers heater.|
|SOC/SOE sensor|Device|Summarises all sensors that measure the SOC/SOE of storages.|Integrated in BESS and house hold|
|Battery Energy Storage System (BESS)|System|Stores electrical energy|300 kW/600 kWh, fully integrated in EMS and full time available for UC.|
|Household Energy Storage|System|Stores electrical energy|Integrated in EMS and full time available for UC.|
|Storage heater|Device|Electrical Heater with a large scale water storage, able to store electrical generated heat. Heater is used by household for generation of domestic heat.|Could be provided by customer households.|
|Heat pump| Device | Electrical Heater able to store electrical generated heat for 1 -2 hours. Heater is used by household for generation of domestic heat. | At least one is targeted to be integrated in UC. |
| Weather Forecast Service Provider | External System | Provides weather forecasts for the next 24h of wind, solar radiation, cloudiness and temperature. |  |
| ALFC-C Controller | System | -	Monitors local generation and demand <br> -	monitors available flexibility and storages <br> -	forecasts generation, demand and available flexibility via historic data and weather forecasts <br> -	receives “Islanding” -Trigger from ALF-C Use Case Modul and determines and dispatches setpoints for individual assets |  In an productive environment operator can could be DSO, retailers, storage system operators or any other energy service provider. |
| ALF-C Use Case Modul | System | Calculates the setpoint or setpoint schedule for the ALF-C Controller |  |
| DSO (Avacon) | Person | Local grid operator | In future done by DSO, TSO, marketer or energy service providers |


## 3.2. References

| **No.** | **References Type** | **Reference** | **Status** | **Impact on Use Case** | **Organistaor / Organisation** | **Link** |
| --- | --- | --- | --- | --- | --- | --- |
| | | | | | | |


# 4. Step by Step Analysis of Use Case

## 4.1. Overview of Scenarios

| **No.** | **Scenario Name** | **Primary Actor** | **Triggering Event** | **Pre-Condition** | **Post-Condition** |
| --- | --- | --- | --- | --- | --- |
| 1 | Local generation exceeds local consumption <br> (Islanding, when local generation > consumption)| •	Generators <br> •	ALF-C <br> •	Consumer Load <br> •	Energy Storage <br> •	Flexible Load | Measured load flow (export) at grid connection point | •	Sensors and actuators are connected with the ALF-C <br> •	Enough flexible loads and storages capacity are available for balancing | Demand of local flexible load and storages will be increased in order to balance generation and demand. |
|2|Demand Excess <br> (Islanding, when local generation < consumption)|•Generators <br> •	ALF-C <br> •	Consumer Load <br> •	Energy Storage <br> •	Flexible Load|Measured Load Exchange at grid connection|•	Sensors and actuators are connected with the ALF-C <br> •	Enough flexible loads and storages capacity are available for balancing|Demand of local flexible loads and storages will be leveraged in order to balance generation and demand.|


***Notes***

This part describes the possible scenarios of the use case. The scenarios should comply with the sequence diagrams in Sect. 2 of the template, so that every step describes one part of a communication or action. Apart from a normal success scenario, different failure scenarios or alternatives can be included to describe situations where preconditions are not satisfied or unwanted states are attained.

* **Primary Actor** - the first actor appearing in the scenario at the incident causing the scenario to begin.

* **Triggering Event** - the incident causing the scenario to begin.

* **Pre-Condition** - indicates which terms have to be fulfilled for the scenario to be executed.

* **Post-Condition** - indicates which terms should be valid after the scenario. TIt can also specify whether a scenario has been successfully completed or not.

## 4.2. Steps – Scenarios

**Scenario Name: No. 1 - (Local generation exceeds local consumption)**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |Initiating of UC 1|User triggers sets mode of operation for ALF-C to UC 1|Operator sets ALF-C mode of operation to UC 1 <br> (Implicit: ALF-C sets the target value for load exchange along the breaker of the grid connection point to zero (PBreaker; Target Value  = 0).|REPORT|User|ALF-C|I-01| |
| 2 |ALF-C requests weather forecasts data|Data – Acquisition|ALF-C sends a request for the provision of real time weather and weather forecasts (6h ahead) to an external service provider. The Process will be repeated in regular intervals).|GET|ALF-C|External system|I-02||
| 3 |Service Provider send weather forecasts|Transmitting the data|Service providers sends weather data and weather forecast values|GET|External System|ALF-C|I-03||
| 4 |ALF-C receives forecasting values|Forecasting of generation and demand|ALF-C forecasts local generation and demand (use of load profiles/historic measurement data?)|CREATE|ALF-C|ALF-C| | |
| 5 |ALF-C requests data of total generation/ consumption|Data – Acquisition|The ALF-C request measurement values from the PMU located at the secondary substation to provide measurement data (PBreaker) of the power exchange along the MV/LV grid connection point. <br> Then data will be pushed by PMU every 10 seconds|GET|ALF-C|PMU|I-04||
| 6 |PMU (grid connection point) provides values|Transmitting the data|The local measurement device (PMU) located at the grid connection point measures the residual power export and sends data to the ALF-C (PBreaker). <br> Step will be repeated every 10 seconds.|CHANGE|PMU|ALF-C|I-05||
| 7 |ALF-C requests data of current of demand/SOC of local flex|Data – Acquisition|The ALF-C sends request to sensors to provide load demand and SOC values of local customer flexible loads, customer storages and the BESS. Then data will be pushed by PMU every 15 minutes.|GET|ALF-C|PMU, Integrated sensors|I-04| |
| 8 |Local sensors provide data.|Transmitting the data|Local sensors provide measurements values and data to the ALF-C. Step will be repeated every 15 minutes.|CHANGE|PMU, Integrated sensors|ALF-C|I-05| |
| 9 |All data collected|Evaluation and determination of control strategy and setpoints|Based on provided measurement data, asset key data. ALF-C calculates the power bandwith and/or SOC of each asset available for steering.(PIST) <br> Based on generation, load and SOC forecasts the ALF-C calculates the optimum strategy of load and storage activation on order to maximize the duration of island mode. <br> The ALF-C determines for each asset a setpoint to reach a balanced grid. The determination of setpoint is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and storages located at customer premise.|CREATE|ALF-C|ALF-C| | |
|10 |Individual setpoints determined|Transmitting setpoints to actuators|The ALF-C sends setpoints to actuators located in the field to increase their consumption. This signal is sent each ten seconds to the BESS and every 15 minutes to actuators located at customer premise and replaces the default signal until the ALF-C calculates a setpoint.|EXECUTE|ALF-C|Actuators|I-06| |
|11 |Setpoint send to actuators|Verification of setpoint execution Comparison of target and measured values|The ALF-C compares measured values from the grid connection point with the target values (PBreaker = 0). In case of deviation the setpoint are redefined by walking through step numbers 3 to 10. The process is continuously cycled until the end of use case.|CREATE|PMU|ALF-C| | |
|12 |End of Use Case 1|End of Use Case 1|The use case ends, when a user triggers another use case, or not enough flex is available for islanding.|REPORT/CREATE|User or ALF-C|ALF-C|I-01| |

**Scenario Name: No. 1 - (Local consumption exceeds local generation)**

| **Step No.** | **Event.** | **Name of Process/ Activity** | **Description of Process/ Activity.** | **Service** | **Information Producer (Actor)** | **Information Receiver (Actor)** | **Information Exchanged** | **Requirements, R-ID** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 |Initiating of UC 1|User triggers sets mode of operation for ALF-C to UC 1|Operator sets ALF-C mode of operation to UC 1 <br> (Implicit: ALF-C sets the target value for load exchange along the breaker of the grid connection point to zero (PBreaker; Target Value  = 0).|REPORT|User|ALF-C|I-01| |
| 2 |ALF-C requests weather forecasts data|Data – Acquisition|ALF-C sends a request for the provision of real time weather and weather forecasts (6h ahead) to an external service provider. The Process will be repeated in regular intervals).|GET|ALF-C|External system|I-02||
| 3 |Service Provider send weather forecasts|Transmitting the data|Service providers sends weather data and weather forecast values|GET|External System|ALF-C|I-03||
| 4 |ALF-C receives forecasting values|Forecasting of generation and demand|ALF-C forecasts local generation and demand (use of load profiles/historic measurement data?)|CREATE|ALF-C|ALF-C| | |
| 5 |ALF-C requests data of total generation/ consumption|Data – Acquisition|The ALF-C request measurement values from the PMU located at the secondary substation to provide measurement data (PBreaker) of the power exchange along the MV/LV grid connection point. <br> Then data will be pushed by PMU every 10 seconds|GET|ALF-C|PMU|I-04||
| 6 |PMU (grid connection point) provides values|Transmitting the data|The local measurement device (PMU) located at the grid connection point measures the residual power export and sends data to the ALF-C (PBreaker). <br> Step will be repeated every 10 seconds.|CHANGE|PMU|ALF-C|I-05||
| 7 |ALF-C requests data of current of demand/SOC of local flex|Data – Acquisition|The ALF-C sends request to sensors to provide load demand and SOC values of local customer flexible loads, customer storages and the BESS. Then data will be pushed by PMU every 15 minutes.|GET|ALF-C|PMU, Integrated sensors|I-04| |
| 8 |Local sensors provide data.|Transmitting the data|Local sensors provide measurements values and data to the ALF-C. Step will be repeated every 15 minutes.|CHANGE|PMU, Integrated sensors|ALF-C|I-05| |
| 9 |All data collected|Evaluation and determination of control strategy and setpoints|Based on provided measurement data, asset key data. ALF-C calculates the power bandwith and/or SOC of each asset available for steering.(PIST) <br> Based on generation, load and SOC forecasts the ALF-C calculates the optimum strategy of load and storage activation on order to maximize the duration of island mode. <br> The ALF-C determines for each asset a setpoint to reach a balanced grid. The determination of setpoint is repeated every 10 seconds for BESS and every 15 minutes for flexible loads and storages located at customer premise.|CREATE|ALF-C|ALF-C| | |
|10 |Individual setpoints determined|Transmitting setpoints to actuators|The ALF-C sends setpoints to actuators located in the field to trigger discharge of batteries and decrease of consumption. This signal is sent each ten seconds to the BESS and every 15 minutes to actuators located at customer premise and replaces the default signal until the ALF-C calculates a setpoint.|EXECUTE|ALF-C|Actuators|I-06| |
|11 |Setpoint send to actuators|Verification of setpoint execution Comparison of target and measured values|The ALF-C compares measured values from the grid connection point with the target values (PBreaker = 0). In case of deviation the setpoint are redefined by walking through step numbers 3 to 10. The process is continuously cycled until the end of use case.|CREATE|PMU|ALF-C| | |
|12 |End of Use Case 1|End of Use Case 1|The use case ends, when a user triggers another use case, or not enough flex is available for islanding.|REPORT/CREATE|User or ALF-C|ALF-C|I-01| |

# 5. Information Exchanged

|**Information exchanged ID**|**Name of Information** | **Description of Information Exchanged** | **Requirements to information data** |
| --- | --- | --- | --- | 
| I-01 | Signal from user via GUI| A user triggers the use case via an GUI to the ALF-C to apply islanding. The trigger signal is: <br> 0 = stop current use case <br> 1 = application of UC 1 <br> 2 = application of UC 2 <br> 3 = application of UC 3 <br> 4 = application of UC 4 <br> <br> Based on the UC 1 trigger the ALF-C sets the target setpoint for the load - exchange along the grid connection point to zero (P’Breaker  = 0). |  |
| I-02 | Signal from ALF-C to external system|Trigger to provide weather forecast data | |
| I-03 | Weather forecasts | -	Solar radiation (t + 24h) <br> -	Cloudiness (t + 24 h) <br> -	Temperature (t + 24 h) <br> -	Humidity (t + 24 h) <br> - Windspeed (t + 24 h) | |
| I-04 | Signal from the ALF-C to PMU at secondary substation | The ALF-C sends a signal to sensors to get current measurements. | |
| I-05 | Signal from PMU | The PMU sends measurement values containing: voltage (U), current (I) and angle of phase (Phi) values for all 3 phases | |
| I-06 | Setpoint transmission | Setpoint P(t) or setpoint schedule P(t+1) | |


# 6. Requirements (optional)

# 7. Common Terms and Definitions

| **Term** | **Definition** |
| --- | --- |
|||


# 8. Custom Information (optional)

| **Key** | **Value** | **Refers to Section** |
| --- | --- | --- |
|||
