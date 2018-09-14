FROM rocker/r-ver:3.5.1

RUN apt-get update && apt-get install -y \
    sudo \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    xtail \
    wget

# Download and install shiny-server-1.5.9.923-amd64
RUN wget --no-verbose "https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-1.5.9.923-amd64.deb" -O shiny-server-1.5.9.923-amd64.deb && \
    gdebi -n shiny-server-1.5.9.923-amd64.deb && \
    rm -f shiny-server-1.5.9.923-amd64.deb && \
    . /etc/environment && \
    R -e "install.packages(c('shiny', 'rmarkdown'), repos='$MRAN')" && \
    cp -R /usr/local/lib/R/site-library/shiny/examples/* /srv/shiny-server/

EXPOSE 3838

COPY shiny-server.sh /usr/bin/shiny-server.sh

RUN chmod 777 /usr/bin/shiny-server.sh

CMD ["/usr/bin/shiny-server.sh"]

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
RUN chmod 777 /home/setupfiles/utilities.R && \
    R -e "source('/home/setupfiles/utilities.R')"

#apt-utils not installed
