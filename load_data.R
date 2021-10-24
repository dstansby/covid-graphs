library(readr)


download_UK_data <- function(){
  #' Download {test, case, death} data for the whole of the UK
  #'
  #' @return Path to downloaded data
  url <- 'https://api.coronavirus.data.gov.uk/v2/data?areaType=overview&metric=newVaccinesGivenByPublishDate&metric=newCasesBySpecimenDate&metric=newTestsByPublishDate&metric=newDeaths28DaysByDeathDate&metric=newAdmissions&format=csv'
  dest_file <- 'data/cases_latest.csv'
  download.file(url, dest_file)
  dest_file
}

load_uk_data <- function(){
  #' Load COVID cases and test data for the whole of the UK
  data_file = 'data/cases_latest.csv'
  data <- read_csv(data_file)
  # data <- subset(data, select=c(date, newCasesByPublishDate, newCasesBySpecimenDate, newTestsByPublishDate))
  data
}