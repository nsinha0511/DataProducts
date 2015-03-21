---
title       : "Presentation on Shiny App"
subtitle    : 20 March 2015
author      : Nishant Sinha
job         : Coursera
framework   : io2012   # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : solarized_light      # 
widgets     : [shiny,bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---

## General Introduction

This application uses user inputs on starting population value, increment rate and the number of years to calculate the projected population at the end of the term. The application uses compunding formulae to calculate the projected population. 
The country name is not being used for any calculation purposes. However, as a future development one could link the country name to UN Population statistics and use the inputs from the database for the starting population value purposes. This has not been deployed in the current app.

--- 

## Inputs and Outputs

Inputs:

The following values are used as input from the user:  
- Name of Country - List of Country names from Drop down control  
- Starting Population - Numeric Input  
- Rate of Change - This is a radio button and allows for any one of the three options available i.e. Zero Growth rate, Increasing growth rate at the rate of 10% per year, Decreasing growth rate at the rate of 1% every year.   
- Number of years - This is a slider bar input allowing users to select the number of years over which they want the population to be projected.  

Outputs:

- Predicted Population - Based on the compounding formulae and entered inputs, the estimated final population is calculated. 

---

## Illustration of the App



```
## Error in eval(expr, envir, enclos): could not find function "slidifyUI"
```



```
## Error in eval(expr, envir, enclos): could not find function "slidifyUI"
```

    
---

## Potential Enhancements

The app is a very simple implementation of a compounding formulae. There are  enhancements that could make the app more interesting, i.e.

- Integrating data about historical population from a standard web source e.g. UN 
- Using the external data to define the rate of growth and the starting point 
- Provide graphical representation of the population growth over the projection period. 
- Provide relative comparison option with other countries based on additional Country drop down. 

---

## Learnings

- Relative ease in building simple shiny apps i.e. without any external data connectivity or complex visualizations
- Integrating Shiny app in Slidify presentations is tricky.i.e. Understanding the widgets, framework, css to control the layout and the integration of the app

The most tricky part i found in the exercise was controlling the size & layout of the panels in the slides when integrating with Shiny apps (not sure if i have still got it sorted...)

