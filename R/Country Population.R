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
