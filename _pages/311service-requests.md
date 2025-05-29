---
layout: page
title: "311 Service Requests"
---

<style>
.chart-block {
  margin-bottom: 60px;
  font-family: sans-serif;
  color: #333;
  max-width: 800px;
}

.chart-title {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 5px;
}

.chart-subtitle {
  font-size: 14px;
  color: #555;
  margin-bottom: 20px;
}

.bar-row {
  display: flex;
  align-items: center;
  margin-bottom: 12px;
}

.label {
  width: 180px;
  font-size: 14px;
  flex-shrink: 0;
}

.bars {
  flex-grow: 1;
  height: 24px;
  position: relative;
  display: flex;
  align-items: center;
}

.bar {
  height: 100%;
  margin-right: 5px;
}

.sla {
  background-color: #a0cbe8;
  z-index: 1;
  position: absolute;
  height: 12px;
  top: 6px;
}

.close {
  background-color: #4e79a7;
  z-index: 2;
}

.closed { background-color: #4e79a7; }
.new { background-color: #59a14f; }
.open { background-color: #f28e2c; }
.pending { background-color: #b07aa1; }

.value-label {
  font-size: 12px;
  margin-left: 8px;
  white-space: nowrap;
}

.legend {
  font-size: 12px;
  margin-top: 10px;
}
.legend span {
  display: inline-block;
  width: 12px;
  height: 12px;
  margin-right: 4px;
  vertical-align: middle;
}
</style>

<div class="chart-block">
  <div class="chart-title">Average Days to Close Service Requests vs. SLA by Group</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>

  <!-- Each bar-row is a group -->
  <div class="bar-row">
    <div class="label">Trees & Grass</div>
    <div class="bars">
      <div class="sla" style="width: 19%;"></div>
      <div class="bar close" style="width: 41%;"></div>
    </div>
    <div class="value-label">41 days</div>
  </div>

  <div class="bar-row">
    <div class="label">Street & Curb Repairs</div>
    <div class="bars">
      <div class="sla" style="width: 21%;"></div>
      <div class="bar close" style="width: 21%;"></div>
    </div>
    <div class="value-label">21 days</div>
  </div>

  <div class="bar-row">
    <div class="label">Water</div>
    <div class="bars">
      <div class="sla" style="width: 3%;"></div>
      <div class="bar close" style="width: 19%;"></div>
    </div>
    <div class="value-label">19 days</div>
  </div>

  <div class="bar-row">
    <div class="label">Traffic Signals, Lights, Signs</div>
    <div class="bars">
      <div class="sla" style="width: 7.6%;"></div>
      <div class="bar close" style="width: 14%;"></div>
    </div>
    <div class="value-label">14 days</div>
  </div>

  <div class="bar-row">
    <div class="label">Dirty Streets</div>
    <div class="bars">
      <div class="sla" style="width: 6%;"></div>
      <div class="bar close" style="width: 9%;"></div>
    </div>
    <div class="value-label">9 days</div>
  </div>

  <div class="bar-row">
    <div class="label">Trash & Recycling</div>
    <div class="bars">
      <div class="sla" style="width: 4%;"></div>
      <div class="bar close" style="width: 8%;"></div>
    </div>
    <div class="value-label">8 days</div>
  </div>

  <div class="bar-row">
    <div class="label">Graffiti</div>
    <div class="bars">
      <div class="sla" style="width: 3%;"></div>
      <div class="bar close" style="width: 11%;"></div>
    </div>
    <div class="value-label">11 days</div>
  </div>

  <div class="legend">
    <span style="background-color: #4e79a7;"></span> Average Days to Close
    &nbsp;&nbsp;
    <span style="background-color: #a0cbe8;"></span> SLA
  </div>
</div>

<div class="chart-block">
  <div class="chart-title">Service Requests by Groups and Status</div>
  <div class="chart-subtitle">Source: CitiStat 311 Service Requests, 2025</div>

  <div class="bar-row">
    <div class="label">Traffic Signals, Lights, Signs</div>
    <div class="bars">
      <div class="bar closed" style="width: 78%;"></div>
      <div class="bar open" style="width: 8%;"></div>
    </div>
    <div class="value-label">1,733 SRs</div>
  </div>

  <div class="bar-row">
    <div class="label">Dirty Streets</div>
    <div class="bars">
      <div class="bar closed" style="width: 61%;"></div>
    </div>
    <div class="value-label">1,224 SRs</div>
  </div>

  <div class="bar-row">
    <div class="label">Street & Curb Repairs</div>
    <div class="bars">
      <div class="bar closed" style="width: 44%;"></div>
      <div class="bar open" style="width: 15%;"></div>
    </div>
    <div class="value-label">1,179 SRs</div>
  </div>

  <div class="bar-row">
    <div class="label">Water</div>
    <div class="bars">
      <div class="bar closed" style="width: 37%;"></div>
    </div>
    <div class="value-label">873 SRs</div>
  </div>

  <div class="bar-row">
    <div class="label">Graffiti</div>
    <div class="bars">
      <div class="bar closed" style="width: 40%;"></div>
    </div>
    <div class="value-label">805 SRs</div>
  </div>

  <div class="bar-row">
    <div class="label">Trash & Recycling</div>
    <div class="bars">
      <div class="bar closed" style="width: 24%;"></div>
    </div>
    <div class="value-label">484 SRs</div>
  </div>

  <div class="bar-row">
    <div class="label">Trees & Grass</div>
    <div class="bars">
      <div class="bar closed" style="width: 11%;"></div>
    </div>
    <div class="value-label">224 SRs</div>
  </div>

  <div class="legend">
    <span style="background-color: #4e79a7;"></span> Closed
    &nbsp;&nbsp;
    <span style="background-color: #f28e2c;"></span> Open
  </div>
</div>
