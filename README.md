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
    ## [5] "eastern_rosella"

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

`ggplot`:

``` r
library(palmerpenguins)
library(ggplot2)

ggplot(penguins) +
  geom_point(aes(flipper_length_mm, body_mass_g, colour = species)) +
  scale_colour_manual(values = get_pal("eastern_rosella"))
```

<img src="README_files/figure-gfm/unnamed-chunk-6-1.png" style="display: block; margin: auto;" />

base `R`:

``` r
library(palmerpenguins)
plot(penguins$flipper_length_mm, penguins$body_mass_g, col = get_pal("eastern_rosella")[factor(penguins$species)], pch = 19)
```

<img src="README_files/figure-gfm/unnamed-chunk-7-1.png" style="display: block; margin: auto;" />

## Colour palettes

The images below show each palette and the bird that inspired it.

#### Eastern Rosella (*Platycercus eximius*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Platycercus_eximius_diemenensis_male.jpg/800px-Platycercus_eximius_diemenensis_male.jpg" width="50%" /><img src="README_files/figure-gfm/unnamed-chunk-8-2.png" width="50%" />

<span style="color: grey; font-size: 8pt">Image credit: [JJ
Harrison](https://www.jjharrison.com.au/) from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Platycercus_eximius_diemenensis_male.jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 3.0 Unported
license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).</span>

#### Plains-wanderer (*Pedionomus torquatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/e/e3/Pedionomus_torquatus%2C_NSW_2.jpg" width="50%" /><img src="README_files/figure-gfm/unnamed-chunk-9-2.png" width="50%" />

<span style="color: grey; font-size: 8pt">Image credit:
[Patrick\_K59](https://www.flickr.com/photos/patrick_k59/14345250300/in/photostream/)
from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Pedionomus_torquatus,_NSW_2.jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

#### Spotted Pardalote (*Pardalotus punctatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Spotted_Pardalote_%28Pardalotus_punctatus%29_male_%2819205338781%29.jpg/1024px-Spotted_Pardalote_%28Pardalotus_punctatus%29_male_%2819205338781%29.jpg" width="50%" /><img src="README_files/figure-gfm/unnamed-chunk-10-2.png" width="50%" />

<span style="color: grey; font-size: 8pt">Image credit:
[Patrick\_K59](https://www.flickr.com/people/63175631@N02) from
[Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Spotted_Pardalote_\(Pardalotus_punctatus\)_male_\(19205338781\).jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

#### Rose-crowned Fruit-Dove (*Ptilinopus regina*)

<img src="https://upload.wikimedia.org/wikipedia/commons/7/72/Rose_crowned_Fruit_Dove_at_Australia_Zoo-1_%289098717408%29.jpg" width="50%" /><img src="README_files/figure-gfm/unnamed-chunk-11-2.png" width="50%" />

<span style="color: grey; font-size: 8pt">Image credit:
[Sheba\_Also](https://www.flickr.com/people/34534185@N00) from
[Wikimedia
Commons](https://commons.m.wikimedia.org/wiki/File:Rose_crowned_Fruit_Dove_at_Australia_Zoo-1_\(9098717408\).jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

#### Rainbow Bee-eater (*Merops ornatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Merops_ornatus_-_Centenary_Lakes.jpg/800px-Merops_ornatus_-_Centenary_Lakes.jpg" width="50%" /><img src="README_files/figure-gfm/unnamed-chunk-12-2.png" width="50%" />

<span style="color: grey; font-size: 8pt">Image credit: [JJ
Harrison](https://www.jjharrison.com.au/) from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Merops_ornatus_-_Centenary_Lakes.jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 3.0 Unported
license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).</span>

## Contribute

If you would like to contribute to this package or have suggestions for
improvement, please contact [ShandiyaB](https://twitter.com/ShandiyaB)
on Twitter or submit a pull request.
