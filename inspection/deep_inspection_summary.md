# Deep Inspection Summary for `frontend.zip`

- Frontend root served as: `frontend/`
- Total items: 19  (files: 16, folders: 3)

## File Tree

```
frontend_zip_unzipped/
    manifest.csv
    frontend/
        index.html
        script.js
        style.css
        fonts/
            ppneuemontreal-bold.otf
            ppneuemontreal-book.otf
            ppneuemontreal-italic.otf
            ppneuemontreal-medium.otf
            ppneuemontreal-semibolditalic.otf
            ppneuemontreal-thin.otf
        images/
            BG.png
            StartB.png
            favicon.jpg
            favicon.png
            gauge.png
            needle.png
            stats-panel.png
```

## Code Scans (selected matches)

### frontend/index.html
- http_urls:
  - `https://fonts.googleapis.com/css2?family=Share+Tech+Mono&display=swap`

<details><summary>Head preview</summary>

```
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>5G Speed Test</title>
  <link rel="icon" type="image/gif" href="images/favicon.png">
  <link rel="stylesheet" href="style.css" />
  <link href="https://fonts.googleapis.com/css2?family=Share+Tech+Mono&display=swap" rel="stylesheet">
</head>
<body>
  <div class="stats-overlay" id="statsOverlay">
  <div class="stats-content" id="statsContent"></div>
</div>

  <div class="animated-bg"></div>
  <canvas id="galaxy-canvas"></canvas>

  <div class="gauge-container">
    <img src="images/gauge.png" alt="Gauge" class="gauge-base" />
    <img src="images/needle.png" class="gauge-needle" id="needle" />
   <!---- <img src="images/Dents.png" class="gauge-dents" id="gauge-dents" /> -->
    <div id="speedLive"></div>
  <button id="startButton" class="start-button">Test the Future</button>

   <!---- <button id="startButton">Test the future</button>-->
  </div>

<div class="stats-panel-wrapper">
  <img src="images/stats-panel.png" alt="Performance Stats" class="stats-panel-img" />
```
</details>

### frontend/script.js
- fetch_calls:
  - `fetch("http://localhost:3000/speedtest")`
- http_urls:
  - `http://localhost:3000/speedtest`

<details><summary>Head preview</summary>

```
const maxSpeed = 2000;
const tickCount = 11;
const startAngle = 225;
const endAngle = 495;
const totalAngle = endAngle - startAngle;

  

const gaugeSize = 500;
const centerX = gaugeSize / 2;
const centerY = gaugeSize / 2;
const radius = 200;

const scaleContainer = document.createElement("div");
scaleContainer.className = "gauge-scale";
document.querySelector(".gauge-container").appendChild(scaleContainer);
scaleContainer.innerHTML = "";

for (let i = 0; i < tickCount; i++) {
  const mbps = i * (maxSpeed / (tickCount - 1));
  const angleDeg = startAngle + (mbps / maxSpeed) * totalAngle;
  const rad = (angleDeg - 90) * (Math.PI / 180);
  const x = centerX + radius * Math.cos(rad);
  const y = centerY + radius * Math.sin(rad);

  const tick = document.createElement("div");
  tick.className = "tick";
  tick.textContent = `${mbps.toFixed(0)}`;
  tick.style.position = "absolute";
  tick.style.left = `${(x / gaugeSize) * 100}%`;
```
</details>
