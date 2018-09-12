FROM rocker/shiny:3.5.1



RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite3-dev \
  libmariadbd-dev \
  libssl-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  unixodbc-dev \ 
  #resources for java needed for rJava, sqldf
  default-jdk \
  libbz2-dev \
  liblzma-dev \
  #needed for r package v8 which is used in shinyjs
  libv8-3.14-dev \
  # creates a directory to be used for setup
  && mkdir /home/setupfiles

#copy local utilities.R file to image
COPY utilities.R /home/setupfiles/utilities.R

#execute R file
RUN R -e "source('/home/setupfiles/utilities.R')"
#apt-utils not installed