## load data.table
library(data.table)

## read in data
MFG_DEFECT_DATA <- fread("MFG_DEFECT_DATA.csv")
RETURNS_DATA <- fread("RETURNS_DATA.csv")

## add a new column
MFG_DEFECT_DATA[, MFG_DEFECT_RATE := ITEMS_DEFECTIVE/ITEMS_SAMPLED]

## change date columns to date format
MFG_DEFECT_DATA$MFG_DATE <- as.Date(MFG_DEFECT_DATA$MFG_DATE, "%m/%d/%y")
RETURNS_DATA$MFG_DATE <- as.Date(RETURNS_DATA$MFG_DATE, "%m/%d/%y")

## write data to files
write.csv(MFG_DEFECT_DATA, file="C:/Users/alanc/Desktop/UW Data Analysis Techniques for Descision Making/Data Visualization Essentials/Part 1/Lesson 3 Intro to Power Query and Data Modeling/Lesson 3 Milestone Project 1-1/MFG_DEFECT_DATA.CSV", row.names = FALSE)
write.csv(RETURNS_DATA, file="C:/Users/alanc/Desktop/UW Data Analysis Techniques for Descision Making/Data Visualization Essentials/Part 1/Lesson 3 Intro to Power Query and Data Modeling/Lesson 3 Milestone Project 1-1/RETURNS_DATA.CSV", row.names = FALSE)
