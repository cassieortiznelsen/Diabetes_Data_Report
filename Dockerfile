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

# Install renv and restore environment
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org/')" \
    && R -e "renv::restore(prompt = FALSE)"
    

# Default command: render your report
CMD ["Rscript", "-e", "rmarkdown::render('Diabetes_Data_Analysis.rmd', output_dir='report')"]


