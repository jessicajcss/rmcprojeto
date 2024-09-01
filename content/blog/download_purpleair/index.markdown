---
title: "Download PurpleAir data"
subtitle: Passo a passo para baixar dados do PurpleAir usando o R
excerpt: ""
date: 2023-11-20
author: "Jéssica C. dos Santos-Silva"
draft: false
# layout options: single, single-sidebar
layout: single
categories:
---

# Download PurpleAir data  

## Função getPurpleairApiHistory
Dados são baixados usando a função [getPurpleairApiHistory](https://github.com/willianflores/getPurpleairApiHistory) elaborada pelo Professor Willian Flores da Universidade Federal do Acre[1](www.acrequalidadedoar.info).


```r
source("getPurpleairApiHistory.R")
```


## Download dos dados
*sensorIndex* deve ser definido de acordo com a estação da qual se deseja obter os dados. 
Neste estudo, estão incluidas as estações:

+ Almirante Tamandaré
    + 175095 (outdoor)
    + 175115 (outdoor)
+ Campo Largo
    + 175103 (outdoor)
    + 175403 (outdoor)
    + 175235 (outdoor)
    + 99667 (outdoor)
+ Colombo 
    + 175407 (outdoor)
+ Itaperuçú
    + 175121 (outdoor)
    + 175393 (outdoor)
    + 175451 (outdoor)
+ Rio Branco do Sul | 
    + 175123 (indoor)
    + 175395 (outdoor)
    + 175101 (outdoor)
    + 175109 (indoor)
    + 175099 (indoor)
    + 175387 (outdoor)
    + 91267 (outdoor)

### Biblioteca


```r
library(tidyverse)
```


### Baixando os dados de interesse (sensor/local, variaveis/parâmetros)

* **Sobre a temperatura:** "Temperature inside of the sensor housing (F). On average, this is 8F higher than ambient conditions."*


#### Código para download

```r
#esse id pode ser obtido no mapa da PurpleAir, selecione apenas os de interesse
sensor_id <-  c('175095', '175099', '175101', '175103',
                '175109', '175115', '175121', '175123', 
                '175235', '175393', '175395', '175387',
                '175403', '175407', '175451')

#Mais informações em https://api.purpleair.com/
variaveis <- c("humidity, temperature, pm1.0_atm, pm1.0_atm_a, pm1.0_atm_b, pm2.5_atm, pm2.5_atm_a, pm2.5_atm_b, pm2.5_cf_1, pm2.5_cf_1_a, pm2.5_cf_1_b") # para corrigir PM2.5
```




```r
#purpleair <- getPurpleairApiHistory(
 # sensorIndex    = sensor_id,
  # apiReadKey     = "xxxxxx", #Obtida em https://develop.purpleair.com/keys
  # startTimeStamp = "2023-05-29 00:00:00", #defina a data_hora inicial
  # endTimeStamp   = "2023-11-20 23:59:59", #defina a data_hora final
  # average        = "0", #em tempo real
  # fields         = variaveis)
```






```r
# configurando o dataframe

purpleair <- purpleair %>%
  rename(date = time_stamp) %>% # renomear coluna de tempo
  mutate(date = ymd_hms(date)) %>% # identificar coluna como data/hora
  filter(!is.na(date))
```


### Ajuste de dados

Correção de unidades para o Sistema Internacional (de F para ºC) e dos valores de MP, de acordo com estudo [Barkjohn et al. (2021)](https://doi.org/10.5194/amt-14-4617-2021) e também aplicado na tese de [Da Costa (2022)](https://acervodigital.ufpr.br/handle/1884/80817) em dados de Curitiba/PR.  


     PM~2.5~ = 0.524∗PA~cf_1~ − 0.0862∗RH + 5.75



```r
purpleair <- purpleair %>%
  mutate(PM2.5 = 0.524*pm2.5_cf_1 - 0.0862*humidity + 5.75,
         temperature = (temperature - 32) * 5/9)

purpleair %>% 
  head()
```

```
##                    date humidity temperature pm1.0_atm pm1.0_atm_a pm1.0_atm_b
## 238 2023-05-29 23:33:53       35    29.44444     1.485        1.25        1.72
## 2   2023-05-29 23:35:53       35    30.00000     1.685        1.73        1.64
## 109 2023-05-29 23:37:53       35    30.00000     1.745        1.69        1.80
## 108 2023-05-29 23:39:53       35    30.00000     1.315        1.20        1.43
## 110 2023-05-29 23:41:53       35    30.00000     1.420        1.51        1.33
## 1   2023-05-29 23:43:53       35    30.00000     1.035        0.86        1.21
##     pm2.5_atm pm2.5_atm_a pm2.5_atm_b pm2.5_cf_1 pm2.5_cf_1_a pm2.5_cf_1_b
## 238     2.155        1.80        2.51      2.155         1.80         2.51
## 2       2.060        2.17        1.95      2.060         2.17         1.95
## 109     2.180        2.24        2.12      2.180         2.24         2.12
## 108     1.780        1.76        1.80      1.780         1.76         1.80
## 110     1.890        2.10        1.68      1.890         2.10         1.68
## 1       1.550        1.44        1.66      1.550         1.44         1.66
##     sensor_id   PM2.5
## 238    175095 3.86222
## 2      175095 3.81244
## 109    175095 3.87532
## 108    175095 3.66572
## 110    175095 3.72336
## 1      175095 3.54520
```


### Considerações sobre dataframes de interesse

*Se desejar salvar os dados no seu diretório (aqui, 'output'):*  
> write_csv(purpleair, "./content/blog/dados/csv/purpleair.csv")
          
*Se desejar importar os dados do seu diretório (aqui, 'output'):*       
>  purpleair <- read.csv("./csv/purpleair.csv") %>%\
  mutate(date = ymd_hms(date)) %>% # identificar coluna como data/hora\
  filter(!is.na(date)) # datas lidas incorretamente

