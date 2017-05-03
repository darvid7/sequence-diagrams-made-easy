# Method starts at FullLambdaService.ts retrieveAllMonitoredWeatherData()

ff->WeatherClient: retrieveWeatherLocationDataList(locations)
WeatherClient->WeatherClient: retrieveWeatherLocationData(location)
WeatherClient->ff: weatherLocationDataList
ff->ff: onWeatherLocationDataRetrieved(weatherLocationDataList)
