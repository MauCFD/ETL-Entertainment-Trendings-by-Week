# ETL-Entertainment-Trendings-by-Week

## Project description
Ever wonder the hit song or the blockbuster movie in a specific date?
The project provides the best songs and movies recorded over a 20-year period in the United States (1999 - 2019).

## Sources & Extraction 
The project considers 2 data sources:
  * Movie’s data: www.boxofficemojo.com . Data extracted by using web scrapping.
  * Song’s data: https://www.kaggle.com/danield2255/data-on-songs-from-billboard-19992019 . Data extracted in CSV format.
  
## Transformation
  * Movie´s data:
      * Creating a list which will include the dictionaries we are going to scrap for every week in a 20-year range.
      * Stablishing our URL for every year.
      * Using requests and Beautiful Soup for the scrapping.
      * Creating dictionaries with the information retrieved for every week and append them on our created list.
      * Converting our movie information into data frame.
      * Renaming movie column.
     
  * Song´s data:
      * Dropping other rated songs (2nd, 3rd, 4th... 100th) since we only need rating No 1, and other columns not needed.
      * Converting the "Week" column to datetime objects.
      * By using the datetime objects we transformed, create the "Year" column.
      * Using that same column to retrieve the week number from the datetime objects.
      * Merging the "Name" and the "Artist" columns so that we can store the song in just one column.
      * Dropping columns not needed and resetting the index so that they have a similar format to the movies data frame.
      
 ## Loading
      Creating table schemas:
            CREATE TABLE top_movies(“year_week”  VARCHAR (10) PRIMARY KEY, top_movie VARCHAR (90).
            CREATE TABLE top_songs(“year_week”  VARCHAR (10) PRIMARY KEY, top_song VARCHAR (90).
      Creating database connection
            Connection string: "postgres:postgres@localhost:5432/”.
            Engine: “create_engine(f’postgresql://{connection_string}’)”.
       Confirming tables.
       Loading data frames into database.
       Loading data base.
       
## Additional considerations

The difference in records between the "Top_Movies" and "Top_Songs" are due to the starting and ending dates of data available. Moreover, we also noticed some gaps in the "Top_Song" data; the reason for this was that some dates are not uniformly distributed in 7 days steps and therefore the dt.week conversion doest not provide a sequential value.




