do $$
declare 
	template_query text := 
	'
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,:W        as week 
		,":COL"      as rank	
	from untidy.billboard
	';
	template_query2 text;
	query           text := '';
	total_col_count int;
	col_count       int  := 0;
	x               record;
begin
	select count(*) into total_col_count
	from information_schema.columns
	where 1 = 1
			 and table_name = 'billboard' 
			 and table_schema = 'untidy'
			and column_name not in ('year','artist','track','time',
									'genre','date_entered','date_peaked'
								);			
	for x in select 
				column_name                                    as col 
				,(regexp_match(column_name, '[1-9][0-9]*'))[1] as w
		     from information_schema.columns
		     where 1 = 1
			 and table_name = 'billboard' 
			 and table_schema = 'untidy'
			and column_name not in ('year','artist','track','time',
									'genre','date_entered','date_peaked'
									)
	loop 
		template_query2 := template_query;
		template_query2 := replace(template_query2, ':COL', x.col);
		template_query2 := replace(template_query2, ':W', x.w);
		query           := query || template_query2;
		col_count       := col_count + 1;
		if col_count < total_col_count then 
			query := query || 'union all';
		end if;
	end loop;
	raise notice '%', query;
end 
;
$$
