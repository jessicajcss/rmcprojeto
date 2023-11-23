
source("getPurpleairApiHistory.R")

library(tidyverse)


#esse id pode ser obtido no mapa da PurpleAir, selecione apenas os de interesse

sensor_id <-  c('175095', '175101', '175121', 
                '175403', '175451')

#Mais informações em https://api.purpleair.com/
variaveis <- c("humidity, temperature, pm1.0_atm, pm1.0_atm_a, pm1.0_atm_b, pm2.5_atm, pm2.5_atm_a, pm2.5_atm_b, pm2.5_cf_1, pm2.5_cf_1_a, pm2.5_cf_1_b") # para corrigir PM2.5

purpleair <- getPurpleairApiHistory(
  sensorIndex    = sensor_id,
  apiReadKey     = "6842E278-8078-11ED-B6F4-42010A800007", #Obtida em https://develop.purpleair.com/keys
  startTimeStamp = "2023-05-29 00:00:00", #defina a data_hora inicial
  endTimeStamp   = "2023-11-20 23:59:59", #defina a data_hora final
  average        = "0", #em tempo real
  fields         = variaveis)

# configurando o dataframe
purpleair <- purpleair %>%
  rename(date = time_stamp) %>% # renomear coluna de tempo
  mutate(date = ymd_hms(date)) %>% # identificar coluna como data/hora
  filter(!is.na(date))

purpleair <- purpleair %>%
  mutate(PM2.5 = 0.524*pm2.5_cf_1 - 0.0862*humidity + 5.75,
         temperature = (temperature - 32) * 5/9)



