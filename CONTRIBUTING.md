# Contributing to educer

Thank you for taking the time to contribute to educer! 

## What should I know before I get started?

Please see our general resources for EDUCE contributors on our [EDUCE-UBC.github.io Wiki](https://github.com/EDUCE-UBC/EDUCE-UBC.github.io/wiki/Contributors).

## Package conventions

- Place any images in the `inst/resources/images/` folder.
- If it does not exist yet, create an R setup code chunk in the `.Rmd` file of the learnr tutorial right after the yaml header.
- Add the following line of code to the R setup code chunk:

```
library(educer)
setup_resources()
```

- To add an image in the `.Rmd` file of the learnr tutorial, you can now give the path to an `image.ext` in `inst/resources/images/` like so (you MUST include the first `/`):

```
![](/images/image.ext)
```

- You can learn more about the helper function `setup_resources()` with `?setup_resources` and add other paths to resources (e.g. `resources/css/` is already established).
