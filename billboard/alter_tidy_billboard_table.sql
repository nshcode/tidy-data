-- 
alter table tidy.billboard 
	add column song_id integer;
-- 5	
update tidy.billboard b
set song_id = (select song_id from tidy.song s
				where 1 = 1 
					and s.artist       = b.artist
					and s.track        = b.track
					and s.genre        = b.genre
					and s."time"       = b."time" 
					and s."year"       = b."year"
					and s.date_entered = b.date_entered
					and s.date_peaked  = b.date_peaked
				)
;

alter table tidy.billboard drop column artist;
alter table tidy.billboard drop column year;
alter table tidy.billboard drop column time;
alter table tidy.billboard drop column genre;
alter table tidy.billboard drop column track;
alter table tidy.billboard drop column date_entered;
alter table tidy.billboard drop column date_peaked;
