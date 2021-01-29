feather
================

This package contains a selection of colour palettes inspired by the
plumage of Australian birds.

## Installation

This package is hosted on GitHub and can be installed using the devtools
package:

``` r
devtools::install_github("shandiya/feather")
```

## How to use `feather`

Colour palettes are stored as a list called `feather_palettes`, and can
be accessed thus:

``` r
library(feather)
names(feather_palettes)
```

    ## [1] "spotted_pardalote"       "plains_wanderer"        
    ## [3] "bee_eater"               "rose_crowned_fruit_dove"
    ## [5] "eastern_rosella"         "oriole"                 
    ## [7] "princess_parrot"

`get_pal` is a function that returns the chosen palette as a vector of
hex colour codes.

``` r
get_pal("eastern_rosella")
```

    ## [1] "#cd3122" "#f4c623" "#bee183" "#6c905e" "#2f533c" "#b8c9dc" "#2f7ab9"

`print_pal` is a function that displays the colour palette in the plots
pane.

``` r
eastern_rosella <- get_pal("eastern_rosella")
print_pal(eastern_rosella)
```

<img src="README_files/figure-gfm/unnamed-chunk-5-1.png" style="display: block; margin: auto;" />

## Examples

Colour palettes can be used for data visualisation in base `R` and
`ggplot2`.

``` r
# base R
library(palmerpenguins)
plot(penguins$flipper_length_mm, penguins$body_mass_g, col = get_pal("rose_crowned_fruit_dove")[factor(penguins$species)], pch = 19)

# ggplot2
library(ggplot2)
library(palmerpenguins)
ggplot(penguins) +
  geom_point(aes(flipper_length_mm, body_mass_g, colour = species)) +
  scale_colour_manual(values = get_pal("rose_crowned_fruit_dove"))
```

<img src="README_files/figure-gfm/unnamed-chunk-6-1.png" width="50%" /><img src="README_files/figure-gfm/unnamed-chunk-6-2.png" width="50%" />

## Colour palettes

The images below show each palette and the bird that inspired it.

### Eastern Rosella (*Platycercus eximius*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Platycercus_eximius_diemenensis_male.jpg/320px-Platycercus_eximius_diemenensis_male.jpg" width="33%" /><img src="README_files/figure-gfm/rosella-2.png" width="33%" /><img src="README_files/figure-gfm/rosella-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [JJ
Harrison](https://commons.wikimedia.org/wiki/File:Platycercus_eximius_diemenensis_male.jpg),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 3.0 Unported
license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).</span>

### Plains-wanderer (*Pedionomus torquatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/1/1c/Plains-wanderer_%28Pedionomus_torquatus%29_7_%2830547426803%29.jpg" width="33%" /><img src="README_files/figure-gfm/pdubs-2.png" width="33%" /><img src="README_files/figure-gfm/pdubs-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [Dominic
Sherony](https://commons.wikimedia.org/wiki/File:Plains-wanderer_\(Pedionomus_torquatus\)_7_\(30547426803\).jpg),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

### Spotted Pardalote (*Pardalotus punctatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Spotted_Pardalote_%28Pardalotus_punctatus%29_male_%2819205338781%29.jpg/1024px-Spotted_Pardalote_%28Pardalotus_punctatus%29_male_%2819205338781%29.jpg" width="33%" /><img src="README_files/figure-gfm/spotty-2.png" width="33%" /><img src="README_files/figure-gfm/spotty-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit:
[Patrick\_K59](https://commons.wikimedia.org/wiki/File:Spotted_Pardalote_\(Pardalotus_punctatus\)_male_\(19205338781\).jpg),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

### Rose-crowned Fruit-Dove (*Ptilinopus regina*)

<img src="https://upload.wikimedia.org/wikipedia/commons/7/72/Rose_crowned_Fruit_Dove_at_Australia_Zoo-1_%289098717408%29.jpg" width="33%" /><img src="README_files/figure-gfm/sweetpea-2.png" width="33%" /><img src="README_files/figure-gfm/sweetpea-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit:
[Sheba\_Also](https://commons.m.wikimedia.org/wiki/File:Rose_crowned_Fruit_Dove_at_Australia_Zoo-1_\(9098717408\).jpg),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

### Rainbow Bee-eater (*Merops ornatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Rainbow_bee_eater_%289847155264%29.jpg" width="33%" /><img src="README_files/figure-gfm/bee-eater-2.png" width="33%" /><img src="README_files/figure-gfm/bee-eater-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [Jim
Bendon](https://commons.wikimedia.org/wiki/File:Rainbow_bee_eater_\(9847155264\).jpg),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

### Olive-backed Oriole (*Oriolus sagittatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Oriolus_sagittatus_-Canberra%2C_Australia-8a.jpg" width="33%" /><img src="README_files/figure-gfm/oriole-2.png" width="33%" /><img src="README_files/figure-gfm/oriole-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [Duncan
McCaskill](https://commons.wikimedia.org/wiki/File:Oriolus_sagittatus_-Canberra,_Australia-8a.jpg),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 3.0 Unported
license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).</span>

### Princess Parrot (*Polytelis alexandrae*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Princess_Parrot_HD_pic.JPG/640px-Princess_Parrot_HD_pic.JPG" width="33%" /><img src="README_files/figure-gfm/princess-2.png" width="33%" /><img src="README_files/figure-gfm/princess-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit:
[Timothychacko](https://commons.wikimedia.org/wiki/File:Princess_Parrot_HD_pic.JPG),
licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 4.0 International
license.](https://creativecommons.org/licenses/by-sa/4.0/deed.en).</span>

## Continuous palettes

The qualitative colour palettes in `feather` may be converted into
sequential or diverging palettes for different types of data
visualisation using the `colorRampPalette()` function.

### Sequential palette

``` r
# choose end colours
seq_col <- get_pal("eastern_rosella")[c(2,7)]

# create a gradient of 50 shades in between the selected colours 
colorRampPalette(seq_col)(50)
```

<img src="README_files/figure-gfm/unnamed-chunk-8-1.png" style="display: block; margin: auto;" />

### Diverging palette

``` r
# choose end and middle colours
div_col <- get_pal("oriole")[c(1,5,10)]

# create a gradient of 50 shades in between the selected colours 
colorRampPalette(div_col)(50)
```

<img src="README_files/figure-gfm/unnamed-chunk-10-1.png" style="display: block; margin: auto;" />

## Contribute

If you would like to contribute to this package or have suggestions for
improvement, please contact [ShandiyaB](https://twitter.com/ShandiyaB)
on Twitter or submit a pull request.
