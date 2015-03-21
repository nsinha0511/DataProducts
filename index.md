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

### General Introduction

This application uses user inputs on starting population value, increment rate and the number of years to calculate the projected population at the end of the term. The application uses compunding formulae to calculate the projected population. 
The country name is not being used for any calculation purposes. However, as a future development one could link the country name to UN Population statistics and use the inputs from the database for the starting population value purposes. This has not been deployed in the current app.

--- 

### Inputs and Outputs

**Inputs:**

The following values are used as input from the user:  
- Name of Country - List of Country names from Drop down control  
- Starting Population - Numeric Input  
- Rate of Change - This is a radio button and allows for any one of the three options available i.e. Zero Growth rate, Increasing growth rate at the rate of 10% per year, Decreasing growth rate at the rate of 1% every year.   
- Number of years - This is a slider bar input allowing users to select the number of years over which they want the population to be projected.  

**Outputs:**

- Predicted Population - Based on the compounding formulae and entered inputs, the estimated final population is calculated. 

---

### Illustration of the App (1/2) - User Interface


<div class="row-fluid">
  <div class="col-sm-12">
    <h1>
      <h3>Predicting Population Growth</h3>
    </h1>
  </div>
  <div class="col-sm-4">
    <form class="well">
      <h3>Enter Inputs</h3>
      <div class="form-group shiny-input-container">
        <label class="control-label" for="country">Country Name labled id1</label>
        <div>
          <select id="country"><option value="India" selected>India</option>
<option value="UK">UK</option>
<option value="US">US</option></select>
          <script type="application/json" data-for="country" data-nonempty="">{}</script>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <label for="popstart">Starting Population</label>
        <input id="popstart" type="number" class="form-control" value="1"/>
      </div>
      <div id="grwthrt" class="form-group shiny-input-radiogroup shiny-input-container">
        <label class="control-label" for="grwthrt">Checkbox labeled id2</label>
        <div class="shiny-options-group">
          <div class="radio">
            <label>
              <input type="radio" name="grwthrt" id="grwthrt1" value="1" checked="checked"/>
              <span>No Growth</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="grwthrt" id="grwthrt2" value="2"/>
              <span>Increasing @ 10%</span>
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" name="grwthrt" id="grwthrt3" value="3"/>
              <span>Decreasing @ 1%</span>
            </label>
          </div>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <label for="yrs">Years for Prediction</label>
        <input id="yrs" type="number" class="form-control" value="1"/>
      </div>
    </form>
  </div>
</div>

#### The actual app has "Years for Prediction" as "SliderInput". However, it seems there is currently an identified issue with integrating sliderInput into slidify, hence it has been replced by a numeric input.

---

### Illustration of the App (2/2) - Output Interface


<div class="row-fluid">
  <div class="col-sm-8">
    <h3>Illustrating Inputs</h3>
    <h4>You entered - Country</h4>
    <h4>
      <div id="oid1" class="shiny-html-output"></div>
    </h4>
    <h4>You entered - Start Population</h4>
    <h4>
      <div id="oid2" class="shiny-html-output"></div>
    </h4>
    <h4>You entered - Growth Rate option</h4>
    <h4>
      <div id="oid3" class="shiny-html-output"></div>
    </h4>
    <h4>You entered - Projected Years</h4>
    <h4>
      <div id="oid4" class="shiny-html-output"></div>
    </h4>
    <h3>Projected Population - Output</h3>
    <h4>
      <div id="oid5" class="shiny-html-output"></div>
    </h4>
  </div>
</div>

#### **The actual app is located at [http://nsinha.shinyapps.io/shinyapp] (http://nsinha.shinyapps.io/shinyapp)**

---

### **Potential Enhancements**

The app is a very simple implementation of a compounding formulae. There are  enhancements that could make the app more interesting, i.e.

- Integrating data about historical population from a standard web source e.g. UN 
- Using the external data to define the rate of growth and the starting point 
- Provide graphical representation of the population growth over the projection period. 
- Provide relative comparison option with other countries based on additional Country drop down. 

### **Learnings**

- Relative ease in building simple shiny apps i.e. without any external data connectivity or complex visualizations
- Integrating Shiny app in Slidify presentations is tricky.i.e. Understanding the widgets, framework, css to control the layout and the integration of the app

The most tricky part i found in the exercise was controlling the size & layout of the panels in the slides when integrating with Shiny apps (not sure if i have still got it sorted...)

