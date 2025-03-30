# **University Rankings Analysis**

## **Project Overview**
This project aims to analyze university rankings across different ranking systems, examining factors such as student-staff ratio, international student percentage, and ranking scores. The study investigates trends, correlations, and relationships between university attributes and ranking scores over time.

## **Dataset Description**
The dataset consists of multiple tables:
- **Country**: Contains country names and IDs.
- **Ranking Criteria**: Lists ranking criteria used by different systems.
- **Ranking System**: Provides details about university ranking systems.
- **University**: Contains university information, including country associations.
- **University Ranking Year**: Tracks ranking scores for universities over different years.
- **University Year**: Contains university-specific data like student-staff ratio and international student percentage.

## **Key Research Questions**
1. **Common Ranking Criteria**: What criteria are used across multiple ranking systems?
2. **Ranking Trends**: How have university rankings changed over time?
3. **Student Attributes & Rankings**: What is the relationship between ranking scores and student-staff ratio or international student enrollment?
4. **Universities per Country**: How does the number of universities differ among countries?

## **Analysis and Methods**
- **SQL Queries**: Used to extract insights from the database.
- **Visualization**: Bar charts, line graphs, and correlation plots generated using Python (Matplotlib, Seaborn) to interpret trends.
- **Statistical Analysis**: Correlation analysis was performed to identify relationships between ranking scores and university attributes.

## **Findings Summary**
- **Common Ranking Criteria**: Research and Teaching are the most frequently used ranking factors.
- **Ranking Trends**: Scores fluctuate yearly due to methodology changes and institutional performance.
- **International Students' Influence**: A positive correlation was found between international student enrollment and ranking scores.
- **Student-Staff Ratio**: No significant correlation was found with ranking scores.
- **University Distribution**: The number of universities varies widely across countries.

## **Future Work**
- Incorporate **GDP data** to analyze its impact on higher education.
- Study **ranking criteria weights** and how they change over time.
- Expand dataset coverage for deeper insights into historical trends.

## **How to Use This Project**
1. **Data Exploration**:
   - Load the dataset into SQL for querying.
   - Use provided SQL queries to extract specific insights.
2. **Visualization & Analysis**:
   - Use Python scripts to generate graphs and trends.
   - Perform further statistical analysis using tools like Pandas and Seaborn.
3. **Extend the Analysis**:
   - Modify SQL queries to include additional factors.
   - Integrate external data sources for enriched insights.

## **References**
- University ranking datasets
- SQL-based queries for data analysis
- Visualization tools: Matplotlib, Seaborn

**End of README**

