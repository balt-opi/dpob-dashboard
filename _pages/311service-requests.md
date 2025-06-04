---
layout: page
title: "311 Service Requests"
---

# Service Request Statistics

<b></b>
<b></b>

<!-- Stat Boxes -->
<div style="display: flex; gap: 16px; justify-content: center; align-items: stretch;">
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
  display: block;
  text-align: center;
}
.chart-title {
  text-align: center;
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 4px;
}
.chart-subtitle {
  text-align: center;
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
  gap: 10px;
}
.chart-legend span {
  display: inline-block;
  width: 12px;
  height: 12px;
  border-radius: 2px;
  margin-right: 4px;
}

/* Bar Area */
.bar-container {
  display: flex;
  align-items: flex-end;
  gap: 20px;
  overflow-x: auto;
  padding-bottom: 30px;
}
.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
}

/* Bar and Labels */
.bar {
  width: 30px;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  font-size: 12px;
  font-weight: bold;
  color: #000;
  border-radius: 4px 4px 0 0;
  padding: 2px;
  line-height: 1;
}
.bar-name {
  font-size: 11px;
  text-align: center;
  max-width: 70px;
  display: flex;
  flex-direction: column;
  line-height: 1.2;
  gap: 2px;
  height: 39px;
  justify-content: center;
  align-items: center;
  margin-top: 9px;
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
<div class="bar-chart" aria-label="Average Days to Close Service Requests vs. SLA by Group" style="max-width: 900px; margin: 0 auto; font-family: Arial, sans-serif;">

  <div class="chart-title" style="text-align: center; font-weight: bold; font-size: 18px; margin-bottom: 4px;">
    Average Days to Close Service Requests vs. SLA by Group
  </div>
  <div class="chart-subtitle" style="text-align: center; font-size: 12px; color: #666; margin-bottom: 12px;">
    Source: CitiStat 311 Service Requests, 2024 - 2025
  </div>

  <div class="chart-legend" style="display: flex; justify-content: center; align-items: center; gap: 16px; font-size: 13px; margin-bottom: 20px;">
    <div><span style="display: inline-block; width: 15px; height: 15px; background-color: #abb8c3; margin-right: 6px; vertical-align: middle;"></span>Average of Days to Close</div>
    <div><span style="display: inline-block; width: 15px; height: 15px; background-color: #8ed1fc; margin-right: 6px; vertical-align: middle;"></span>Average of SLA</div>
  </div>

  <div style="display: flex; align-items: flex-end; overflow-x: auto; padding-bottom: 30px;">

  <!-- Y-axis label -->
  <div style="writing-mode: vertical-rl; transform: rotate(180deg); font-weight: bold; font-size: 13px; margin-right: 16px; white-space: nowrap; min-width: 20px; text-align: center;">
      Average Days to Close
    </div>

  <div class="bar-container" style="display: flex; gap: 24px; min-width: 600px;">

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 90px;">
        <div class="bar sla-bar" style="height: 140px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          19
        </div>
        <div class="bar close-bar" style="height: 300px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          41
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Trees &amp;<br>Grass
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 110px;">
        <div class="bar sla-bar" style="height: 154px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          21
        </div>
        <div class="bar close-bar" style="height: 154px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          21
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Street &amp;<br>Curb Repairs
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 60px;">
        <div class="bar sla-bar" style="height: 22px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          3
        </div>
        <div class="bar close-bar" style="height: 140px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          19
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center;">
          Water
        </div>
      </div>

   <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 100px;">
        <div class="bar sla-bar" style="height: 52px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          7.6
        </div>
        <div class="bar close-bar" style="height: 104px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          14
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Traffic Signals,<br>Lights, &amp;<br>Signs
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 70px;">
        <div class="bar sla-bar" style="height: 45px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          6
        </div>
        <div class="bar close-bar" style="height: 67px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          9
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Dirty<br>Streets
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 90px;">
        <div class="bar sla-bar" style="height: 22px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          3
        </div>
        <div class="bar close-bar" style="height: 60px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          8
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Trash &amp;<br>Recycling
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 70px;">
        <div class="bar sla-bar" style="height: 22px; background-color: #8ed1fc; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          3
        </div>
        <div class="bar close-bar" style="height: 82px; background-color: #abb8c3; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          11
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Graffiti
        </div>
      </div>

   </div> <!-- end bar-container -->

  </div> <!-- end flex container -->

  <!-- X-axis label -->
  <div style="text-align: center; font-weight: bold; font-size: 13px; margin-top: 16px; white-space: nowrap;">
    SR Group
  </div>

</div>


<!-- Chart 2: Service Requests by Group and Status -->

<style>
.bar-chart {
  width: 100%;
  max-width: 900px;
  margin: 40px auto;
  padding: 20px;
  font-family: sans-serif;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.bar-container {
  display: flex;
  align-items: flex-end;
  justify-content: center;
  gap: 20px;
  overflow-x: auto;
  padding-bottom: 30px;
}
</style>

<!-- Chart 2: Service Requests by Group and Status -->
<div class="bar-chart" style="max-width: 900px; margin: 0 auto; font-family: Arial, sans-serif;">

  <div class="chart-title" style="text-align: center; font-weight: bold; font-size: 18px; margin-bottom: 4px;">
    Service Requests by Groups and Status
  </div>
  <div class="chart-subtitle" style="text-align: center; font-size: 12px; color: #666; margin-bottom: 12px;">
    Source: CitiStat 311 Service Requests, 2024 - 2025
  </div>

  <div class="chart-legend" style="display: flex; justify-content: center; align-items: center; gap: 12px; font-size: 13px; margin-bottom: 20px;">
    <div style="font-weight: bold;">SR Status:</div>
    <div><span style="display: inline-block; width: 15px; height: 15px; background-color: #9FE2BF; margin-right: 6px; vertical-align: middle;"></span>Closed</div>
    <div><span style="display: inline-block; width: 15px; height: 15px; background-color: #f28e2c; margin-right: 6px; vertical-align: middle;"></span>New</div>
    <div><span style="display: inline-block; width: 15px; height: 15px; background-color: #e15759; margin-right: 6px; vertical-align: middle;"></span>Open</div>
    <div><span style="display: inline-block; width: 15px; height: 15px; background-color: #b07aa1; margin-right: 6px; vertical-align: middle;"></span>Pending</div>
  </div>

  <div style="display: flex; align-items: flex-end; overflow-x: auto; padding-bottom: 30px;">

  <!-- Y-axis label -->
  <div style="writing-mode: vertical-rl; transform: rotate(180deg); font-weight: bold; font-size: 13px; margin-right: 16px; white-space: nowrap; min-width: 20px; text-align: center;">
      Number of SRs
    </div>

  <div class="bar-container" style="display: flex; gap: 24px;">

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 90px;">
        <div class="bar closed" style="height: 300px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          1568
        </div>
        <div class="bar new" style="height: 32px; background-color: #f28e2c; width: 32px; border-radius: 4px 4px 0 0; display: flex; justify-content: center; align-items: flex-end; color: black; font-weight: bold;">
          89
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Traffic Signals,<br>Lights, &<br>Signs
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 80px;">
        <div class="bar closed" style="height: 232px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          1201
        </div>
        <div class="bar new" style="height: 34px; background-color: #f28e2c; width: 32px; border-radius: 4px 4px 0 0; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          94
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Dirty<br>Streets
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 90px;">
        <div class="bar closed" style="height: 217px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          878
        </div>
        <div class="bar open" style="height: 72px; background-color: #e15759; width: 32px; border-radius: 4px 4px 0 0; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          298
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Street &<br>Curb<br>Repairs
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 60px;">
        <div class="bar closed" style="height: 180px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          755
        </div>
        <div class="bar new" style="height: 23px; background-color: #f28e2c; width: 32px; border-radius: 4px 4px 0 0; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          63
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center;">
          Water
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 60px;">
        <div class="bar closed" style="height: 190px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          801
        </div>
        <div class="bar pending" style="height: 15px; background-color: #b07aa1; width: 32px; border-radius: 4px 4px 0 0; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          52
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center;">
          Graffiti
        </div>
      </div>

  <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 80px;">
        <div class="bar closed" style="height: 115px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          477
        </div>
        <div class="bar new" style="height: 15px; background-color: #f28e2c; width: 32px; border-radius: 4px 4px 0 0; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          41
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center; line-height: 1.2;">
          Trash &<br>Recycling
        </div>
      </div>

   <div class="bar-group" style="display: flex; flex-direction: column; align-items: center; min-width: 60px;">
        <div class="bar closed" style="height: 54px; background-color: #9FE2BF; width: 32px; border-radius: 4px; margin-bottom: 4px; color: black; font-weight: bold; display: flex; justify-content: center; align-items: flex-end;">
          224
        </div>
        <div class="bar-name" style="margin-top: 8px; font-size: 13px; text-align: center;">
          Trees &<br>Grass
        </div>
      </div>

   </div> <!-- end bar-container -->

  </div> <!-- end flex container -->

  <!-- X-axis Label -->
  <div style="text-align: center; font-weight: bold; font-size: 13px; margin-top: 16px;">
    SR Group
  </div>

</div>


<!-- Chart 3: Service Requests Created Over Time -->

<div class="bar-chart">
  <div class="chart-title">Service Requests Created Over Time</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2024 - 2025</div>
  <div class="chart-legend" style="margin-bottom: 12px;">
    <div style="font-weight: bold; margin-right: 10px; display: inline-block;">SR Status:</div>
    <span style="background-color: #f28e2c; display: inline-block; width: 15px; height: 15px; margin-right: 5px; vertical-align: middle;"></span> Open
    <span style="background-color: #8ed1fc; display: inline-block; width: 15px; height: 15px; margin-left: 15px; margin-right: 5px; vertical-align: middle;"></span> Closed
  </div>

<div style="display: flex; flex-wrap: wrap; align-items: flex-end; justify-content: center; width: 100%;">
    <!-- Y-axis label -->
    <div style="writing-mode: vertical-rl; transform: rotate(180deg); font-weight: bold; font-size: 13px; margin-right: 12px; text-align: center; white-space: nowrap;">
      Number of SRs
    </div>
     
  <div class="bar-container">
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
      <div class="bar-name">September 2024</div>
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
