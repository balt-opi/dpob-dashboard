---
layout: page
title: "311 Service Requests"
---

# Service Request Statistics

<!-- Stat Boxes -->
<div style="display: flex; gap: 16px; justify-content: center; align-items: stretch; margin-bottom: 40px;">
  <div style="background-color: #121f3f; padding: 10px; border-radius: 8px; width: 250px; text-align: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <div style="color: #f1c232; font-weight: bold; font-size: 16px;">Average Days to Close Service Requests</div>
    <div style="color: #f1c232; font-weight: bold; font-size: 28px;">12.40</div>
  </div>
  <div style="background-color: #121f3f; padding: 10px; border-radius: 8px; width: 250px; text-align: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <div style="color: #f1c232; font-weight: bold; font-size: 16px;">Number of Overdue Service Requests</div>
    <div style="color: #f1c232; font-weight: bold; font-size: 28px;">1273</div>
  </div>
</div>

<style>
/* General Layout */
.bar-chart {
  max-width: 900px;
  margin: 40px auto;
  padding: 20px;
  font-family: sans-serif;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.chart-title {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 4px;
}

.chart-subtitle {
  font-size: 14px;
  color: #666;
  margin-bottom: 20px;
}

.chart-legend {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 12px;
  margin-bottom: 20px;
  gap: 12px;
  flex-wrap: wrap;
}

.chart-legend > div {
  font-weight: bold;
  margin-right: 6px;
}

.chart-legend span {
  display: inline-block;
  width: 14px;
  height: 14px;
  border-radius: 2px;
  margin-right: 4px;
  vertical-align: middle;
}

/* Bar Area */
.bar-container {
  display: flex;
  align-items: flex-end;
  gap: 20px;
  overflow-x: auto;
  padding-bottom: 30px;
  max-width: 100%;
}

/* Each group of bars + labels */
.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 6px;
  min-width: 70px;
}

/* Bar and Labels */
.bar {
  width: 30px;
  min-height: 20px;              /* ensure bars always show text */
  display: flex;
  align-items: flex-end;
  justify-content: center;
  font-size: 10px;
  font-weight: bold;
  color: #000;
  border-radius: 4px 4px 0 0;
  padding: 2px 0 4px 0;
  line-height: 1;
  word-break: break-word;
  white-space: normal;
  /* overflow: hidden; <- removed to let text show above small bars */
}

/* Bar labels below bars */
.bar-name {
  font-size: 13px;
  text-align: center;
  max-width: 70px;
  display: flex;
  flex-direction: column;
  line-height: 1.2;
  gap: 2px;
  height: 39px;
  justify-content: center;
  align-items: center;
  margin-top: 18px; /* <-- increased from 8px to 18px */
}

.bar-label {
  margin-top: 6px;
  font-size: 11px;
  text-align: center;
  max-width: 70px;
  line-height: 1.2;
  height: 28px; /* Fix height to prevent pushing bars */
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  white-space: normal;
}

