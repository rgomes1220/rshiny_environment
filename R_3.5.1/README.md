### R 3.5.1 Version

A static environment that includes R 3.5.1 (2018-07-02 -- "Feather Spray"), Shiny Server 1.5.9.923, and multiple R packages that can be used for data analysis/visualization. The versions of R packages installed are also static, specific versions can be seen in the mapping in utilities.R.

Starts with  rocker/r-ver:3.5.1 (first line in Dockerfile), which uses Debian:stretch (Debain 9) as a base OS. Other packages are also installed in the Dockerfile which are needed as dependencies for the R packages
