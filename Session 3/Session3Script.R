# Code from Session 2 (in case you missed it)
# Q: Why download both R & RStudio? 
# A: R is the language that runs the code & computes statistics. 
# RStudio is the IDE that can allow you to visualize and run code in R easily.

# Easy keyboard shortcuts we all should know:
# Control + L in console to clear anything that's there.
# to remove anything in your environment (variables): rm(list = ls())
# Command/Control + Enter to run code.
# Command/Control + Shift + C = comment code

# Tidyverse, Gapminder, ggsignif, ggpubr should be installed. Code is below.

# install.packages('tidyverse', dependencies = TRUE)
# install.packages('gapminder', dependencies = TRUE)
# install.packages('ggsignif', dependencies = TRUE)
# install.packages('ggpubr', dependencies = TRUE)

# Where can I find syntax, documentation or extra resources?
# ?? = help function in Console
# https://www.rdocumentation.org/
# Google! There's lots of code you'll find on Stack Overflow or other forums.

# Last tip: make sure you know where you're saving your R scripts!

# Objects/Variables (2.2)
my_object <- 5*10
objectOne <- "Hello World"
my_object
objectOne
# Creating vs. Calling Variables. Can use camelCase, snake_case, or.periods. shortcut: Option + -

# Loading Packages
library(tidyverse)
library(gapminder)
library(ggsignif)
library(ggpubr)
# Functions (2.3)
# Basic Structure: functionName(arg1 = val1, arg2 = val2, ...)

# Optional: Read over If Statements (2.5.1) & Loops (4.1)

# Data Frames & Tibbles (3.3) = spreadsheet-like data!
data.frame(gapminder)
str(gapminder)
ncol(gapminder)
nrow(gapminder)

gapminder
# fct is short for “factor” (kind of like a categorical variable),
# int is short for “integer,” and
# dbl is short for “double” (a number with decimal places).

summary(gapminder) # returns a statistical summary of each column
summary(gapminder$lifeExp)
sd(gapminder$lifeExp) # standard deviation
mean(gapminder$lifeExp)
table(gapminder$continent) # returns the number of observations

# na.rm = TRUE for variables/vectors ONLY (3.1.1) --> Removes missing values

# Conditionals: How you check if something is equal to, greater than, less than, not equal to.
# == : is equal to
# != : is not equal to
# > or < or <= or >=
# is.na() : is a NA value 
# Let's go back to our gapminder data. 
# What if I only want data from the year 1987? (Onwards: Chapter 5)
filter(gapminder, year == 1987)

# Life expectancy and year data?
select(gapminder, lifeExp, year)


# Now: life expectancy, year & gdp per capita data for Canada after 1977? 
# pipe operator (command/control + shift + m): first data, then your functions.
gapminder %>%
    filter(year > 1977, country == "Canada") %>%
    select(lifeExp, gdpPercap, year)

# how would I write that ^ without a pipe operator?
select(filter(gapminder, year > 1977, country == "Canada"), lifeExp, gdpPercap, year, country)


# What if I want to create a new variable: gdp?
my_gap <- gapminder
my_gap %>%
    mutate(gdp = pop * gdpPercap)

# What if I wanted this tibble organized by year, and then alphabetical order of country?
my_gap %>%
    arrange(year, country)

# Let's go through a research project together! 

# Research Question: What components of the Human Development Index (as defined by the United Nations Development Programme) are strongly correlated with increased cases and mortality of COVID-19?

# Data: from the JHU COVID-19 Repository + UNDP HDI data 
# Tip: Use a combination of Excel + R to wrangle data! Excel is best for merging datasets, manually removing observations w/ missing values. R is best for arranging it, creating new variables with ease, and statistics.

## creating new variables


## cutting hdi into 4 categories