/* Bar Colors */
.close-bar { background-color: #abb8c3; }
.sla-bar { background-color: #8ed1fc; }
.closed { background-color: #9FE2BF; }
.new { background-color: #f28e2c; }
.open { background-color: #e15759; }
.pending { background-color: #b07aa1; }
</style>


<!-- Chart 1: Average vs SLA -->
<div class="bar-chart" aria-label="Average Days to Close Service Requests vs. SLA by Group">
  <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, Jan. 2024 - May. 2025</div>
  <div class="chart-legend">
    <span style="background-color: #abb8c3;"></span> Average of Days to Close
    <span style="background-color: #8ed1fc;"></span> Average of SLA
  </div>

  <div style="display: flex; align-items: flex-end; max-width: 100%; overflow-x: auto;">
    <!-- Y-axis label -->
    <div style="writing-mode: vertical-rl; transform: rotate(180deg); font-weight: bold; font-size: 13px; margin-right: 12px; text-align: center; white-space: nowrap;">
      Average Days to Close
    </div>

   <div class="bar-container" style="min-width: 400px;">
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 76px;">19</div>
        <div class="bar close-bar" style="height: 164px;">41</div>
        <div class="bar-name">Trees &amp;<br>Grass</div>
      </div>
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 84px;">21</div>
        <div class="bar close-bar" style="height: 84px;">21</div>
        <div class="bar-name">Street &amp;<br>Curb Repairs</div>
      </div>
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 12px;">3</div>
        <div class="bar close-bar" style="height: 76px;">19</div>
        <div class="bar-name">Water</div>
      </div>
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 28px;">7.6</div>
        <div class="bar close-bar" style="height: 56px;">14</div>
        <div class="bar-name">
          <span>Traffic Signals,</span>
          <span>Lights, &amp;</span>
          <span>Signs</span>
        </div>
      </div>
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 24px;">6</div>
        <div class="bar close-bar" style="height: 36px;">9</div>
        <div class="bar-name">Dirty<br>Streets</div>
      </div>
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 12px;">3</div>
        <div class="bar close-bar" style="height: 32px;">8</div>
        <div class="bar-name">Trash &amp;<br>Recycling</div>
      </div>
      <div class="bar-group">
        <div class="bar sla-bar" style="height: 12px;">3</div>
        <div class="bar close-bar" style="height: 44px;">11</div>
        <div class="bar-name">Graffiti</div>
      </div>
    </div>
  </div>

  <!-- X-axis label -->
  <div style="margin-top: 10px; font-weight: bold; font-size: 13px; text-align: center; white-space: nowrap;">
    SR Group
  </div>
</div>

<!-- Chart 2: Service Requests by Group and Status -->
<div class="bar-chart" aria-label="Service Requests by Groups and Status">
  <div class="chart-title">Service Requests by Groups and Status</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, Jan. 2024 - May. 2025</div>

  <!-- Chart Legend -->
<div class="chart-legend">
  <div>SR Status:</div>
  <span style="background-color: #9FE2BF;"></span>  <span class="legend-bold">Closed</span>
  <span style="background-color: #f28e2c;"></span>  <span class="legend-bold">New</span>
  <span style="background-color: #e15759;"></span> <span class="legend-bold">Open</span>
  <span style="background-color: #b07aa1;"></span>  <span class="legend-bold">Pending</span>
</div>


  <!-- Chart Area -->
  <div style="display: flex; align-items: flex-start; overflow-x: auto; max-width: 100%;">
    <!-- Y-axis label -->
  <div style="writing-mode: vertical-rl; transform: rotate(180deg); font-weight: bold; font-size: 13px; margin-right: 12px; text-align: center; white-space: nowrap;">
      Number of SRs
    </div>
    <!-- Bars and X-axis label container -->
   <div style="display: flex; flex-direction: column; align-items: center;">
      <div class="bar-container" style="display: flex; gap: 20px; min-width: 400px;">
        <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 200px; background-color: #9FE2BF;">1568</div>
          <div class="bar new" style="height: 21px; background-color: #f28e2c;">89</div>
          <div class="bar-name">Traffic Signals,<br>Lights, &amp;<br>Signs</div>
        </div>

   <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 155px; background-color: #9FE2BF;">1201</div>
          <div class="bar new" style="height: 22px; background-color: #f28e2c;">94</div>
          <div class="bar-name">Dirty<br>Streets</div>
        </div>

  <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 145px; background-color: #9FE2BF;">878</div>
          <div class="bar open" style="height: 49px; background-color: #e15759;">298</div>
          <div class="bar-name">Street &amp;<br>Curb<br>Repairs</div>
        </div>

   <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 120px; background-color: #9FE2BF;">755</div>
          <div class="bar new" style="height: 15px; background-color: #f28e2c;">63</div>
          <div class="bar-name">Water</div>
        </div>

  <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 127px; background-color: #9FE2BF;">801</div>
          <div class="bar pending" style="height: 10px; background-color: #b07aa1;">52</div>
          <div class="bar-name">Graffiti</div>
        </div>

   <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 77px; background-color: #9FE2BF;">477</div>
          <div class="bar new" style="height: 10px; background-color: #f28e2c;">41</div>
          <div class="bar-name">Trash &amp;<br>Recycling</div>
        </div>

  <div class="bar-group" style="text-align: center;">
          <div class="bar closed" style="height: 36px; background-color: #9FE2BF;">224</div>
          <div class="bar-name">Trees &amp;<br>Grass</div>
        </div>
      </div>

      <!-- X-axis Label -->
  <div style="margin-top: 10px; font-weight: bold; font-size: 13px; text-align: center;">
      SR Group
      </div>
    </div>
  </div>
</div>


<!-- Chart 3: Service Requests Created Over Time -->
<div class="bar-chart" aria-label="Service Requests Created Over Time">
  <div class="chart-title">Service Requests Created Over Time</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, Jan. 2024 - May. 2025</div>
  <div class="chart-legend">
    <div>SR Status:</div>
    <span style="background-color: #f28e2c;"></span> Open
    <span style="background-color: #8ed1fc;"></span> Closed
  </div>
  <div class="bar-container" style="justify-content: center; min-width: 600px;">
   <div style="display: flex; align-items: flex-end; max-width: 100%; overflow-x: auto;">
    <!-- Y-axis label -->
    <div style="writing-mode: vertical-rl; transform: rotate(180deg); font-weight: bold; font-size: 13px; margin-right: 12px; text-align: center; white-space: nowrap;">
      Number of SRs
    </div>
    <!-- Each month group -->
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 160px;">450</div>
      <div class="bar" style="background-color: #8ed1fc; height: 120px;">436</div>
      <div class="bar-name">January<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">308</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">288</div>
      <div class="bar-name">February<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 140px;">319</div>
      <div class="bar" style="background-color: #8ed1fc; height: 110px;">299</div>
      <div class="bar-name">March<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 150px;">391</div>
      <div class="bar" style="background-color: #8ed1fc; height: 130px;">371</div>
      <div class="bar-name">April<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 170px;">386</div>
      <div class="bar" style="background-color: #8ed1fc; height: 120px;">356</div>
      <div class="bar-name">May<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 160px;">324</div>
      <div class="bar" style="background-color: #8ed1fc; height: 110px;">295</div>
      <div class="bar-name">June<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 140px;">394</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">368</div>
      <div class="bar-name">July<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 150px;">579</div>
      <div class="bar" style="background-color: #8ed1fc; height: 130px;">508</div>
      <div class="bar-name">August<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">483</div>
      <div class="bar" style="background-color: #8ed1fc; height: 120px;">447</div>
      <div class="bar-name">September<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 170px;">400</div>
      <div class="bar" style="background-color: #8ed1fc; height: 110px;">364</div>
      <div class="bar-name">October<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 150px;">310</div>
      <div class="bar" style="background-color: #8ed1fc; height: 90px;">294</div>
      <div class="bar-name">November<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 140px;">322</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">284</div>
      <div class="bar-name">December<br>2024</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">407</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">316</div>
      <div class="bar-name">January<br>2025</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">386</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">354</div>
      <div class="bar-name">February<br>2025</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">377</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">337</div>
      <div class="bar-name">March<br>2025</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">355</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">302</div>
      <div class="bar-name">April<br>2025</div>
    </div>
    <div class="bar-group">
      <div class="bar" style="background-color: #f28e2c; height: 180px;">331</div>
      <div class="bar" style="background-color: #8ed1fc; height: 100px;">231</div>
      <div class="bar-name">May<br>2025</div>
    </div>
  </div>
</div>

