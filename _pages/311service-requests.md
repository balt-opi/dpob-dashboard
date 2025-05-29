---
layout: page
title: "311 Service Requests"
---

<style>
.bar-chart {
  font-family: Arial, sans-serif;
  width: 750px;
  margin: 20px auto;
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
  color: #555;
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

.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 90px;
  margin: 0 10px;
}

.bar-container {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  height: 240px;
  gap: 12px;
}

.bar {
  width: 30px;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  color: #000000;
  font-size: 11px;
  font-weight: bold;
}

.close-bar {
  background-color: #abb8c3;
}
.sla-bar {
  background-color: #8ed1fc;
}

.bar-name {
  width: 90px;
  font-size: 11px;
  text-align: center;
}
</style>

<div class="bar-chart">
  <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>
  <div class="chart-legend">
    <span style="background-color: #abb8c3;"></span> Average of Days to Close &nbsp;&nbsp;
    <span style="background-color: #8ed1fc;"></span> Average of SLA
  </div>
  <div class="bar-container">
    <div class="bar-group">
      <div class="bar close-bar" style="height: 164px;">41</div>
      <div class="bar sla-bar" style="height: 76px;">19</div>
      <div class="bar-name">Trees & Grass</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 84px;">21</div>
      <div class="bar sla-bar" style="height: 84px;">21</div>
      <div class="bar-name">Street & Curb Repairs</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 76px;">19</div>
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar-name">Water</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 56px;">14</div>
      <div class="bar sla-bar" style="height: 28px;">7.6</div>
      <div class="bar-name">Traffic Signals, Lights, Signs</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 36px;">9</div>
      <div class="bar sla-bar" style="height: 24px;">6</div>
      <div class="bar-name">Dirty Streets</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 32px;">8</div>
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar-name">Trash & Recycling</div>
    </div>
    <div class="bar-group">
      <div class="bar close-bar" style="height: 44px;">11</div>
      <div class="bar sla-bar" style="height: 12px;">3</div>
      <div class="bar-name">Graffiti</div>
    </div>
  </div>
</div>



<style>
.bar-chart {
  font-family: Arial, sans-serif;
  width: 700px;
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
  color: #555;
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
  height: 240px;
  gap: 8px;
}

.bar-group {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 90px;
  margin: 0 6px;
}

.bar-segment {
  width: 20px;
  color: black;
  font-size: 10px;
  text-align: center;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  border-top: 1px solid #fff;
  box-sizing: border-box;
}

.closed { background-color: #abb8c3; }
.new { background-color: #f28e2c; }
.open { background-color: #e15759; }
.pending { background-color: #b07aa1; }

.bar-name {
  width: 90px;
  font-size: 11px;
  text-align: center;
  margin-top: 5px;
}
</style>

<div class="bar-chart">
  <div class="chart-title">Service Requests by Groups and Status</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>
  <div class="chart-legend">
    <span style="background-color: #abb8c3;"></span> Closed &nbsp;&nbsp;
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
