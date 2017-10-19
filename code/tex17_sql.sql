#tex17_sql.sql
###TEXATA 2017 SQL Queries
###Adam Vaccaro (avaccaro@usc.edu)

###Queries:
#Top 25 Song - Artist with genre
SELECT
  track_name,
  artist_name,
  tags,
  COUNT(recording_msid) AS cnt
FROM
  `listenbrainz.listenbrainz.listen`
GROUP BY
  track_name,
  artist_name,
  tags
ORDER BY
  cnt DESC
LIMIT
  25

#Top 25 Artists
SELECT
  artist_name,
  COUNT(artist_msid) AS cnt
FROM
  `listenbrainz.listenbrainz.listen`
GROUP BY
  artist_name,
ORDER BY
  cnt DESC
LIMIT
  25

#Top 25 Genres
SELECT
  tags,
  COUNT(tags) AS cnt
FROM
  `listenbrainz.listenbrainz.listen`
GROUP BY
  tags
ORDER BY
  cnt DESC
LIMIT
  25

 #All songs with tags
 SELECT
 	listened_at,
 	user_name,
 	artist_name,
 	track_name,
 	recording_msid,
 	tags,
 FROM
  `listenbrainz.listenbrainz.listen`
 WHERE
 	tags ~= ""

  #download as .csv

