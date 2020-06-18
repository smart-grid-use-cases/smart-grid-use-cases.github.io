# 1. Description of the Use Case

## 1.1. Name of the Use Case

*Use case identification*
| ID  | Area /Domain(s)/Zone(s)| Name of the Use Case |
| --- | ---                    | ---                  |
| UC-DE-1 | Area: Energy system </br> Domain: Distribution, Customer Premise, Field, DER </br> Zones: Operation, Enterprise, Process, Field </br> *Leave it blanc if not sure* | Island Mode </br> Implementing of an Energy Management System that operates a specific low voltage network in virtual island mode, i.e. minimizing the power exchange with the connected medium voltage feeder by utilizing available flexibility (local energy storage systems and controllable loads)|

***Notes:***
* **ID** - uniqe identification label: DE-1
* **Area /Domain(s)/Zone(s)** - placement of the use case in the SGAM domains and zones. It can be left blank if you are not sure.

## 1.2. Version Management

*Version management*
|Version No.|Date     |Name of author(s)|Changes|Approval status|
| --------- | ------- | --------------- | ----- | ------------- |
|0.1|1st June 2020|Thorsten Gross|Initial creation|Draft|
|0.2|2nd June 2020|Katarzyna Zawadzka|Initial creation in Github|Draft|
|0.3|16th June 2020|Benjamin Petters|Extended description and added technical part|Draft|
|0.4|17th June 2020|Navreet Dult|Review|Draft|
|0.5|18th June 2020|Thorsten Gross|Review|Draft|
|0.6|18th June 2020|Benjamin Petters|Revision|Draft|


## 1.3. Scope and Objectives of Use Case

*Scope and objectives of use case*
|||
| --- | --- |
| Scope | A local energy community - With the new Clean Energy Package, private households are encouraged not only to generate and consume energy, to market the flexibility of controllable producers and consumers in the future, but also to make energy available to each other and to share generated energy. </br> In the future energy distribution network, the new regulatory framework, technical developments and grid fee mechanisms canmotivate households to found and/or join energy communities with the aim to maximize the consumption of locally generated energy. </br> Communities with a high penetration of photovoltaic systems and correspondingly large  installed generation capacity can be expected to generate an energy surplus during times of peak generation and low local demand, and vice versa to run into an energy deficit during seasons of low generation.  Surplus energy can be stored and shifted to times of low generation in order to satisfy temporary demand and hence increase the degree of self-sufficiency up to 100%. <br/> Networks: LV <br/> Markets: None|
| **Objective(s)** | -	Maximize consumption of local generation/Minimize demand satisfied by public grid <br/> -	Islanding of local grid by making use of flexible loads and storages <br/> -	Maximizing duration of islanding operation </br> -	UC 1 is prerequisite for UC 2 to 4|
| **Related business case(s)** |no|

***Notes:***
* **Scope** - describes the aims and boundaries of the use case in a short, precise text.
* **Objective(s)** - goals of the use case, in form of bullet points and a short headline.
* **Realted business case(s)** - optional

## 1.4. Narrative of Use Case


**Short description**

The use case “Islanding” of an energy community aims to balance generation and demand of a local energy community in such a way that the load flow across the connecting MV/LV transformer is reduced to a minimum. The balancing is enabled by an energy management systems called Avacon Local Flex Controller (ALF-C). The ALF-C monitors the power flow across the transformer and controls a battery energy storage system (BESS) connected directly to the LV-terminal of the substation. Generated energy surplus will be stored in the BESS and released at times of a generation deficit. Private households equipped with batteries and controllable electric heaters can be dispatched to increase the degree of self-sufficiency further.

**Complete description**

