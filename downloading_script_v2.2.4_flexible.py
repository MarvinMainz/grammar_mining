#!/usr/bin/env python3

import requests
import csv
import certifi
import getpass
import os
from tkinter import Tk
from tkinter.filedialog import askopenfilename
from tkinter import filedialog
import warnings
from urllib3.exceptions import InsecureRequestWarning

# Define the website URL
url = "https://130.60.24.118/gramfinder/p/"

# Prompt user for username and password
username = input("Enter your username: ")
password = getpass.getpass("Enter your password: ")

# Define the session object and authenticate
session = requests.Session()

# Ignore certificate errors
session.verify = False

# Ignore warning about the missing verification
warnings.filterwarnings('ignore', category=InsecureRequestWarning)

session.auth = (username, password)

# Prompt user to select the CSV file containing the filenames
# input in csv has to have the form, e.g. "south_america/filename.pdf" 
Tk().withdraw() # Hide the Tkinter root window
filename = askopenfilename(title="Select input file (csv)", filetypes=[("CSV files", "*.csv")])

# Ask the user to select a directory to save the files to
root = Tk()
root.withdraw()
folder_path = filedialog.askdirectory(title="Select output folder")

# Open the CSV file containing the filenames
try:
    with open(filename, mode='rt', encoding='utf-8') as file:
        # Parse the CSV file and iterate over each row
        csv_reader = csv.reader(file)
        for row in csv_reader:
            # Get the filename from the current row
            filename = row[0]

            # Make a request to download the file
            try:
                response = session.get(url + filename)
                response.raise_for_status()
            except requests.exceptions.HTTPError as err:
                print(f"HTTP error occurred: {err}")
                continue

            # Create the directory if it doesn't exist
            directory = os.path.join(folder_path, os.path.dirname(filename))
            if not os.path.exists(directory):
                os.makedirs(directory)

            # Write the file to disk in the selected directory
            try:
                with open(os.path.join(folder_path, filename), 'wb') as f:
                    f.write(response.content)
            except IOError as err:
                print(f"IO error occurred: {err}")
                continue
except FileNotFoundError as err:
    print(f"Error opening CSV file: {err}")
