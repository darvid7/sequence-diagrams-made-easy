GenericListItem->LocationListItem
LocationListItem->LocationList
LocationList->WeatherPage
WeatherPage->WeatherPageContainer
WeatherPageContainer->WeatherPageContainer: onLocationsListRainfallItemClicked()

alt previously selected

WeatherPageContainer-> io: emit()

else 

WeatherPageContainer-> io: emit()

end

WeatherPageContainer-->WeatherPage
WeatherPage--> LocationList
LocationList-->LocationListItem
LocationListItem-->GenericListItem