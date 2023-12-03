
--
drop table if exists tidy.song;
create table tidy.song (
	song_id serial       not null             
	,artist varchar(250) not null
	,track  varchar(250) not null
	,genre  varchar(250) not null
	,year   int          not null
	,time   varchar(10)  not null
	,date_entered varchar(12) not null
	,date_peaked  varchar(12) not null
	,primary key (song_id)
);

insert into tidy.song (        
	artist
	,track
	,genre
	,year
	,time
	,date_entered
	,date_peaked
) select 
	artist
	,track
	,genre
	,year
	,time
	,date_entered
	,date_peaked
from tidy.billboard 
group by 
	artist
	,track
	,genre
	,year
	,time
	,date_entered
	,date_peaked
;