library(feathers)
library(ggplot2)
library(palmerpenguins)
library(purrr)

# plots for readme
make_plot <- function(pal_name) {

  ggplot(penguins) +
    geom_point(aes(x = flipper_length_mm,
                   y = body_mass_g,
                   colour = species:island),
               na.rm = TRUE) +
    scale_colour_manual(values = get_pal(pal_name)) +
    theme_minimal() +
    theme(legend.position = "none",
          axis.title = element_blank())

}

# generate plots
all_plots <- names(feathers_palettes) |>
  set_names() |>
  map(make_plot)

# assign names to plots
plotnames <- map(names(all_plots), ~paste0("images/", ., "_plot.png"))

# save plots
walk2(plotnames,
      all_plots,
      ~ggsave(filename = .x, plot = .y, height = 3, width = 5, units = "in"))
