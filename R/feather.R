#' List of colour palettes
#' @export

feather_palettes <- list(
  pardalote = c("#feca00", "#d36328", "#cb0300", "#b4b9b3", "#424847", "#000100"),
  plains_wanderer = c("#edd8c5", "#d09a5e", "#e7aa01", "#ac570f", "#73481b", "#442c0e", "#0d0403"),
  bee_eater = c("#00346E", "#007CBF", "#06ABDF", "#EDD03E", "#F5A200", "#6D8600", "#424D0C"),
  rose_crowned_fruit_dove = c("#BD338F", "#EB8252", "#F5DC83", "#CDD4DC", "#8098A2", "#8FA33F", "#5F7929", "#014820"),
  eastern_rosella = c("#cd3122", "#f4c623", "#bee183", "#6c905e", "#2f533c", "#b8c9dc", "#2f7ab9")
)



#' Select feather palette
#' @description This function returns colour palettes based on Australian birds
#' @param palette_name Name of desired palette
#' @return A vector of hex colour codes
#' @export
#' @examples
#' get_pal("pardalote")
#' get_pal("gang-gang")

get_pal <- function(palette_name) {

  pal <- feather_palettes[[palette_name]]
  if (is.null(pal))
    stop("Whoops! That feather palette does not exist :(")
  pal

}



#' Plot colour palette
#' @description Plot chosen colour palette from feather package
#' @param x A vector of colours
#' @return An image showing colours in palette
#' @export
#' @importFrom graphics par image
#' @examples
#' pardalote <- get_pal("pardalote")
#' print_pal(pardalote)

print_pal <- function(x) {

  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x, ylab = "", xaxt = "n", yaxt = "n", bty = "n")

}
