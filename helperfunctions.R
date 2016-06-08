# Function to download the file is necessary and available
get_download <- function(data_name) {
    # check if data directory exists, if not create
    if (!dir.exists('./data')){
        dir.create('./data')
    }

    if (!file.exists(paste('./data/',data_name))){
        # download the file from cloudfront
        download.file('https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip',
            destfile='./data/activity.zip')
        # unzip the file
        unzip('./data/activity.zip', exdir='./data/')
    }
    return(TRUE)
}

# Function to read the activity data
read_data <- function(fname) {
    data <- read.table(fname, sep=',', header=TRUE)
    data
}
