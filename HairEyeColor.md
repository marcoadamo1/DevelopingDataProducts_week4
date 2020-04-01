Week 4 Assignment: Shiny Application and Reproducible Pitch
========================================================
author: Marco Adamo
date: 31st March 2020
autosize: true

Summary of the assignment
========================================================

- Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
- Deploy the application on Rstudio's shiny server
- Share the application link by pasting it into the provided text box
- Share your server.R and ui.R code on github

Dataset description: HairEyeColor
========================================================
The Hair x Eye table comes from a survey of students at the University of Delaware reported by Snee (1974).

The data is structured as follows:



```
, , Sex = Male

       Eye
Hair    Brown Blue Hazel Green
  Black    32   11    10     3
  Brown    53   50    25    15
  Red      10   10     7     7
  Blond     3   30     5     8

, , Sex = Female

       Eye
Hair    Brown Blue Hazel Green
  Black    36    9     5     2
  Brown    66   34    29    14
  Red      16    7     7     7
  Blond     4   64     5     8
```

Shiny application: usage
========================================================
## Left panel:
- Select a hair color between the possible choices: black, brown, red, blond
- Select an eye color between the possible choices: brown, blue, hazel, green

## Right panel:
- Statistics: displays the chosen entries AND calculates the percentage of people that meet the criteria. The percentage is calculated against the whole data set (reactive)
- Mosaic graph: graphically displays the whole population as a mosaic plot (non-reactive)

References
========================================================
## Source
http://euclid.psych.yorku.ca/ftp/sas/vcd/catdata/haireye.sas

## References
- Snee, R. D. (1974). Graphical display of two-way contingency tables. The American Statistician, 28, 9-12. doi: 10.2307/2683520.

- Friendly, M. (1992a). Graphical methods for categorical data. SAS User Group International Conference Proceedings, 17, 190-200. http://www.math.yorku.ca/SCS/sugi/sugi17-paper.html

- Friendly, M. (1992b). Mosaic displays for loglinear models. Proceedings of the Statistical Graphics Section, American Statistical Association, pp. 61-68. http://www.math.yorku.ca/SCS/Papers/asa92.html

- Friendly, M. (2000). Visualizing Categorical Data. SAS Institute, ISBN 1-58025-660-0. 

