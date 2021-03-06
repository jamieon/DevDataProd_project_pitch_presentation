---
title       : BMI calculator
author      : Jamieon
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, shiny, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Slide 1 - Intro

Shiny app calculates the Body Mass Index, BMI, and plots it.

--- .class #id 

## Slide 2 - BMI definition

BMI is a relative weight measure based on the person's mass and weight, cf. http://en.wikipedia.org/wiki/Body_mass_index

--- .class #id 

## Slide 3 - BMI calculation

calculation:


```r
weight <- 90    # 90kg
height <- 1.9   # 1.9m

BMI <- weight / height^2

BMI
```

```
## [1] 24.93075
```

--- .class #id 

## Slide 4 - Possible later developments

1. A database can be built.

2. Comparisions to populations can be shown. 


--- .class #id 

## Slide 5 - Refs


1. Code based on: http://sas-and-r.blogspot.ie/2010/04/example-731-contour-plot-of-bmi-by.html

2. Def: http://en.wikipedia.org/wiki/Body_mass_index
    

