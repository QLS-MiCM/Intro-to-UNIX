#!/bin/bash

# Download each file individually using its file ID
# Make sure these file IDs correspond to publicly accessible files

gdown 1kVmJRBGMUt7VIdttcoIW4kkhmjVPFHEF -O cars.csv
gdown 12Du535xhRjNaQNscvpv7xpOS7rc7imPZ -O cars.tsv
gdown 19ZaWB0nIGTCV6-jA4DpgR_ySf5p8ndhc -O countries.txt
gdown 1RjiCsuzrYsLdH2RCnTcOJTm3h7NzBpDE -O happiness.complete.tsv
gdown 1q8se5vZE2k61R50jdl0aYfJmLxoX3QXz -O happiness.complete.txt
gdown 1IonM8Z8J5JDIstQ8tJNYwll5aMu4Pozj -O happiness.csv

echo "Download complete!"

