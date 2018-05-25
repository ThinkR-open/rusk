
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rusk)](https://cran.r-project.org/package=rusk) [![](http://cranlogs.r-pkg.org/badges/rusk)](https://cran.r-project.org/package=rusk) [![Travis build status](https://travis-ci.org/ThinkR-open/rusk.svg?branch=master)](https://travis-ci.org/ThinkR-open/rusk) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ThinkR-open/rusk?branch=master&svg=true)](https://ci.appveyor.com/project/ThinkR-open/rusk) [![Coverage status](https://codecov.io/gh/ThinkR-open/rusk/branch/master/graph/badge.svg)](https://codecov.io/github/ThinkR-open/rusk?branch=master)

rusk
====

The goal of rusk is to show a nice representation of multiplication table

Explanations :

[![Explanation in English](https://i.imgur.com/UEn6VDy.png)](http://www.youtube.com/embed/qhbuKbxJsk8?rel=0)[![Explanation in French](https://i.imgur.com/60U0Qn5.jpg)](http://www.youtube.com/embed/-X49VQgi86E?rel=0)

<img src="inst/preview_100.gif" width="400px" />

<img src="inst/preview_t9.gif" width="400px" /> <img src="inst/preview_t21.gif" width="400px" />

Installation
------------

You can install rusk from CRAN with:

``` r
# install.packages("devtools")
install.packages("rusk")
```

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
