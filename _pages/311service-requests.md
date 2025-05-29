---
layout: page
title:  "311 Service Requests"
---

<style>
.chart-container {
  display: flex;
  flex-direction: column;
  gap: 40px;
  font-family: sans-serif;
  color: #333;
}

.bar-chart {
  width: 100%;
  max-width: 800px;
}

.chart-title {
  font-weight: bold;
  font-size: 20px;
  margin-bottom: 10px;
}

.chart-subtitle {
  font-size: 14px;
  color: #666;
  margin-bottom: 20px;
}

.bar-group {
  display: flex;
  align-items: center;
  margin: 6px 0;
}

.bar-label {
  width: 150px;
  font-size: 14px;
}

.bar {
  height: 20px;
  position: relative;
  margin-right: 10px;
}

.bar-close {
  background-color: #4e79a7;
}

.bar-sla {
  background-color: #a0cbe8;
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
}

.bar-num {
  font-size: 12px;
  color: #444;
  margin-left: 4px;
}

.legend {
  margin-top: 10px;
  font-size: 12px;
}
.legend span {
  display: inline-block;
  width: 12px;
  height: 12px;
  margin-right: 4px;
  vertical-align: middle;
}
</style>

<div class="chart-container">

  <div class="bar-chart">
    <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
    <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>

    {% assign groups = "Trees & Grass,Street & Curb Repairs,Water,Traffic Signals,Dirty Streets,Trash & Recycling,Graffiti" | split: "," %}
    {% assign close_days = "41,21,19,14,9,8,11" | split: "," %}
    {% assign sla_days = "19,21,3,7.6,6,4,3" | split: "," %}

    {% for i in (0..6) %}
    <div class="bar-group">
      <div class="bar-label">{{ groups[i] }}</div>
      <div class="bar" style="width: {{ sla_days[i] | times: 6 }}px;" class="bar-sla"></div>
      <div class="bar bar-close" style="width: {{ close_days[i] | times: 6 }}px;"></div>
      <span class="bar-num">{{ close_days[i] }} days</span>
    </div>
    {% endfor %}

    <div class="legend">
      <span style="background-color: #4e79a7;"></span> Average Days to Close
      &nbsp;&nbsp;
      <span style="background-color: #a0cbe8;"></span> SLA
    </div>
  </div>

  <div class="bar-chart">
    <div class="chart-title">Service Requests by Groups and Status</div>
    <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>

    {% assign groups2 = "Traffic Signals,Dirty Streets,Street & Curb Repairs,Water,Graffiti,Trash & Recycling,Trees & Grass" | split: "," %}
    {% assign closed = "1568,1201,878,755,801,477,224" | split: "," %}
    {% assign new = "0,0,0,0,0,0,0" | split: "," %}
    {% assign open = "165,0,298,0,0,0,0" | split: "," %}
    {% assign pending = "0,0,0,0,0,0,0" | split: "," %}

    {% for i in (0..6) %}
    <div class="bar-group">
      <div class="bar-label">{{ groups2[i] }}</div>
      <div class="bar" style="width: {{ closed[i] | divided_by: 10 }}px; background-color: #4e79a7;"></div>
      {% if open[i] != "0" %}
      <div class="bar" style="width: {{ open[i] | divided_by: 10 }}px; background-color: #f28e2c;"></div>
      {% endif %}
      <span class="bar-num">{{ closed[i] | plus: open[i] | plus: new[i] | plus: pending[i] }} SRs</span>
    </div>
    {% endfor %}

    <div class="legend">
      <span style="background-color: #4e79a7;"></span> Closed
      &nbsp;&nbsp;
      <span style="background-color: #f28e2c;"></span> Open
    </div>
  </div>

</div>
