# Crowdfunding_ETL
Executive Summary & Introduction

Our goal for this project was to extract and transform a larger dataset, crowdfunding.xlsx. We were able to it down to multiple more manageable dataframes and export those files as CSVs. This information contained campaign donor information, and was cleaned and exported into four files – Category.csv, Subcategory.csv, Campaign.csv, and Contacts.csv – that were more easily loaded into a created schema in our Postgres database. 


Data Collection and Preparation

The data was collected and given to our team as part of the assignment. We browsed through the data to better understand what the xlsx file that we were given contained. Once Bella and I better understood the contents of the file we began to plan out what our next steps would be – what data cleaning was necessary, how we would go about our tasks of extracting and transforming the data, and the creation of the database schema.


Data Exploration and Cleaning

We created four separate csv files which better organized the data. We were able to look at the separate crowdfunding sources and split them into categories and subcategories to better determine which types of activities are the most successful. The other two files began as a list of donors, contact information, pledges and actual donations, and which categories their fundraiser belonged to. We cleaned that file by organizing the columns in a more readable fashion as well as creating the Contacts table which has only the important contact information for each donor from the original sheet. Once we had the csv files created, we structured a database schema in SQL using PGAdmin. We loaded the data into those tables and ensured that the information had properly populated. 


Data Analysis & Conclusion

After looking at the cleaned and loaded data it is clear that fundraising and meeting goals is not as easy as one would hope. Of the 1,000 campaigns that were included in the dataset, 44.2% ended up being classified as either canceled or failed, with some still in progress that could fall in either category. It was interesting that many of these campaigns seem to be more grassroots focused as the average number of backers is 727 people. 
