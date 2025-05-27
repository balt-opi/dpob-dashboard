---
layout: page
title: Data Dictionary
permalink: /data-dictionary/
---

<style>
  .excel-table-wrapper {
    max-height: 600px; /* Adjust height as needed */
    overflow-y: auto;
    border: 1px solid #ccc;
    margin-bottom: 20px;
  }

  .excel-table {
    border-collapse: collapse;
    width: 100%;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 14px;
  }

  .excel-table th, .excel-table td {
    border: 1px solid #000000;
    padding: 8px;
    text-align: left;
    vertical-align: top;
  }

  .excel-table thead {
    background-color: #00d084;
    font-weight: bold;
    position: sticky;
    top: 0;
    z-index: 1;
  }

  .excel-table tbody tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>

<div class="excel-table-wrapper">
  <table class="excel-table">
<thead>
  <tr>
    <th>Variable</th>
    <th>Description</th>
    <th>Insights and Use Cases</th>
    <th>Geography</th>
    <th>Source</th>
    <th>Data Availability</th>
    <th>Date Health Status</th>
    <th>Date Health Notes/Issues</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>311 Service Requests</td>
    <td>311 connects Baltimore citizens, businesses & visitors with a vast array of city services, programs and information.</td>
    <td>Tracking the requests across the city to determine areas that are in need of repair or cleaning, which are submitted by residents.</td>
    <td>Baltimore City</td>
    <td>Mayor's Office of Performance and Innovation (CitiStat)</td>
    <td>Daily</td>
    <td>Satisfactory</td>
    <td>May lack critical status updates for closures. Updated daily unless server issues arise.</td>
  </tr>
  <tr>
    <td>Baltimore City Labor Force 1 year</td>
    <td>The total number of individuals who are 16 and over that are currently working.</td>
    <td>This information is helpful to contextualize the number of individuals who are in the workforce and where more work is  needed for the city.</td>
    <td>Baltimore City</td>
    <td>Bureau of Labor Statistics</td>
    <td>Annually</td>
    <td>Healthy</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard.</td>
  </tr>
  <tr>
    <td>Baltimore City Labor Force All Years</td>
    <td>The total number of individuals who are 16 and over that are currently working.</td>
    <td>This information is helpful to contextualize the number of individuals who are in the workforce and where more work is  needed for the city.</td>
    <td>Baltimore City</td>
    <td>Bureau of Labor Statistics</td>
    <td>Annually</td>
    <td>Healthy</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard.</td>
  </tr>
  <tr>
    <td>Baltimore City Tree Inventory</td>
    <td>Inventory of trees that are planted within Baltimore city streets.</td>
    <td>Allows residents and city agencies to see how many trees have been planted and where, their maintanince and upkeep, and the areas that can use more trees.</td>
    <td>Baltimore City</td>
    <td>Baltimore City Parks and Recreation, Forestry</td>
    <td>More than Annually</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Bureau of Labor Statistics (BLS)</td>
    <td>The US Department of Labor agency responsible for collecting, analyzing, and disseminating data on the labor market, including employment, wages, prices, and productivity.</td>
    <td>The data highlights trends on economic devoplement that is crucial for cities such as Baltimore. The city tourism, workforce, and citizens help promote a sustainable living environment, which allows the city to grow each year.</td>
    <td>Baltimore City</td>
    <td>Bureau of Labor Statistics</td>
    <td>Monthly/Annually/Quarterly</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Citywide Conventions</td>
    <td>Inventory of citywide conventions that track event goers from all across the nation.</td>
    <td>The data demonstrates the a number of event attendies and if those event are multiple days long. Multiple day long events allow for hotels to generate revenue for the city and supply growth and demand.</td>
    <td>Baltimore City</td>
    <td>Baltimore Convention Center</td>
    <td>Quarterly</td>
    <td>Needs Improvement</td>
    <td>Data is not given and must be created for the report by the user.</td>
  </tr>
  <tr>
    <td>Dumpsters Installed</td>
    <td>N/A</td>
    <td>N/A</td>
    <td>Baltimore City</td>
    <td>Department of Transportation</td>
    <td>Quarterly</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Employee Rates</td>
    <td>Employment data refers to statistics that describe the status, trends, and characteristics of the workforce—who is working, where, how much they earn, and in what industries. In the U.S., the Bureau of Labor Statistics (BLS) is the primary source for this information.</td>
    <td>Measures the number of jobs added in the economy each month. Reported by industry (e.g., construction, healthcare, retail).</td>
    <td>Baltimore City</td>
    <td>Bureau of Labor Statistics</td>
    <td>Monthly/Annually/Quarterly</td>
    <td>Healthy</td>
    <td>Data needs extraneous columns to be removed but otherwise it is fine. The data is current.</td>
  </tr>
  <tr>
    <td>Group A (Crime)</td>
    <td>Types of different crimes that are happening across the city and the demographic information of the alleged suspects and vicitms.</td>
    <td>Crime tracking helps to understand where more support is needed by the police and security services to provide a safer and more nutring environment.</td>
    <td>Baltimore City</td>
    <td>Mayor's Office of Performance and Innovation (CitiStat)</td>
    <td>Daily</td>
    <td>Healthy</td>
    <td>Data may not be accessible if the server is down which happens at times, however, the data is updated daily if running smoothly.</td>
  </tr>
  <tr>
    <td>Health Services</td>
    <td>Services that are offered or open to residents and visitors in the city.</td>
    <td>Health services provide a need to a safer environment.</td>
    <td>Baltimore City</td>
    <td>Baltimore Development Corporation/Data Axel</td>
    <td>Quarterly</td>
    <td>Satisfactory</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard. This data comes from another source who may be unable to keep supplying the data.</td>
  </tr>
  <tr>
    <td>Hotel Count</td>
    <td>Tracking the number of hotels within the city to demonstrate newer construction or demolished hotels.</td>
    <td>Data will hightlight the current or new hotels in the city.</td>
    <td>Baltimore City</td>
    <td>Visit Baltimore</td>
    <td>Monthly</td>
    <td>Satisfactory</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard. This data comes from BDC who have to wait to get the data from another source.</td>
  </tr>
  <tr>
    <td>Larceny and Shoplifting</td>
    <td>Tracking areas in the city that experience larceny and shoplifting crimes.</td>
    <td>Determing areas that need stronger security presence or policing to provide safer alternatives for those who are shopping in the area. The data allows for trends within specific neighborhoods and stores that see a higher rate of criminal activity.</td>
    <td>Baltimore City</td>
    <td>Mayor's Office of Performance and Innovation (CitiStat)</td>
    <td>Daily</td>
    <td>Healthy</td>
    <td>Data may not be accessible if the server is down which happens at times, however, the data is updated daily if running smoothly.</td>
  </tr>
  <tr>
    <td>Large Events</td>
    <td>Tracking the number of large events that take place in the downtown area.</td>
    <td>Large events support the economy for the city with providing new opportunities and revenue for residents in the area.</td>
    <td>Baltimore City</td>
    <td>Visit Baltimore</td>
    <td>Monthly</td>
    <td>Need Improvement</td>
    <td>Data is not given and must be created for the report by the user.</td>
  </tr>
  <tr>
    <td>Number of Planters Installed</td>
    <td>N/A</td>
    <td>N/A</td>
    <td>Baltimore City</td>
    <td>Downtown Partnership of Baltimore</td>
    <td>Quarterly</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Number of Tree Wells Cleared</td>
    <td>N/A</td>
    <td>N/A</td>
    <td>Baltimore City</td>
    <td>Baltimore City Parks and Recreation, Forestry</td>
    <td>Quarterly</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Number of Trees Planted</td>
    <td>Total number of trees planted in the city.</td>
    <td>Provides a inventory of the type and amount of trees that have been planted in the city. This is helpful for city workers and residents to see which areas still lack a tree canopy or have an abundance of trees.</td>
    <td>Baltimore City</td>
    <td>Baltimore City Parks and Recreation, Forestry</td>
    <td>Quarterly</td>
    <td>Needs Improvement</td>
    <td>The tree inventory is not done annually therefore leaving out information on if the trees are still standing or not there. There is missing data information for some of the trees.</td>
  </tr>
  <tr>
    <td>Other Businesses</td>
    <td>Services that are offered or open to residents and visitors in the city.</td>
    <td>Other businesses that are in the city that are not limited to automotive services, housing essentials, and maintance.</td>
    <td>Baltimore City</td>
    <td>Baltimore Development Corporation/Data Axel</td>
    <td>Quarterly</td>
    <td>Healthy</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard. This data comes from BDC who have to wait to get the data from another source.</td>
  </tr>
  <tr>
    <td>Resturants and Bars</td>
    <td>Tracking the number of resturants and bars within the city to demonstrate newer construction or demolished ones.</td>
    <td>Restaurant occupancy is important for Baltimore City because it directly affects the city’s economic health, job market, tourism sector, and neighborhood vitality. Restaurants are a major part of Baltimore’s small business economy. Tourism is a major contributor to resturant life.</td>
    <td>Baltimore City</td>
    <td>Visit Baltimore</td>
    <td>Quarterly</td>
    <td>Satisfactory</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard. This data comes from BDC who have to wait to get the data from another source.</td>
  </tr>
  <tr>
    <td>Retail Count</td>
    <td>Tracking the number of retail stores within the city to demonstrate newer construction or demolished ones.</td>
    <td>Some corridors are struggling with high vacancies, while others maintain stronger demand. Public safety, downtown office worker return, and transit access all influence retail.</td>
    <td>Baltimore City</td>
    <td>Baltimore Development Corporation</td>
    <td>Quarterly</td>
    <td>Satisfactory</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard. This data comes from BDC who have to wait to get the data from another source.</td>
  </tr>
  <tr>
    <td>Service Level Agreement</td>
    <td>Service Level Agreement or SLA is an established timeline that a Service Request has to be completed. For example a SR may have 3 or 4 days to be completed and closed for the resident.</td>
    <td>This is critcal information for the city of Baltimore as the residents depend on services being completed on time and correctly. Some areas have more or less service requests that need to be completed.</td>
    <td>Baltimore City</td>
    <td>311 Salesforce</td>
    <td>N/A</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Service Request</td>
    <td>Service Request or SR is a request that asks for service to be completed within the Baltimore City area. The city, its residents, and workers all depend on the services provided by the city for a cleaner and safer environment.</td>
    <td>This is critcal information for the city of Baltimore as the residents depend on services being completed on time and correctly. Some areas have more or less service requests that need to be completed.</td>
    <td>Baltimore City</td>
    <td>311 Salesforce</td>
    <td>N/A</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td>Total Businesses</td>
    <td>The total number of businesses currently active, as collected by Data Axle from secretaries of state, county courthouses, utility providers, departments of revenue, departments of taxation, local business and legal journals, and other sources that record new business transactions. Active businesses are those that Data Axle has been able to contact by phone in the last 18 months.</td>
    <td>This information is helpful to contextualize the number of new businesses and other indicators in the Small Business tab of the dashboard.</td>
    <td>Baltimore City</td>
    <td>Baltimore Development Corporation/Data Axel</td>
    <td>Quarterly</td>
    <td>Satisfactory</td>
    <td>Some of the data needs cleaning and there are rows that are not relevant to what is needed for the dashboard. This data comes from BDC who have to wait to get the data from another source.</td>
  </tr>
  <tr>
    <td>Trash Cans Installed</td>
    <td>N/A</td>
    <td>N/A</td>
    <td>Baltimore City</td>
    <td>Department of Transport</td>
    <td>Quarterly</td>
    <td>N/A</td>
    <td></td>
  </tr>
  <tr>
    <td>Unemployment Rate</td>
    <td>Unemployment data refers to statistics that describe the status, trends, and characteristics of the workforce—who are not working. In the U.S., the Bureau of Labor Statistics (BLS) is the primary source for this information.</td>
    <td>Measures the number of jobs lost in the economy each month. Reported by industry (e.g., construction, healthcare, retail).</td>
    <td>Baltimore City</td>
    <td>Bureau of Labor Statistics</td>
    <td>Monthly/Annually/Quarterly</td>
    <td>Healthy</td>
    <td>Data needs extraneous columns to be removed but otherwise it is fine. The data is current.</td>
  </tr>
</tbody>
</table>




























