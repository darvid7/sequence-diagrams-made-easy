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


Notes: Change ff to name of full lambda service later
change io to socket io name later
deal with .

Questions/things to figure out:
- what do if return to itself, do i need to show return arrow if calling fn from same class
- do i shw class or objects
- ad nodeJS.Timer and NodeJS to class diagram?
