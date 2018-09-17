
#install these R packages and their dependencies
install.packages("devtools")

pkgs = list(
    "tidyverse"="1.2.1",
    "formattable"="0.2.0.1",
    "highcharter"="0.5.0",
    "stringr"="1.3.1",
    "rJava"="0.9-10",
    "sqldf"="0.4-11",
    "rhandsontable"="0.3.6",
    "V8"="1.5",
    "shinyjs"="1.0",
    "pander"="0.6.2",
    "openxlsx"="4.1.0",
    "manipulateWidget"="0.10.0",
    "flexdashboard"="0.5.1.1"
  )

for(i in 1:length(names(pkgs))){
    pkg = names(pkgs)[i]
    vrsn = pkgs[[i]]
		devtools::install_version(pkg, version = vrsn,
								repos = "https://cran.r-project.org", dependencies=TRUE,type="source")


  }

remove.packages("ggplot2") #version 3.0 is installed as a tidyverse dependency
devtools::install_version("ggplot2", version = "2.2.1",repos = "https://cran.r-project.org", dependencies=TRUE,type="source")


remove.packages("plotly") #4.8.0 does not load with ggplot2<3.0, downgrading
# needs dependencies=FALSE
devtools::install_version("plotly", version = "4.7.1",repos = "https://cran.r-project.org", dependencies=FALSE,type="source")
