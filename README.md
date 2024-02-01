# End-to-End-Data-Engineering-Project-Using-Snowflake
### Description
This project showcases an end-to-end data pipeline for extracting movie-related information from [The Movie Database (TMDb) API](https://developer.themoviedb.org/docs/getting-started), transforming it using Python, and loading it into Snowflake, a cloud-based data warehouse. The goal is to create a streamlined process that enables users to explore and analyze movie data using Power BI for insightful visualizations.
### Architecture Diagram
![image](https://github.com/MuthoniGathu/End-to-End-Data-Engineering-Project-Using-Snowflake/assets/32902183/b2d90ca7-149e-4b12-9f44-4b00f9063433)
### Key Components and Steps:
1. ### Data Extraction from TMDb API:
Utilized Python to interact with TMDb API and extract relevant movie data, including details such as titles, genres, release dates, and ratings.

2. ### Data Storage:
Created a S3 bucket in AWS to store the scraped data .The bucket serves as the storage location for the  data.

3. ### Loading Data into Snowflake:
Established a Snowflake environment and created a storage integration to connect with the S3 bucket.
Designed a Snowflake stage to facilitate the efficient loading of data from S3 into Snowflake.
Executed the data loading process into Snowflake, ensuring data integrity and optimal performance.

4. ### Data Warehouse Creation and Star Schema Design:
 Developed a Snowflake data warehouse to organize and store the movie data.
Created a star schema optimized for analytical queries, comprising fact and dimension tables for efficient data representation.
Below is the star schema I created:
![image](https://github.com/MuthoniGathu/End-to-End-Data-Engineering-Project-Using-Snowflake/assets/32902183/6581b8bb-ed6a-4f91-b771-8608e2e02576)

5. ### Integration with Power BI:
Connected Snowflake to Power BI to visualize and analyze the movie data seamlessly.
Created Power BI dashboards and reports to facilitate data-driven decision-making.

