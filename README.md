
# educer

<!-- badges: start -->
<!-- badges: end -->

The goal of educer is to ...

## Installation

You can install the released version of educer from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("educer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(educer)
## basic example code
```

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
- You can learn more about the helper function `setup_resources` with `?setup_resources` and add other paths to resources (css is already established)
