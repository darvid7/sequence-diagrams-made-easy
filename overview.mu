indexts->ff: run()

ff->ff: initaliseSocketEndpoints()

ff->WeatherClientFactory: createWeatherClient()

WeatherClientFactory->ff: weatherClient

ff->io: emit(io-emit('soap_client_creation_success', true)

ff->WeatherClient: retrieveLocations()

WeatherClient->ff: locations

ff->ff: onAllLocationsRetrieved(locations)

ff->io:emit('locations', locations)

ff->ff: retrieveAllMonitoredWeatherData()

ff->WeatherClient: retrieveWeatherLocationDataList()

ff->ff: return
ff->NodeJS.Timer: setInterval(retrieveAllMonitoredWeatherData(), msInterval)
