create table untidy.weather2 as
select 
	substring(rec, 1, length((regexp_match(rec, '\w+'))[1]))     as station
	,substring(rec, length((regexp_matches(rec, '\w+'))[1]) + 1) as l   
from untidy.weather;

-- w Tables
create table untidy.wtmax as
select 
	substring(station, 1, length(station) - 4) as station
	,max(case 
		when substring(station, length(station) - 3, length(station)) = 'TMAX'
		then l
	end) as t
from untidy.weather2
group by substring(station, 1, length(station) - 4);

create table untidy.wtmin as
select 
	substring(station, 1, length(station) - 4) as station
	,max(case 
		when substring(station, length(station) - 3, length(station)) = 'TMIN'
		then l
	end) as t
from untidy.weather2
group by substring(station, 1, length(station) - 4);

create table untidy.wprcp as
select 
	substring(station, 1, length(station) - 4) as station
	,max(case 
		when substring(station, length(station) - 3, length(station)) = 'PRCP'
		then l
	end) as t
from untidy.weather2
group by substring(station, 1, length(station) - 4);

-- w2 Tables
create table untidy.wtmax2 (
	station text not null
	,day    int
	,tmax   int
);

create table untidy.wtmin2 (
	station text not null
	,day    int
	,tmin   int
);

create table untidy.wprcp2 (
	station text not null
	,day    int
	,prcp   int
);

do $$
declare
	i integer;
	x text := '';
	c char;
	c_ char;
	s text;
	l text;
	d int := 0;
	begin
	for s, l in select station, t from untidy.wtmax 
	loop
		d := 0;
		i := 1;
	while i < length(l) - 1 loop
		c := substring(l, i, 1);
		c_ := c;
		while c in ('-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9') loop 
			if c = '-' and c_ = '-' then
				c_ := '';
			elsif c = '-' and c_ != '-' then
				x := '';
				exit;
		     end if;
			x := x || c;
			i := i + 1;
			if i < length(l) -1 then
				c := substring(l, i, 1);
			else
				exit;
			end if;
		end loop;
		i := i + 1;
		if x != '' then
			d := d + 1; 
			raise notice '%', (x::int);
			insert into untidy.wtmax2 values (s, d, (x::int));
		end if;
		x := '';
	end loop;
	end loop;
end;
$$
;
do $$
declare
	i integer;
	x text := '';
	c char;
	c_ char;
	s text;
	l text;
	d int := 0;
	begin
	for s, l in select station, t from untidy.wtmin 
	loop
		d := 0;
		i := 1;
	while i < length(l) - 1 loop
		c := substring(l, i, 1);
		c_ := c;
		while c in ('-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9') loop 
			if c = '-' and c_ = '-' then
				c_ := '';
			elsif c = '-' and c_ != '-' then
				x := '';
				exit;
		     end if;
			x := x || c;
			i := i + 1;
			if i < length(l) -1 then
				c := substring(l, i, 1);
			else
				exit;
			end if;
		end loop;
		i := i + 1;
		if x != '' then
			d := d + 1; 
			raise notice '%', (x::int);
			insert into untidy.wtmin2 values (s, d, (x::int));
		end if;
		x := '';
	end loop;
	end loop;
end;
$$
;
do $$
declare
	i integer;
	x text := '';
	c char;
	c_ char;
	s text;
	l text;
	d int := 0;
	begin
	for s, l in select station, t from untidy.wprcp 
	loop
		d := 0;
		i := 1;
	while i < length(l) - 1 loop
		c := substring(l, i, 1);
		c_ := c;
		while c in ('-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9') loop 
			if c = '-' and c_ = '-' then
				c_ := '';
			elsif c = '-' and c_ != '-' then
				x := '';
				exit;
		     end if;
			x := x || c;
			i := i + 1;
			if i < length(l) -1 then
				c := substring(l, i, 1);
			else
				exit;
			end if;
		end loop;
		i := i + 1;
		if x != '' then
			d := d + 1; 
			raise notice '%', (x::int);
			insert into untidy.wprcp2 values (s, d, (x::int));
		end if;
		x := '';
	end loop;
	end loop;
end;
$$
;
drop table if exists tidy.weather;
create table tidy.weather as 
select 
	substring(tx.station, 1, length(tx.station) - 6)       as station
	,substring(tx.station, length(tx.station) - 5, 4)::int as year
	,substring(tx.station, length(tx.station) - 1, 2)::int as month
	,tx.day 
	,tx.tmax 
	,tm.tmin 
	,pp.prcp
from untidy.wtmax2 tx
	,untidy.wtmin2 tm
	,untidy.wprcp2 pp
where  1 = 1 
	and tx.station = tm.station
	and tx.station = pp.station
	and tx.day     = tm.day
	and tx.day     = pp.day 
;

--select * from tidy.weather where year = 2001;

drop table untidy.weather2;
drop table untidy.wtmax;
drop table untidy.wtmax2;
drop table untidy.wtmin;
drop table untidy.wtmin2;
drop table untidy.wprcp;
drop table untidy.wprcp2;