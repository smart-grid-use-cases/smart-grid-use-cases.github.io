---
title: "LVRTM Example Use Case"
linkTitle: "LVRTM Example Use Case"
date: 2017-01-05
description: >
  Low Voltage Network Real Time Monitoring (LVRTM)
---

## 1 Description of the Use Case


### 1.1 Name of the Use Case

<table>
<thead>
<tr class="header">
<th><strong>ID</strong></th>
<th><strong>Area /<br />
Domain(s)/<br />
Zone(s)</strong></th>
<th><strong>Name of the Use Case</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>132</td>
<td></td>
<td>Low Voltage Network Real Time Monitoring (LVRTM)</td>
</tr>
</tbody>
</table>

### 1.2 Version Management


### 1.3 Scope and Objectives of Use Case

<table>
<thead>
<tr class="header">
<th><strong>Scope</strong></th>
<th>The use case consists in collecting in a unique repository located in the Secondary Substation â€“ measurement (mean values and PQ indexes), states and alarms from the LV grid.</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Objective(s)</strong></td>
<td>This information is needed to perform correctly algorithms (State Estimation, State Forecasting, Optimal Power Flow, and control actions in order to increase the network reliability and performance.</td>
</tr>
<tr class="even">
<td><strong>Related business<br />
case(s) </strong></td>
<td></td>
</tr>
</tbody>
</table>

### 1.4 Narrative of Use Case

**Short description**

The data collection for the LV grid is performed storing real-time
measurements (mean values and PQ indexes), states and alarms in a unique
repository – located in the Secondary Substation – after managing some
implementation issues, such as protocol conversion and writing of data
into the SSAU.RDBMS.

“Real-time” in this context means something in between 1 second and some
minutes.

**Complete description**

On the LV grid, several monitoring devices will be installed:

-   Smart Meters (SM) on the connection point of LV
    customers/productions. Data of SMs are often collected by a Meter
    Data Collector (MDC) system, installed in the secondary substation
    and aggregated in an Automatic Metering Management system (AMM)
    located in the control center.

<!-- -->

-   Remote Terminal Units (RTUs), Power Quality Meters (PQMs) or – more
    in general – Intelligent Electronic Devices (IEDs)

Data considered by the use case is:

-   Mean values of V, I, Q, P:

    -   LV busbars, LV side of transformers and LV lines in secondary
        substations (RTU, IED)

    -   On the connection point of LV customers/productions (SM/MDC)

-   Load profiles from LV customers and generations (SM/MDC)

-   PQ indexes both from the secondary substations and from some
    relevant nodes of the LV grid, such has street cabinets (PQM)

-   Status of remote-controllable elements in secondary substations
    (RTU-IED)

    -   breakers/disconnectors

    -   tap changer of MV/LV transformers

    -   voltage or reactive power set-points for generation connected on
        the LV network

-   Alarms related to events and faults (IED-PQM-RTU)

Measures, events and states not provided by those devices are provided
by the Distribution Management System (DMS).

Measures, events and states from the MV side of the secondary substation
should be considered as well. In that case they will be transfer to the
primary substation by the DMS.

Measures are fetched by using:

-   the IEC61850 protocols (mainly MMS) and stored into the database
    which presents a data model compliant with the IEC61850 for the
    general monitoring of the LV grid (from RTUs, IEDs, DMS…)

-   DLMS/COSEM protocol for the communication with electronic meters(EM)

 

Protocol conversion have to be implemented before writing the data –
collected from different sources – into the SSAU.RDBMS to enable the
execution of other use cases.  
  
The SSAU.RDBMS should contain a Data layer, composed by a relational
database, where the data are written.

The SSAU.Monitoring must include an Interface layer which implements
required communication protocols and which is able to extract data from
other systems.  
  
The SSAU.Reporting is composed of an Application layer, which analyses
the data to:

-   calculate statistical values such as min, max, avg, std, etc.

-   generate reports for the primary substation/DMS

### 1.5 General Remarks

## 2 Diagrams of Use Case

![Figure 1](img_1.png)

{{< imgproc img_1 Fit "600x400" >}}
Diagram 1
{{< /imgproc >}}

{{< imgproc img_2 Fit "600x1200" >}}
Diagram 2
{{< /imgproc >}}

{{< imgproc img_3 Fit "600x600" >}}
Diagram 3
{{< /imgproc >}}

## 3 Technical Details

### 3.1 Actors

<table>
<thead>
<tr class="header">
<th><strong>Actor Name</strong></th>
<th><strong>Actor Type</strong></th>
<th><strong>Actor Description</strong></th>
<th><strong>Further information specific to this Use Case</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>DIED.SM</td>
<td>function</td>
<td>Smart Meter (SM)<br />
Def. 1<br />
Meter with additional functionalities one of which is data communication.<br />
<br />
Def. 2<br />
The metering end device is a combination of the following meter-related functions from the Smart Metering reference architecture: Metrology functions including the conventional meter display (register or index) that are under legal metrological control. When under metrological control, these functions shall meet the essential requirements of the MID; One or more additional functions not covered by the MID. These may also make use of the display; Meter communication functions<br />
<br />
Actor in the Field zone</td>
<td></td>
</tr>
<tr class="even">
<td>DMS.DXP.MMS</td>
<td>function</td>
<td>DXP communication interface<br />
Depending on the particolar interface it can be<br />
- 104 master<br />
- 61850 client/server<br />
- Modbus/TCP master<br />
<br />
Distribution Management System (DMS)<br />
Def. 1<br />
Application server of a Distribution Management System which hosts applications to monitor and control a distribution grid from a centralized location, typically the control center.<br />
<br />
Def. 2<br />
DMS SCADA System refers to the real-time information system and all the elements needed to support all the relevant operational activities and functions used in distribution automation at dispatch centers and control rooms.<br />
<br />
Actor in Enterprise zone</td>
<td></td>
</tr>
<tr class="odd">
<td>PSAU.DXP.MMS</td>
<td>function</td>
<td>DXP, client server interface for MMS<br />
Primary Substation Automation Unit Monitoring<br />
It represents the monitoring functionalities which are implemented in the Primary Substation Automation Unit</td>
<td></td>
</tr>
<tr class="even">
<td>Sensor</td>
<td>other</td>
<td>It is a generic sensor such as voltage sensor, current sensor, state sensor, etc. which can be acquired by a generic IED (RTU, PD, etc.)</td>
<td></td>
</tr>
<tr class="odd">
<td>SSAU.DXP.AMM</td>
<td>function</td>
<td>Automatic Meter Management is the system which is in charged to manage meter data concentrators collecting data in a centralzed database and performing a set of diagnostic functions</td>
<td></td>
</tr>
<tr class="even">
<td>SSAU.DXP.DLMS/COSEM</td>
<td></td>
<td>SSAU data exchange platform for DLMS/COSEM protocol (smart meter data)</td>
<td></td>
</tr>
<tr class="odd">
<td>SSAU.DXP.IEC104</td>
<td>function</td>
<td>Secondary Substation Automation Unit Reporting<br />
It represents the reporting functionalities which are implemented in the Secondary Substation Automation Unit</td>
<td></td>
</tr>
<tr class="even">
<td>SSAU.DXP.MMS</td>
<td>function</td>
<td>DXP, client server interface for MMS<br />
Secondary Substation Automation Unit Monitoring<br />
It represents the monitoring functionalities which are implemented in the Secondary Substation Automation Unit</td>
<td></td>
</tr>
<tr class="odd">
<td>SSAU.DXP.Modbus</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>SSAU.DXP.RDBMS</td>
<td>function</td>
<td>Secondary Substation Automation Unit Relational Database Management System <br />
It represents the database and the related management system which compose the Secondary Substation Automation Unit storage system</td>
<td></td>
</tr>
<tr class="odd">
<td>SSAU.SC</td>
<td></td>
<td>SSAU.SC<br />
SSAU statistical calculation</td>
<td></td>
</tr>
<tr class="even">
<td>SSIED</td>
<td>function</td>
<td>PSIED</td>
<td></td>
</tr>
<tr class="odd">
<td>SSIED.MDC</td>
<td>function</td>
<td>Meter Data Concentrator (MDC)<br />
<br />
Def. 1<br />
A party responsible for meter reading and quality control of the reading.<br />
<br />
Def. 2<br />
Device or application typically in a substation which establishes the communication to smart meters to collect the metered information and send it in concentrated form to an AMI head end.<br />
<br />
Actor in Station zone</td>
<td></td>
</tr>
</tbody>
</table>

3.2 Triggering Event, Preconditions, Assumptions
------------------------------------------------

<table>
<thead>
<tr class="header">
<th><strong>Actor/System/Information/Contract</strong></th>
<th><strong>Triggering Event</strong></th>
<th><strong>Pre-conditions</strong></th>
<th><strong>Assumption</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 3.3 References

<table>
<thead>
<tr class="header">
<th><strong>No.</strong></th>
<th><strong>References Type</strong></th>
<th><strong>Reference</strong></th>
<th><strong>Status</strong></th>
<th><strong>Impact on Use Case</strong></th>
<th><strong>Organistaor / Organisation</strong></th>
<th><strong>Link</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

### 3.4 Further Information to the Use Case for Classification / Mapping

**Relation to Other Use Cases**

Medium Voltage Network Real Time Monitoring (MVRTM);

**Level of Depth**

Primary Use Case

**Priorisation**

??

**Generic, Regional or National Relation**

European

**Viewpoint**

Technical

**Further Keyword for Classification**

Low Voltage Grid, Monitoring, Report, DLMS/COSEM

## 4 Step by Step Analysis of Use Case

### 4.1 Overview of Scenarios

<table>
<thead>
<tr class="header">
<th><strong>No.</strong></th>
<th><strong>Scenario Name</strong></th>
<th><strong>Primary Actor</strong></th>
<th><strong>Triggering Event</strong></th>
<th><strong>Pre-Condition</strong></th>
<th><strong>Post-Condition</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>SM with MDC [normal]</td>
<td>Sensor, SM, MDC, SSAU.Monitoring, SSAU.RDBMS</td>
<td>Periodically</td>
<td>Each SM is sampling values from connected sensors, MDC is connected to the SMs, SAU.Monitoring can call MDC webservices and SSAU.RDBMS is available to store new data</td>
<td>Smart Meters Data (voltages, currents, powers, etc.) is stored in the SSAU.RDBMS</td>
</tr>
<tr class="even">
<td>2</td>
<td>SM without MDC [normal]</td>
<td>Sensor, SM, SSAU.Monitoring, SSAU.RDBMS</td>
<td>Periodically</td>
<td>Each SM is sampling values from connected sensors, SSAU.Monitoring is connected to the SMs and SSAU.RDBMS is available to store new data</td>
<td>Smart Meters Data (voltages, currents, powers, etc.) is stored in the SSAU.RDBMS</td>
</tr>
<tr class="odd">
<td>3</td>
<td>SM with AMM [normal]</td>
<td>Sensor, SM, AMM, MDC, SSAU.Monitoring, SSAU.RDBMS</td>
<td>Periodically</td>
<td>Each SM is sampling values from connected sensors, MDC is connected to the SMs, AMM is connected to the SMs and MDCs, SAU.Monitoring is connected to the AMM and SSAU.RDBMS is available to store new data</td>
<td>Smart Meters Data (voltages, currents, powers, etc.) is stored in the SSAU.RDBMS</td>
</tr>
<tr class="even">
<td>4</td>
<td>DMS No Monitored Event [normal]</td>
<td>DMS, SSAU.Monitoring, SSAU.RDBMS</td>
<td>No directly monitored events in the LV grid</td>
<td>DMS recives a notification for an event occured in the LV grid which is not directly monitored by SSAU.Monitoring (i.e. state changed for a manual disconnetor), SSAU.Monitoring has subscribed the related report and SSAU.RDBMS is available to store new data</td>
<td>No monitored event data is stored in the SSAU.RDBMS</td>
</tr>
<tr class="odd">
<td>5</td>
<td>IED Timed MMS Report [normal]</td>
<td>Sensor, SSIED, SSAU.Monitoring, SSAU.RDBMS</td>
<td>Periodically</td>
<td>IED is sampling values from connected sensors, SSAU.Monitoring has subscribed the IED timed report and SSAU.RDBMS is available to store new data</td>
<td>IED report data is stored in the SSAU.RDBMS</td>
</tr>
<tr class="even">
<td>6</td>
<td>IED Threshold/Event MMS Report [normal]</td>
<td>Sensor, SSIED, SSAU.Monitoring, SSAU.RDBMS</td>
<td>Threshold crossed</td>
<td>IED is sampling values from connected sensors, SSAU.Monitoring has subscribed the IED threshold report and SSAU.RDBMS is available to store new data</td>
<td>IED report data is stored in the SSAU.RDBMS</td>
</tr>
<tr class="odd">
<td>7</td>
<td>IED Read MMS [normal]</td>
<td>Sensor, SSIED, SSAU.Monitoring, SSAU.RDBMS</td>
<td>Read request from SSAU.Monitoring</td>
<td>IED is sampling values from connected sensors, SSAU.Monitoring is connected to the IED and SSAU.RDBMS is available to store new data</td>
<td>IED requested data is stored in the SSAU.RDBMS</td>
</tr>
<tr class="even">
<td>8</td>
<td>Reporting Timed Report [normal]</td>
<td>SSAU.Reporting, SSAU.RDBMS</td>
<td>Periodically</td>
<td>An external entity has subscribed a SSAU.Reporting timed report. SSAU.Reporting and SSAU.RDBMS are available to provide data</td>
<td>Report is transmitted to the external entity</td>
</tr>
<tr class="odd">
<td>9</td>
<td>Reporting Threshold Report [normal]</td>
<td>SSAU.Reporting, SSAU.RDBMS</td>
<td>Threshold crossed</td>
<td>An external entity has subscribed a SSAU threshold report. SSAU.Reporting and SSAU.RDBMS are available to provide data</td>
<td>Report is transmitted to the external entity</td>
</tr>
<tr class="even">
<td>10</td>
<td>Reporting Read MMS [normal]</td>
<td>SSAU.Reporting, SSAU.RDBMS</td>
<td>Read request from external entity</td>
<td>An external entity has requested a read data then SSAU.Reporting answers retieving data from SSAU.RDBMS</td>
<td>SSAU requested data is transmitted to the external entity</td>
</tr>
<tr class="odd">
<td>11</td>
<td>Statistical Calculation [normal]</td>
<td>SSAU.Reporting, SSAU.RDBMS</td>
<td>Periodically</td>
<td>SSAU.RDBMS is available to store new data</td>
<td>Statistical Values are stored in the SSAU.RDBMS</td>
</tr>
</tbody>
</table>

### 4.2 Steps – Scenarios

#### Scenario Name: No. 1 - SM with MDC \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Signals sampling</td>
<td>SM samples sensors signals (voltages and currents) and calculate powers and energies</td>
<td>REPORT</td>
<td>Sensor</td>
<td>DIED.SM</td>
<td>Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>MDC acquires data from conneted SMs</td>
<td>GET</td>
<td>DIED.SM</td>
<td>SSIED.MDC</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>SSAU.Monitoring acquires data from MDC</td>
<td>GET</td>
<td>SSIED.MDC</td>
<td>SSAU.DXP.DLMS/COSEM</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>4</td>
<td>SSAU.Moitoring Data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring writes acquired data in SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.DLMS/COSEM</td>
<td>SSAU.DXP.RDBMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 2 - SM without MDC \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Signals sampling</td>
<td>SM samples sensors signals (voltages and currents) and calculate powers and energies</td>
<td>REPORT</td>
<td>Sensor</td>
<td>DIED.SM</td>
<td>Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>SSAU.Monitoring acquires values from connected SMs</td>
<td>GET</td>
<td>DIED.SM</td>
<td>SSAU.DXP.DLMS/COSEM</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>SSAU.Monitoring data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring writes acquired data in SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.DLMS/COSEM</td>
<td>SSAU.DXP.RDBMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 3 - SM with AMM \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Signals sampling</td>
<td>SM samples sensors signals (voltages and currents) and calculate powers and energies</td>
<td>REPORT</td>
<td>Sensor</td>
<td>DIED.SM</td>
<td>Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>MDC acquires data from conneted SMs</td>
<td>GET</td>
<td>DIED.SM</td>
<td>SSIED.MDC</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>AMM acquires data from conneted MDCs</td>
<td>GET</td>
<td>SSIED.MDC</td>
<td>SSAU.DXP.AMM</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>4</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>AMM acquires data from conneted SMs</td>
<td>GET</td>
<td>DIED.SM</td>
<td>SSAU.DXP.AMM</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>5</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>SSAU.Monitoring acquires data from conneted AMM</td>
<td>GET</td>
<td>SSAU.DXP.AMM</td>
<td>SSAU.DXP.DLMS/COSEM</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>6</td>
<td>SSAU.Monitoring data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring writes acquired data in SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.DLMS/COSEM</td>
<td>SSAU.DXP.RDBMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 4 - DMS No Monitored Event \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>No Monitored Event from LV grid</td>
<td>Data acquisition</td>
<td>DMS sends a report to the SSAU.Monitoring containing data related to the event</td>
<td>REPORT</td>
<td>DMS.DXP.MMS</td>
<td>SSAU.DXP.MMS</td>
<td>Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>SSAU.Monitoring data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring stores the data received by the DMS into the SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.MMS</td>
<td>SSAU.DXP.RDBMS</td>
<td>Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 5 - IED Timed MMS Report \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Signals sampling</td>
<td>IED samples and acquires voltages/currents/states/etc. signals from sensors</td>
<td>REPORT</td>
<td>Sensor</td>
<td>SSIED</td>
<td>Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Periodically</td>
<td>Data acquisition</td>
<td>IED generates a new report that will be transmitted to the SSAU.Monitoring. Report can contains one or more values</td>
<td>REPORT</td>
<td>SSIED</td>
<td>SSAU.DXP.MMS</td>
<td>Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>SSAU.Monitoring data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring stores the received report data inside the SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.MMS</td>
<td>SSAU.DXP.RDBMS</td>
<td>Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 6 - IED Threshold/Event MMS Report \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Signals sampling</td>
<td>IED samples and acquires voltages/currents/states/etc. signals from sensors</td>
<td>REPORT</td>
<td>Sensor</td>
<td>SSIED</td>
<td>Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Threshold crossed</td>
<td>Data acquisition</td>
<td>IED generate a new report that will be transmitted to the SSAU.Monitoring. Report can contains one or more values</td>
<td>REPORT</td>
<td>SSIED</td>
<td>SSAU.DXP.MMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>SSAU.Monitoring data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring stores the received report data inside the SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.MMS</td>
<td>SSAU.DXP.RDBMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 7 - IED Read MMS \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Signals sampling</td>
<td>IED samples and acquires voltages/currents/states/etc. signals from sensors</td>
<td>REPORT</td>
<td>Sensor</td>
<td>SSIED</td>
<td>Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Read request</td>
<td>Data acquisition</td>
<td>SSAU.Monitoring requestes a read then IED answers sending the requested values</td>
<td>GET</td>
<td>SSIED</td>
<td>SSAU.DXP.MMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>SSAU.Monitoring data acquired</td>
<td>Data storage</td>
<td>SSAU.Monitoring stores the received report data inside the SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.MMS</td>
<td>SSAU.DXP.RDBMS</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 8 - Reporting Timed Report \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Data storage</td>
<td>SSAU.Reporting reads data from SSAU.RDBMS</td>
<td>GET</td>
<td>SSAU.DXP.RDBMS</td>
<td>SSAU.DXP.MMS</td>
<td>Statistical measurement<br />
Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>SSAU.Reporting data retrieved</td>
<td>Data presentation</td>
<td>SSAU.Reporting generates a new report which contains the data retrieved from SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.DXP.MMS</td>
<td>PSAU.DXP.MMS</td>
<td>Statistical measurement<br />
Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 9 - Reporting Threshold Report \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Data storage</td>
<td>SSAU.Reporting reads data from SSAU.RDBMS</td>
<td>GET</td>
<td>SSAU.DXP.RDBMS</td>
<td>SSAU.DXP.MMS</td>
<td>Statistical measurement<br />
Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Threshold crossed</td>
<td>Data presentation</td>
<td>SSAU.Reporting generates a new report if a predefined threshold is crossed</td>
<td>REPORT</td>
<td>SSAU.DXP.MMS</td>
<td>PSAU.DXP.MMS</td>
<td>Statistical measurement<br />
Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 10 - Reporting Read MMS \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Read request from external entity</td>
<td>Data presentation</td>
<td>SSAU.Reporting receives a read data request from an external entity so it retrieves data from SSAU.RDBMS</td>
<td>GET</td>
<td>SSAU.DXP.RDBMS</td>
<td>SSAU.DXP.MMS<br />
SSAU.DXP.Modbus<br />
SSAU.DXP.IEC104</td>
<td>Statistical measurement<br />
Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
</tbody>
</table>

#### Scenario Name: No. 11 - Statistical Calculation \[normal\]

<table>
<thead>
<tr class="header">
<th><strong>Step No.</strong></th>
<th><strong>Event.</strong></th>
<th><strong>Name of Process/ Activity</strong></th>
<th><strong>Description of Process/ Activity.</strong></th>
<th><strong>Service</strong></th>
<th><strong>Information Producer (Actor)</strong></th>
<th><strong>Information Receiver (Actor)</strong></th>
<th><strong>Information Exchanged</strong></th>
<th><strong>Requirements, R-ID</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>1</td>
<td>Periodically</td>
<td>Data storage</td>
<td>SSAU.Reporting retrieves data required to calculate new statical values (such as min, max, avg, etc.)</td>
<td>GET</td>
<td>SSAU.DXP.RDBMS</td>
<td>SSAU.SC</td>
<td>Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="even">
<td>2</td>
<td>Data retrieved</td>
<td>Statistical calculation</td>
<td>SSAU.Reporting calculates a set of statistical values</td>
<td>EXECUTE</td>
<td>SSAU.SC</td>
<td>SSAU.SC</td>
<td>Reactive power<br />
Current phase angle<br />
Voltage phase angle<br />
Voltage magnitude<br />
Current magnitude<br />
Active power<br />
Energy measurement<br />
Switch status</td>
<td></td>
</tr>
<tr class="odd">
<td>3</td>
<td>Statistical data calculated</td>
<td>Data storage</td>
<td>SSAU.Reporting stores the calculated statical data inside the SSAU.RDBMS</td>
<td>REPORT</td>
<td>SSAU.SC</td>
<td>SSAU.DXP.RDBMS</td>
<td>Statistical measurement</td>
<td></td>
</tr>
</tbody>
</table>

## 5 Information Exchanged

<table>
<thead>
<tr class="header">
<th><strong>Name of Information (ID)</strong></th>
<th><strong>Description of Information Exchanged</strong></th>
<th><strong>Requirements to information data</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Active power</td>
<td>Active power injection [W]</td>
<td></td>
</tr>
<tr class="even">
<td>Current magnitude</td>
<td>Current magnitude [A]</td>
<td></td>
</tr>
<tr class="odd">
<td>Current phase angle</td>
<td>Current phase angle [rad]</td>
<td></td>
</tr>
<tr class="even">
<td>Energy measurement</td>
<td>Energy measurement [Wh]</td>
<td></td>
</tr>
<tr class="odd">
<td>Reactive power</td>
<td>Reactive power injection [VAr]</td>
<td></td>
</tr>
<tr class="even">
<td>Statistical measurement</td>
<td>Statistical values such as min, max, avg, std, etc.</td>
<td></td>
</tr>
<tr class="odd">
<td>Switch status</td>
<td>Information about devices states (i.e. breaker: open, close, undefined; tap changer position; etc.)</td>
<td></td>
</tr>
<tr class="even">
<td>Voltage magnitude</td>
<td>Voltage magnitude [V]</td>
<td></td>
</tr>
<tr class="odd">
<td>Voltage phase angle</td>
<td>Voltage phase angle [rad]</td>
<td></td>
</tr>
</tbody>
</table>

## 6 Requirements (optional)

## 7 Common Terms and Definitions

<table>
<thead>
<tr class="header">
<th><strong>Term</strong></th>
<th><strong>Definition</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
</tr>
</tbody>
</table>

## 8 Custom Information (optional)

<table>
<thead>
<tr class="header">
<th><strong>Key</strong></th>
<th><strong>Value</strong></th>
<th><strong>Refers to Section</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
