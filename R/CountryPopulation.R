#' Get the graph of the population of a country
#'
#' This function retrieves the population of a given country from 1950 to 2020.
#' @param country A character string specifying the name of the country.
#' @return The population of the specified country.
#' @export

CountryPopulation <- function(countries, plot_title) {
  # Filter the data for the specified countries
  WorldPopulation_filtered <- WorldPopulation %>%
    filter(Country %in% countries)

  # Create the ggplot object
  plot <- ggplot(WorldPopulation_filtered, aes(x = Year, y = Population)) +
    geom_point() +
    labs(x = "Year", y = "Population", title = plot_title) +
    theme_bw() +  # Use black and white theme
    theme(plot.title = element_text(hjust = 0.5))  # Center the title

  return(plot)
}
