# Intro to UNIX

## Prerequisites
Before participating in this workshop, attendees should have:

1. A computer with some free disk space, running a current version of Windows, macOS, or Linux.
2. Terminal access (see WSL installation below for Windows users)

## Summary
This workshop introduces participants to the fundamentals of UNIX operating system, basic commands, syntax and shell scripting.

# Installation Guide for WSL as a prerequisite

## Installation of WSL on Windows

1. **Enable the Windows Subsystem for Linux**

   Open PowerShell as Administrator and run:
   ```powershell
   wsl --install
   ```

2. **Set up your Linux distribution**

   After installation, you will need to set up your Linux distribution (e.g., Ubuntu). Restart your computer if necessary.

# Obtaining the Workshop Data

Before you begin the workshop, you'll need to download the required data files. We provide a convenient shell script (`download_data.sh`) to automate this process.

### Steps to Download the Data

1. **Open your Terminal or WSL Terminal (for Windows users).**
2. **Clone the Workshop Repository**
   Open your Terminal or WSL Terminal and run
   ```bash
   git clone https://github.com/QLS-MiCM/Intro-to-UNIX.git
   ```
3. **Navigate to the Repository's Root Directory**
   ```bash
   cd Intro-to-UNIX
   ```
4. **Navigate to the Data Directory**
   From the root of the repository, change to the directory where the download script is located:
   ```bash
   cd Exercises/data
   ```
5. **(Optional) Install or Upgrade gdown**
   Ensure you have Python and pip installed, then install or upgrade `gdown` by running:
   ```bash
   pip install --upgrade gdown
   ```
6. **Make the Download Script Executable**
   Set the appropriate permissions on the script:
   ```
   chmod +x download_data.sh
   ```
7. **Run the download script**

   Execute the script to download all required files into the current folder

   ```bash
   ./download_data.sh
   ```
   
The script uses gdown to download files directly from Google Drive. You should see output indicating the progress of the downloads. Once complete, the necessary files (e.g., cars.csv, cars.tsv, countries.txt, happiness.complete.tsv, happiness.complete.txt, and happiness.csv) will be available in the Exercises/data directory.

By following these steps, you'll have all the necessary data to participate in the "Intro to UNIX" workshop. If you have any issues, please verify that you have the required tools installed (such as Python and pip) and that your network allows downloads from Google Drive.

Enjoy the workshop!
