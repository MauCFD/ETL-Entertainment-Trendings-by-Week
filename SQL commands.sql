-- We will create our Top Movies & Top Songs Tables
CREATE TABLE top_movies (
  "year_week" VARCHAR(10) PRIMARY KEY,
  top_movie VARCHAR(90)
);

CREATE TABLE top_songs (
  "year_week" VARCHAR(10) PRIMARY KEY,
  top_song VARCHAR(90)
);

-- After loading data from our jupyter notebook, we will verify the load
SELECT * FROM top_movies;
SELECT * FROM top_songs;