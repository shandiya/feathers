# load libraries-----------
library(feather)
library(ggplot2)
library(palmerpenguins)
library(here)

# generate plots----------------
# put all this into purrr map for more elegant scripting
rosella_plot <- ggplot(penguins) +
  geom_point(aes(x = flipper_length_mm, y = body_mass_g, colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("eastern_rosella")) +
  ggsave(here("images", "rosella_plot.png"), height = 3, width = 5, units = "in")

wanderer_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("plains_wanderer")) +
  ggsave(here("images", "wanderer_plot.png"), height = 3, width = 5, units = "in")

spotty_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("spotted_pardalote")) +
  ggsave(here("images", "spotty_plot.png"), height = 3, width = 5, units = "in")

rcf_dove_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("rose_crowned_fruit_dove")) +
  ggsave(here("images", "rcf_dove_plot.png"), height = 3, width = 5, units = "in")

bee_eater_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("bee_eater")) +
  ggsave(here("images", "bee_eater_plot.png"), height = 3, width = 5, units = "in")

oriole_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("oriole")) +
  ggsave(here("images", "oriole_plot.png"), height = 3, width = 5, units = "in")


