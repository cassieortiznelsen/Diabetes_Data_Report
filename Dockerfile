# Use official R image
FROM rocker/r-ver:4.3.1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    libnode-dev \
    libx11-dev \
    libwebp-dev \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside container
WORKDIR /home/project

# Copy project files into container
COPY . /home/project

# Make sure report directory exists
RUN mkdir -p /home/project/report

# Install R packages: renv (restores environment) and optionally remotes
RUN R -e "install.packages(c('renv','remotes'), repos='https://cloud.r-project.org/')" \
    && R -e "renv::restore(prompt = FALSE)"

# Default command: render R Markdown report to report/
CMD ["Rscript", "-e", "rmarkdown::render('Diabetes_Data_Analysis.rmd', output_file='/home/project/report/Diabetes_Data_Analysis.html')"]
