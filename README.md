
<!-- README.md is generated from README.Rmd. Please edit that file -->
nicetable
=========

The goal of nicetable is to show a nice representation of multiplication table

<img src="inst/preview_100.gif" width="400px" />

Installation
------------

You can install nicetable from github with:

``` r
# install.packages("devtools")
devtools::install_github("ThinkR-open/nicetable")
```

Example
-------

### Using `draw` function

``` r
library(nicetable)
draw(table = 2, modulo = 10)
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

### Using the shiny app

``` r
nicetable::draw_app()
```
