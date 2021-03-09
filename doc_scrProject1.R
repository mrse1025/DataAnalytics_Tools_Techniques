#Web/Document Scrappping Project
#Victoria Espinola BNQ164
#Data Tools and Techniques 

#install.packages("tm")
#install.packages("pdftools")
#install.packages("qdapRegex")

library(tm)
library(pdftools)
library(stringr)
library(plyr)
library(qdapRegex)

#Download the files and change your path when running this code
setwd("~/Desktop/DataAnalytics/Semester2/DataAnalytics_Tools_Techniques")

#Creating the dataframe 
test1 <- pdf_text("teacher4_2017.pdf")
testDF1 <- strsplit(test1, "\n")

test2 <- pdf_text("teacher5_unknown.pdf")
testDF2 <- strsplit(test2, "\n")

test3 <- pdf_text("teacher6.pdf")
testDF3 <- strsplit(test3, "\n")

#data cleaning--for word in line remove number then return new line
no_num1 <- removeNumbers(testDF1)
