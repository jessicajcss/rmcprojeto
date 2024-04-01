---
title: "Rede PurpleAir"
subtitle: "https://www2.purpleair.com/"
excerpt: "Sensores de baixo custo PurpleAir instalados em áreas potencialmente receptoras de material particulado oriundo de atividades de mineração de calcário (considerando como critério a direção dos ventos e a posição das fontes), mas também que representem o risco de exposição da população residente."
date: 2023-11-01
author: "Lab-Air"
draft: false
images:
series:
tags: 
categories:
layout: single
---

<script src="{{< blogdown/postref >}}index_files/htmlwidgets/htmlwidgets.js"></script>
<script src="{{< blogdown/postref >}}index_files/jquery/jquery-3.6.0.min.js"></script>
<link href="{{< blogdown/postref >}}index_files/leaflet/leaflet.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/leaflet/leaflet.js"></script>
<link href="{{< blogdown/postref >}}index_files/leafletfix/leafletfix.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/proj4/proj4.min.js"></script>
<script src="{{< blogdown/postref >}}index_files/Proj4Leaflet/proj4leaflet.js"></script>
<link href="{{< blogdown/postref >}}index_files/rstudio_leaflet/rstudio_leaflet.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/leaflet-binding/leaflet.js"></script>

# Rede de Monitoramento na RMC

## Área de estudo

<div class="leaflet html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-1" style="width:672px;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"https://openstreetmap.org/copyright/\">OpenStreetMap<\/a>,  <a href=\"https://opendatacommons.org/licenses/odbl/\">ODbL<\/a>"}]}],"setView":[[-25.35,-49.3],10,[]]},"evals":[],"jsHooks":[]}</script>

## Mapa meteorológico

<iframe src="https://embed.windy.com/embed2.html?lat=-25.380&amp;lon=-49.285&amp;detailLat=-25.262&amp;detailLon=-49.287&amp;width=650&amp;height=450&amp;zoom=10&amp;level=surface&amp;overlay=wind&amp;product=ecmwf&amp;menu=&amp;message=&amp;marker=&amp;calendar=now&amp;pressure=&amp;type=map&amp;location=coordinates&amp;detail=&amp;metricWind=m%2Fs&amp;metricTemp=%C2%B0C&amp;radarRange=-1" width="672" height="400px" data-external="1">
</iframe>

## PurpleAir

O sensor PurpleAir PA-II-SD utiliza um contador de partículas (PMS5003) que usa dois lasers para detectar partículas com diâmetros de 0,3 a 10 µm a partir de sua refletividade, cujo valor é convertido em concentração mássica de MP<sub>1,0</sub>, MP<sub>2,5</sub> e MP<sub>10</sub> em μg m<sup>-3</sup> . Esses sensores também registram dados de umidade e temperatura e serão instalados em pares para monitoramento interno/externo à prédios residenciais ou de prestadores de serviço a fim de estimar a potencial exposição diária tendo em consideração o tempo médio que o indivíduo permanece exposto em cada um dos ambientes.
Os dados aqui apresentados são brutos, i.e., exigem correção considerando condições locais de umidade e temperatura

``` r
knitr::include_url("https://map.purpleair.com/1/mPM25/a10/p604800/cC0#9.28/-25.3476/-49.293")
```

<iframe src="https://map.purpleair.com/1/mPM25/a10/p604800/cC0#9.28/-25.3476/-49.293" width="672" height="400px" data-external="1">
</iframe>
