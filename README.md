
# educer

<!-- badges: start -->
<!-- badges: end -->

Please visit the EDUCE homepage for [install instructions of R and RStudio](https://educe-ubc.github.io/r_and_rstudio.html).



## Installation

You can install the released version of educer from GitHub with:

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("EDUCE-UBC/educer")
```

See the EDUCE homepage for more detailed [install instructions](https://educe-ubc.github.io/educer.html).



## Loading and getting help on the educer package

``` r
library(educer)
?educer
```



## Using the interactive tutorials

Please the the EDUCE homepage for information on how to [start the tutorials](https://educe-ubc.github.io/tutorials.html).



## For developers

- Place any images in the `inst/resources/images/` folder
- If it does not exist yet, create an r setup code chunk in the tutorial.Rmd file right after the yaml header
- Add the following line of code to the r setup code chunk:

```
library(educer)
setup_resources()
```

- To add an image in tutorial.Rmd, you can now give the path to an `image.ext` in `inst/resources/images/` like so (you MUST include the first `/`):
![](/images/image.ext)
- You can learn more about the helper function `setup_resources` with `?setup_resources` and add other paths to resources (css is already established).
