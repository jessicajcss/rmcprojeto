---
title: "Rede de Monitoramento em Rio Branco do Sul"
subtitle: "https://www2.purpleair.com/"
excerpt: "Dados de monitoramento de particulas e gases e dados meteorológicos em tempo real fornecidos pela Estação Meteorológica da Prefeitura Municipal de RBS."
date: 2023-11-20
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

## Área de estudo (RMC)

    ## Warning: package 'leaflet' was built under R version 4.3.2

    ## Warning: package 'leaflet.extras' was built under R version 4.3.2

<div class="leaflet html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-1" style="width:672px;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"https://openstreetmap.org/copyright/\">OpenStreetMap<\/a>,  <a href=\"https://opendatacommons.org/licenses/odbl/\">ODbL<\/a>"}]},{"method":"addPopups","args":[-25.193953,-49.311732,"<b>Estação meteorológica<\/b>",null,null,{"maxWidth":300,"minWidth":50,"autoPan":true,"keepInView":false,"closeButton":true,"className":""}]}],"setView":[[-25.19,-49.32],13.3,[]],"limits":{"lat":[-25.193953,-25.193953],"lng":[-49.311732,-49.311732]}},"evals":[],"jsHooks":[]}</script>

# Rede de Monitoramento em Rio Branco do Sul

## Estação Meteorológica - Rio Branco do Sul

<script defer src="https://wdg.plugfield.com.br/device/plugfield-widget-v1-sd-x.js"></script>

<plugfield-widget-v1 data-device="3118" data-key="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjIxNTc0LCJhaWQiOjE1OTE5LCJvcmlnaW4iOiJybWNxdWFsaWRhZGVkb2FyLm5ldGxpZnkuYXBwIiwiaWF0IjoxNzAwNTE1NzI1fQ.BmRjlaRlYZM3zvlipj-k50pOJMrOaTCUAYABTWRPizE"></plugfield-widget-v1>

## Sensores internos - Rio Branco do Sul

``` r
knitr::include_url("https://map.purpleair.com/1/o/mPM25/a10/p604800/cC4#13.23/-25.19/-49.31042")
```

<iframe src="https://map.purpleair.com/1/o/mPM25/a10/p604800/cC4#13.23/-25.19/-49.31042" width="672" height="400px" data-external="1">
</iframe>

*Verifique a seguinte seleção (inside) na caixa suspensa*
![](images/interno.png)

## Sensores externos - Rio Branco do Sul

``` r
knitr::include_url("https://map.purpleair.com/1/m/i/mPM25/a0/p604800/cC4#13.53/-25.19077/-49.31164")
```

<iframe src="https://map.purpleair.com/1/m/i/mPM25/a0/p604800/cC4#13.53/-25.19077/-49.31164" width="672" height="400px" data-external="1">
</iframe>

*Verifique a seguinte seleção (outside) na caixa suspensa*
![](images/externo.png)
