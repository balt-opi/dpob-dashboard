# Service Request Statistics

<div style="display: flex; gap: 16px; justify-content: center; align-items: stretch; margin-bottom: 40px;">
  <!-- Box 1 -->
  <div style="background-color: #121f3f; padding: 10px; border-radius: 8px; width: 250px; text-align: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <div style="color: #f1c232; font-weight: bold; font-size: 16px;">Average Days to Close Service Requests</div>
    <div style="color: #f1c232; font-weight: bold; font-size: 28px;">12.40</div>
  </div> 

  <!-- Box 2 -->
  <div style="background-color: #121f3f; padding: 10px; border-radius: 8px; width: 250px; text-align: center; box-shadow: 0 2px 4px rgba(0,0,0,0.1);">
    <div style="color: #f1c232; font-weight: bold; font-size: 16px;">Number of Overdue Service Requests</div>
    <div style="color: #f1c232; font-weight: bold; font-size: 28px;">1273</div>
  </div>
</div>

<!-- Chart 1: Average Days to Close vs SLA -->
<div class="bar-chart">
  <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>
  <div class="chart-legend">
    <span style="background-color: #8ed1fc;"></span> SLA &nbsp;&nbsp;
    <span style="background-color: #abb8c3;"></span> Days to Close
  </div>
  <div class="bar-container">
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 76px;">19</div>
      <div class="bar close-bar" style="height: 164px;">41</div>
      <div class="bar-name">Trees & Grass</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 84px;">21</div>
      <div class="bar close-bar" style="height: 84px;">21</div>
      <div class="bar-name">Street & Curb Repairs</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar close-bar" style="height: 76px;">19</div>
      <div class="bar-name">Water</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 28px;">7.6</div>
      <div class="bar close-bar" style="height: 56px;">14</div>
      <div class="bar-name">Traffic Signals, Lights, Signs</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 24px;">6</div>
      <div class="bar close-bar" style="height: 36px;">9</div>
      <div class="bar-name">Dirty Streets</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar close-bar" style="height: 32px;">8</div>
      <div class="bar-name">Trash & Recycling</div>
    </div>
    <div class="bar-group">
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar close-bar" style="height: 44px;">11</div>
      <div class="bar-name">Graffiti</div>
    </div>
  </div>
</div>

<!-- Chart 2: Service Requests by Group and Status -->
<div class="bar-chart">
  <div class="chart-title">Service Requests by Groups and Status</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>
  <div class="chart-legend">
    <span style="background-color: #9FE2BF;"></span> Closed &nbsp;&nbsp;
    <span style="background-color: #f28e2c;"></span> New &nbsp;&nbsp;
    <span style="background-color: #e15759;"></span> Open &nbsp;&nbsp;
    <span style="background-color: #b07aa1;"></span> Pending
  </div>
  <div class="bar-container">
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 200px;">1568</div>
      <div class="bar-segment new" style="height: 21px;">89</div>
      <div class="bar-name">Traffic Signals, Lights, Signs</div>
    </div>
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 155px;">1201</div>
      <div class="bar-segment new" style="height: 22px;">94</div>
      <div class="bar-name">Dirty Streets</div>
    </div>
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 145px;">878</div>
      <div class="bar-segment open" style="height: 49px;">298</div>
      <div class="bar-name">Street & Curb Repairs</div>
    </div>
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 120px;">755</div>
      <div class="bar-segment new" style="height: 15px;">63</div>
      <div class="bar-name">Water</div>
    </div>
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 127px;">801</div>
      <div class="bar-segment pending" style="height: 10px;">52</div>
      <div class="bar-name">Graffiti</div>
    </div>
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 77px;">477</div>
      <div class="bar-segment new" style="height: 10px;">41</div>
      <div class="bar-name">Trash & Recycling</div>
    </div>
    <div class="bar-group">
      <div class="bar-segment closed" style="height: 36px;">224</div>
      <div class="bar-name">Trees & Grass</div>
    </div>
  </div>
</div>

<!-- Styles -->
<style>
.bar-chart {
  font-family: Arial, sans-serif;
  width: 1000px;
  margin: 40px auto;
}

.chart-title {
  text-align: center;
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 4px;
}

.chart-subtitle {
  text-align: center;
  font-size: 12px;
  margin-bottom: 20px;
}

.chart-legend {
  text-align: center;
  font-size: 12px;
  margin-bottom: 20px;
}
.chart-legend span {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin-right: 5px;
  vertical-align: middle;
  border-radius: 2px;
}

.bar-container {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  height: 260px;
  gap: 12px;
  flex-wrap: wrap;
}

.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100px;
  margin: 0 6px;
}

.bar {
  width: 30px;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  color: #000;
  font-size: 11px;
  font-weight: bold;
  margin-bottom: 2px;
}

.sla-bar { background-color: #8ed1fc; }
.close-bar { background-color: #abb8c3; }

.bar-name {
  width: 100%;
  font-size: 11px;
  text-align: center;
  margin-top: 4px;
}

.bar-segment {
  width: 30px;
  color: black;
  font-size: 10px;
  font-weight: bold; 
  text-align: center;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  border-top: 1px solid #fff;
  box-sizing: border-box;
  margin-bottom: 2px;
}

.closed { background-color: #9FE2BF; }
.new { background-color: #f28e2c; }
.open { background-color: #e15759; }
.pending { background-color: #b07aa1; }
</style>
