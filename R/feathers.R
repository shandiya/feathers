#' List of colour palettes
#' @export

feathers_palettes <- list(
  spotted_pardalote = c("#feca00", "#d36328", "#cb0300", "#b4b9b3", "#424847", "#000100"),
  plains_wanderer = c("#edd8c5", "#d09a5e", "#e7aa01", "#ac570f", "#73481b", "#442c0e", "#0d0403"),
  bee_eater = c("#00346E", "#007CBF", "#06ABDF", "#EDD03E", "#F5A200", "#6D8600", "#424D0C"),
  rose_crowned_fruit_dove = c("#BD338F", "#EB8252", "#F5DC83", "#CDD4DC", "#8098A2", "#8FA33F", "#5F7929", "#014820"),
  eastern_rosella = c("#cd3122", "#f4c623", "#bee183", "#6c905e", "#2f533c", "#b8c9dc", "#2f7ab9"),
  oriole = c("#8a3223", "#bb5645", "#d97878", "#e2aba0", "#d0cfe9", "#a29eb8", "#6c6b75", "#b8a53f", "#93862a", "#4d4019"),
  princess_parrot = c("#7090c9", "#8cb3de", "#afbe9f", "#616020", "#6eb245", "#214917", "#cf2236", "#d683ad"),
  blue_faced_parrot_finch = c("#AA2E27", "#5B8233", "#2F561C", "#6EAD3A", "#4F52C2", "#464851"),
  superb_fairy_wren = c("#4F3321", "#AA7853", "#D9C4A7", "#B03F05", "#020503"),
  cassowary = c("#BDA14D", "#3EBCB6", "#0169C4", "#153460", "#D5114E", "#A56EB6", "#4B1C57", "#09090C"),
  yellow_robin = c("#E19E00", "#FBEB5B", "#85773A", "#979EB9", "#727B98", "#454B56", "#201B1E"),
  galah = c("#FFD2CF", "#E9A7BB", "#D05478", "#AAB9CC", "#8390A2", "#4C5766")
)



#' Select feathers palette
#' @description This function returns colour palettes based on Australian birds
#' @param palette_name Name of desired palette
#' @return A vector of hex colour codes
#' @export
#' @examples
#' get_pal("spotted_pardalote")
#' get_pal("bee_eater")

get_pal <- function(palette_name) {

  pal <- feathers_palettes[[palette_name]]
  if (is.null(pal))
    stop("Whoops! That colour palette does not exist in feathers :(")
  pal

}



#' Plot colour palette
#' @description Plot chosen colour palette from feathers package
#' @param x A vector of colours
#' @return An image showing colours in palette
#' @export
#' @import ggplot2
#' @examples
#' pardalote <- get_pal("spotted_pardalote")
#' print_pal(pardalote)

print_pal <- function(x) {

  n <- length(x)
  df <- data.frame(x = c(1:n), y = rep(1, n))
  ggplot(df) +
    geom_tile(aes(x = x, y = y),
              fill = x,
              colour = "white",
              size = 3) +
    theme_void() +
    theme(legend.position = "none")

}
