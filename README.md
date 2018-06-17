### Explorartory Data Analysis Project

## Project Requirements
1. Loading the dataset into R
2. Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
3. Name each of the plot files as plot1.png, plot2.png, etc.
4. Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You should also include the code that creates the PNG file.
5. Add the PNG file and R code file to your git repository

## Project deliverables
1. Global Active Power plot

## Code logic description
1. All 4 plots from project requirements can be created by running "master_script.R" which calls individual scripts
2. Individual plots can be created by running specific scripts (i.e. "plot1.R"). Individual plot scripts are loading data by calling "data_loading_script.R" and plotting functions afterwards.


## Content of the repository
- "data_loading_script.R" - script to load the data from "household_power_consumption.txt" file
- "plot1.R" - script to plot 1st chart from project requirements