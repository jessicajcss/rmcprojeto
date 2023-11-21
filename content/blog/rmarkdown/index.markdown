---
title: "An Rmarkdown post"
subtitle: ""
excerpt: "testing the excerpt field"
date: 2020-12-30
author: "Alison Hill"
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

## Rede de Monitoramento na RMC

# Área de estudo

<div class="leaflet html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-1" style="width:672px;height:480px;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"https://openstreetmap.org/copyright/\">OpenStreetMap<\/a>,  <a href=\"https://opendatacommons.org/licenses/odbl/\">ODbL<\/a>"}]}],"setView":[[-25.35,-49.3],10,[]]},"evals":[],"jsHooks":[]}</script>

# Mapa meteorológico

``` r
knitr::include_url("https://www.windy.com/?-25.332,-49.294,11")
```

<iframe src="https://www.windy.com/?-25.332,-49.294,11" width="672" height="400px" data-external="1">
</iframe>

# PurpleAir

``` r
knitr::include_url("https://map.purpleair.com/1/mPM25/a10/p604800/cC4#9.73/-25.3543/-49.2743")
```

<iframe src="https://map.purpleair.com/1/mPM25/a10/p604800/cC4#9.73/-25.3543/-49.2743" width="672" height="400px" data-external="1">
</iframe>

# Sensores internos - Rio Branco do Sul

``` r
knitr::include_url("https://map.purpleair.com/1/o/mPM25/a10/p604800/cC4#13.23/-25.18449/-49.31042")
```

<iframe src="https://map.purpleair.com/1/o/mPM25/a10/p604800/cC4#13.23/-25.18449/-49.31042" width="672" height="400px" data-external="1">
</iframe>

``` r
with(airquality, plot(Ozone ~ Temp))
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-4-1.png" width="672" />

``` r
mlev <- levels(with(airquality, as.factor(Month)))
with(airquality, plot(Ozone ~ Temp, 
                      pch = as.numeric(mlev), 
                      col = mlev))
```

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-5-1.png" width="672" />
