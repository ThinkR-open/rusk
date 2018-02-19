
<!-- README.md is generated from README.Rmd. Please edit that file -->
rusk
====

The goal of rusk is to show a nice representation of multiplication table

<img src="inst/preview_100.gif" width="400px" />

<img src="inst/preview_t9.gif" width="400px" /> <img src="inst/preview_t21.gif" width="400px" />

Installation
------------

You can install rusk from github with:

``` r
# install.packages("devtools")
devtools::install_github("ThinkR-open/rusk")
```

Example
-------

### Using `draw` function

``` r
library(rusk)
draw(table = 2, modulo = 10,label = TRUE)
```

![](README-example-1.png)

``` r
draw(table = 2, modulo = 100)
```

![](README-example-2.png)

``` r
draw(table = 2, modulo = 500)
```

![](README-example-3.png)

``` r
draw(table = 7, modulo = 250)
```

![](README-example-4.png)

``` r
draw(table = 21, modulo = 500)
```

![](README-example-5.png)

### Using the shiny app

``` r
rusk::draw_app()
```

TODO
====

allow decimal table
