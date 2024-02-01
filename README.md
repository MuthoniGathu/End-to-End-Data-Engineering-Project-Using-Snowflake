# End-to-End-Data-Engineering-Project-Using-Snowflake
### Description
This project showcases an end-to-end data pipeline for extracting movie-related information from [The Movie Database (TMDb) API](https://developer.themoviedb.org/docs/getting-started), transforming it using Python, and loading it into Snowflake, a cloud-based data warehouse. The goal is to create a streamlined process that enables users to explore and analyze movie data using Power BI for insightful visualizations.
### Architecture Diagram
![image](https://github.com/MuthoniGathu/End-to-End-Data-Engineering-Project-Using-Snowflake/assets/32902183/b2d90ca7-149e-4b12-9f44-4b00f9063433)
### Key Components and Steps:
1. ### Data Extraction from TMDb API:
Utilized Python to interact with TMDb API and extract relevant movie data, including details such as titles, genres, release dates, and ratings.
2. ### Data Storage
The scraped data is uploaded to an S3 bucket in AWS. The bucket serves as the storage location for the raw data.
