# Crowdfunding_ETL

### Executive Summary & Introduction

The objective of the Crowdfunding ETL (Extract, Transform, Load) project was to extract data from the given "crowdfunding.xlsx" dataset, transform it into multiple more manageable dataframes, and load the cleaned data into a Postgres database. The dataset contained information about crowdfunding campaigns, including campaign donor information. The data was cleaned, organized, and exported into four CSV files - Category.csv, Subcategory.csv, Campaign.csv, and Contacts.csv - for easy loading into the database schema.


### Data Collection and Preparation


The raw data in the form of an "xlsx" file was provided to the team for analysis. The team browsed through the data to understand its structure and contents. Upon understanding the data, the team planned the necessary data cleaning steps, extraction, transformation, and the creation of the database schema.


### Data Exploration and Cleaning


The data exploration and cleaning process involved the following steps:


Created separate CSV files for better data organization:

Category.csv: Contains unique categories along with sequential category IDs.

Subcategory.csv: Contains unique subcategories along with sequential subcategory IDs.

Campaign.csv: Contains information about individual campaigns, including "cf_id," "contact_id," "company_name," "description," "goal," "pledged," "backers_count," "country," "currency," "launch_date," "end_date," "category_id," "subcategory_id," and the four-digit contact ID from the "contacts.xlsx" file.

Contacts.csv: Contains contact information of donors with columns "contact_id," "first_name," "last_name," and "email."

Cleaned and organized the "Campaign.csv" file:


Renamed columns "blurb" to "description," "launched_at" to "launch_date," and "deadline" to "end_date."

Split "category & sub-category" into separate "category" and "subcategory" columns.

Converted "goal" and "pledged" columns to float data types.

Formatted "launch_date" and "end_date" columns into datetime format.

Extracted and organized unique categories and subcategories:


Created Category DataFrame with columns "category_id" and "category."

Created Subcategory DataFrame with columns "subcategory_id" and "subcategory."

Exported both DataFrames as CSV files.

Extracted and organized contact information:


Iterated through the "contact_info_df" and created a "Contacts" DataFrame with columns "contact_id," "first_name," "last_name," and "email."

Exported the "Contacts" DataFrame as a CSV file.


### Data Analysis & Conclusion


After analyzing the cleaned and loaded data, it was observed that fundraising and meeting campaign goals is challenging. Out of the 1,000 campaigns in the dataset, 44.2% ended up as either canceled or failed, with some still in progress that could fall into either category. Additionally, it was noted that many campaigns seemed to have a grassroots focus, as the average number of backers was 727 people.


### Code and Output


The project involved the use of Python and Pandas for data manipulation, extraction, and transformation. The code used for data cleaning, creation of DataFrames, and exporting CSV files is provided in the code/output section.


###  Dependencies


The project requires the following dependencies to be installed:

Pandas

NumPy


### How to Use


To replicate the ETL process:


Ensure you have the necessary dependencies installed.

Place the "crowdfunding.xlsx" and "contacts.xlsx" files in the "Resources" folder.

Execute the provided Python code in a Jupyter Notebook or any Python environment.

The code will create and export the CSV files for Category, Subcategory, Campaign, and Contacts.

The generated CSV files can then be used to load data into a Postgres database.
