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
![image](https://github.com/MuthoniGathu/End-to-End-Data-Engineering-Project-Using-Snowflake/assets/32902183/30b20812-d440-49c6-92ba-03d5e33e3a4c)

### Insights from Visualizations:

* **_Top Rated Movies Analysis:_**

To achieve a top-rated movie, an average budget of approximately $23.93 million is recommended.
The expected revenue for such a movie is around $70.84 million, resulting in a profit of approximately $46.9 million.

* **_Profitable Genres (Top 5):_**

Adventure movies lead as the most profitable genre, contributing to 17% of the overall profit.
Action follows closely at 16%, indicating its strong profitability.
Comedy secures the third position with a contribution of 13% to the overall profit.
Drama holds the fourth position with an 11% share of the total profit.
Sci-fi rounds up the top 5 genres with a respectable 9% contribution to the overall profit.

* **_Most Profitable Production Companies (Top 5):_**

Universal Pictures stands out as the most profitable production company.
Warner Bros, 20th Century Fox, Columbia Pictures, and Paramount also make it to the top 5 most profitable production companies.

* **_Optimal Release Months:_**

The analysis suggests that June and December are the most favorable months to release a movie.
Conversely, January is identified as the least favorable month for movie releases.

---

**🎬 Explore the World of Movies 🌐**

This project is part of a comprehensive ETL pipeline and visualization solution for movie data. Dive into the insights, analyze trends, and make informed decisions in the dynamic world of the entertainment industry.

🚀 **Contributions Welcome:** Feel free to contribute, report issues, or suggest enhancements. Let's collaborate to make this project even better!

📧 **Contact:** For inquiries or collaboration opportunities, please reach out to me via [email](gathupenninah@gmail.com) or [LinkedIn](https://www.linkedin.com/in/penninah-gathu/) .

---




