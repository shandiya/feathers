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

    ##          checking for file 'C:\Users\Shandiya\AppData\Local\Temp\RtmpI5t5SJ\remotesdd42f330dc\shandiya-feather-9f812a8/DESCRIPTION' ...  v  checking for file 'C:\Users\Shandiya\AppData\Local\Temp\RtmpI5t5SJ\remotesdd42f330dc\shandiya-feather-9f812a8/DESCRIPTION' (416ms)
    ##       -  preparing 'feather':
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
    ##       -  checking for LF line-endings in source and make files and shell scripts
    ##       -  checking for empty or unneeded directories
    ##       -  building 'feather_0.0.0.9000.tar.gz'
    ##      
    ## 

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

#### Eastern Rosella (*Platycercus eximius*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Platycercus_eximius_diemenensis_male.jpg/320px-Platycercus_eximius_diemenensis_male.jpg" width="33%" /><img src="README_files/figure-gfm/rosella-2.png" width="33%" /><img src="README_files/figure-gfm/rosella-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [JJ
Harrison](https://www.jjharrison.com.au/) from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Platycercus_eximius_diemenensis_male.jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 3.0 Unported
license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).</span>

#### Plains-wanderer (*Pedionomus torquatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/1/1c/Plains-wanderer_%28Pedionomus_torquatus%29_7_%2830547426803%29.jpg" width="33%" /><img src="README_files/figure-gfm/pdubs-2.png" width="33%" /><img src="README_files/figure-gfm/pdubs-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [Dominic
Sherony](https://www.flickr.com/people/9765210@N03) from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Plains-wanderer_\(Pedionomus_torquatus\)_7_\(30547426803\).jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

#### Spotted Pardalote (*Pardalotus punctatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Spotted_Pardalote_%28Pardalotus_punctatus%29_male_%2819205338781%29.jpg/1024px-Spotted_Pardalote_%28Pardalotus_punctatus%29_male_%2819205338781%29.jpg" width="33%" /><img src="README_files/figure-gfm/spotty-2.png" width="33%" /><img src="README_files/figure-gfm/spotty-3.png" width="33%" />
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

<img src="https://upload.wikimedia.org/wikipedia/commons/7/72/Rose_crowned_Fruit_Dove_at_Australia_Zoo-1_%289098717408%29.jpg" width="33%" /><img src="README_files/figure-gfm/sweetpea-2.png" width="33%" /><img src="README_files/figure-gfm/sweetpea-3.png" width="33%" />
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

<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Rainbow_bee_eater_%289847155264%29.jpg" width="33%" /><img src="README_files/figure-gfm/bee-eater-2.png" width="33%" /><img src="README_files/figure-gfm/bee-eater-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [Jim
Bendon](https://www.flickr.com/people/77524419@N03) from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Rainbow_bee_eater_\(9847155264\).jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution 2.0
Generic](https://creativecommons.org/licenses/by/2.0/deed.en)
license.</span>

### Olive-backed Oriole (*Oriolus sagittatus*)

<img src="https://upload.wikimedia.org/wikipedia/commons/8/82/Oriolus_sagittatus_-Canberra%2C_Australia-8a.jpg" width="33%" /><img src="README_files/figure-gfm/oriole-2.png" width="33%" /><img src="README_files/figure-gfm/oriole-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: [Duncan
McCaskill](https://get.google.com/albumarchive/pwa/duncan.mccaskill)
from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Oriolus_sagittatus_-Canberra,_Australia-8a.jpg).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 3.0 Unported
license](https://creativecommons.org/licenses/by-sa/3.0/deed.en).</span>

### Princess Parrot (*Polytelis alexandrae*)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Princess_Parrot_HD_pic.JPG/640px-Princess_Parrot_HD_pic.JPG" width="33%" /><img src="README_files/figure-gfm/princess-2.png" width="33%" /><img src="README_files/figure-gfm/princess-3.png" width="33%" />
<span style="color: grey; font-size: 8pt">Image credit: Timothychacko
from [Wikimedia
Commons](https://commons.wikimedia.org/wiki/File:Princess_Parrot_HD_pic.JPG).
This file is licensed under the [Creative
Commons](https://en.wikipedia.org/wiki/Creative_Commons)
[Attribution-Share Alike 4.0 International
license.](https://creativecommons.org/licenses/by-sa/4.0/deed.en).</span>

## Contribute

If you would like to contribute to this package or have suggestions for
improvement, please contact [ShandiyaB](https://twitter.com/ShandiyaB)
on Twitter or submit a pull request.
