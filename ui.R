#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# ui.R
require(shiny)
library(DT)

shinyUI(
    DT::dataTableOutput('mytable')
)