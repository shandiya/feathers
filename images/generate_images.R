# load libraries-----------
library(feathers)
library(ggplot2)
library(palmerpenguins)
library(here)

# generate plots----------------
# put all this into purrr map for more elegant scripting?
# turn the whole thing into a function
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

princess_parrot_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("princess_parrot")) +
  ggsave(here("images", "princess_parrot_plot.png"), height = 3, width = 5, units = "in")

superb_fw_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("superb_fairy_wren")) +
  ggsave(here("images", "superb_fw_plot.png"), height = 3, width = 5, units = "in")

bf_pf_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("blue_faced_parrot_finch")) +
  ggsave(here("images", "bf_pf_plot.png"), height = 3, width = 5, units = "in")

casowary_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("cassowary")[3:7]) +
  ggsave(here("images", "cassowary_plot.png"), height = 3, width = 5, units = "in")

yellow_robin_plot <- ggplot(penguins) +
  geom_point(aes(
    x = flipper_length_mm,
    y = body_mass_g,
    colour = species:island)) +
  labs(x = "", y = "") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_colour_manual(values = get_pal("yellow_robin")) +
  ggsave(here("images", "yellow_robin_plot.png"), height = 3, width = 5, units = "in")
