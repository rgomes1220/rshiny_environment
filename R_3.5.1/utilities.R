
#install these R packages and their dependencies
pkgs <- c("tidyverse",
		"formattable",
		"highcharter",
		"stringr",
		"rJava",
		"sqldf",
		"rhandsontable",
		"V8",
		"shinyjs",
		"pander",
		"openxlsx")


install.packages(pkgs, dependencies=TRUE)