The Clean Energy for all Europeans Package, encourages private households are  not only to generate and consume energy, to market the flexibility of controllable producers and consumers in the future, but also to make energy available to each other and to share self-generated energy. </br> In the future energy distribution network, the new regulatory framework, technical development and grid fee mechanisms can motivate households to found and/or join energy communities with the aim to maximize the consumption of locally generated energy. This will lead to a change in the behaviors of electrical energy exchange along the grid connection point of the MV/LV grid and consequently load flows along the MV-lines. </br> A local Energy Management System (Avacon Local Flex Controller – ALF-C) will monitor local generation, demand and storage capacities and control available flexibilities in such a way that consumption of locally generated energy will be maximized. </br> When local generation exceeds local demand, surplus energy will automatically be stored in local storages and the consumption of available flexible loads will be increased. When local consumption is exceeding local generation, stored electrical energy in local batteries will be discharged. The target is to minimize the load flow exchange at the MV/LV grid connection  to a level at which the community is virtually islanded. In cases where generation and demand cannot be balanced due to a lack of available storage capacity or flexibility, the residual load will exported/imported. </br> A sensor located at the grid connection will measure the power exchange of all 3 phases between the medium voltage and low voltage grid. The measured values indicate the residual demand or export of surplus of generated energy/power. Data are provided from local sensors to the ALF-C.  Based on the information ALF-C increases or decreases local consumption in order balance the grid. Additionally, sensors will be installed in private customer households to provide measurements of energy consumption and SOC of Energy Management Systems (EMS) for ALF-C to evaluate state of charge of batteries or flexible loads and potential available storage capacity. With historical measurement data and weather forecast provided by external service providers enable the ALF-C to predict energy generation and consumption to maximize self-sufficiency. </br> Actuators (controllers) enable ALF-C to switch on and off, increase or decrease energy consumption of individual loads, such as storage heaters and heat pumps, and storages located in private households and the large scale storage located in the community. </br> The communication between sensors, actuators and ALF-C will be web based, via LTE or DSL and open protocols. Customers shall not sacrifice comfort due to a decrease of room heating. </br> The operation of the community in an “Island” mode will be initiated by the operator.


## 1.5. Key Performance Indicatiors (KPI)

|ID   |Name   | Description   | Reference to mentioned use case objectives|
|-----|-------|---------------|-------------------------------------------|
|UC1-K01|Saved kWh|Number of kWh that the community doesn’t purchase from the public grid anymore|Enabling an islanding mode for the community|
|UC1-K02|Reduction of power recuperation peak|Comparison of power recuperation peaks before and after use case and during different times|Controlling the efficiency of the method which enables an island mode of the community|
|UC-K03|Consumption of customer generation|Amount of consumption by the community from their generation|Measure the consumption for maximized internal consumption of the generation|
|UC-K04|Duration of Island Mode|Max/Min/Average duration in which the community is able to be in island mode|Identify the framing characteristics of the island mode|

***Notes:***
Can be left blank now

## 1.6. Use case conditions

|Assumptions| Prerequisites|
|-----------|-------------|
|Simulation of TSO activies| add text|
|Private Customer households with flexible loads and storages join a local energy community.|Participants of the energy communities incl. flexible loads and storages are connected to a single low voltage grid (feed by a single MV/LV transformer) and are monitored and steered by an EMS.|
|The energy community needs an operator for the “Islanding” EMS.|National regulations have to be clarified who can be the service providers and who can’t (TSO, DSO, Aggregator, Retailer, Energy Service provider)|

***Notes:***
* **Assumptions** - general presumptions about conditions or system configurations (e.g. customer's consent required for some steps; simulation of TSO)
* **Prerequisites** - specify which requirements have to be met so that the basis scenario use case can be successfully accomplished.


## 1.7. Further information to the use case for classification/mapping

OPTIONAL - you can leave it blank

|Relation to other use cases|
|---------------------------|
|This use case is a prerequisite for Use Case 2 to 4|
|**Level of depth**|
|add text|
|**Prioritisation**|
|very important|
|**Generic, regional or national relation**|
|add text|
|**Nature of the use cases**|
|technical|
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
|- Use case 1 is anticipated to emerge as a result of the Clean Energy Package, driven by the bottom-up demand of customers and local communities <br/> - It is a prerequisite for the advanced use 2 - 4|

***Notes:***
Add any remarks which do not fit in any other category

# 2. Diagrams of Use Case

\&lt;! Example for img1: {{\&lt; imgproc img\_1 Fit &quot;600x400&quot; \&gt;}} Diagram 1 {{\&lt; /imgproc \&gt;}} !\&gt;

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
| ALFC-C Controller | System | -	Monitors local generation and demand </br> -	monitors available flexibility and storages </br> -	forecasts generation, demand and available flexibility via historic data and weather forecasts </br> -	receives “Islanding” -Trigger from ALF-C Use Case Modul and determines and dispatches setpoints for individual assets |  In an productive environment operator can could be DSO, retailers, storage system operators or any other energy service provider. |
| ALF-C Use Case Modul | System | Calculates the setpoint or setpoint schedule for the ALF-C Controller |  |
| DSO (Avacon) | Person | Local grid operator | In future done by DSO, TSO, marketer or energy service providers |


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
| I-01 |Generation| --- | --- |
| I-02| Consumption|--- |--- |
| I-03| Power at point of connection (real time)|--- |--- |
| I-04| Battery SOE/SOC|--- |--- |
| I-05| Weather conditions|--- |--- |
| I-06| Individual setpoints for flexibilities|--- |--- |
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
