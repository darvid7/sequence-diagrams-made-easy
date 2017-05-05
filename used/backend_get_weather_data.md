# Starts in function FullLambdaWeatherService.retrieveAllMonitoredWeatherData()

ff->WeatherClient: retrieveWeatherLocationDataList(locations)

WeatherClient->WeatherClient: retrieveWeatherLocationData(location)

WeatherClient->ff: weatherLocationDataList

ff->ff: onWeatherLocationDataRetrieved(weatherLocationDataList)

loop for sessionId in io sessions

ff->SessionMonitoringManager: getLocationMonitorManagerForSession(sessionId)
SessionMonitoringManager-->ff: locationMonitoringManager
ff->LocationMonitoringManager: getMonitoredLocations()
LocationMonitoringManager-->ff: locations

alt data to emit

ff->io: emit()



else 

ff->ff: pass

end 
end
