create table tidy.billboard as 
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,1        as week 
		,"x1st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,2        as week 
		,"x2nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,3        as week 
		,"x3rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,4        as week 
		,"x4th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,5        as week 
		,"x5th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,6        as week 
		,"x6th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,7        as week 
		,"x7th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,8        as week 
		,"x8th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,9        as week 
		,"x9th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,10        as week 
		,"x10th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,11        as week 
		,"x11th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,12        as week 
		,"x12th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,13        as week 
		,"x13th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,14        as week 
		,"x14th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,15        as week 
		,"x15th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,16        as week 
		,"x16th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,17        as week 
		,"x17th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,18        as week 
		,"x18th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,19        as week 
		,"x19th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,20        as week 
		,"x20th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,21        as week 
		,"x21st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,22        as week 
		,"x22nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,23        as week 
		,"x23rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,24        as week 
		,"x24th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,25        as week 
		,"x25th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,26        as week 
		,"x26th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,27        as week 
		,"x27th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,28        as week 
		,"x28th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,29        as week 
		,"x29th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,30        as week 
		,"x30th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,31        as week 
		,"x31st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,32        as week 
		,"x32nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,33        as week 
		,"x33rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,34        as week 
		,"x34th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,35        as week 
		,"x35th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,36        as week 
		,"x36th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,37        as week 
		,"x37th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,38        as week 
		,"x38th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,39        as week 
		,"x39th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,40        as week 
		,"x40th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,41        as week 
		,"x41st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,42        as week 
		,"x42nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,43        as week 
		,"x43rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,44        as week 
		,"x44th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,45        as week 
		,"x45th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,46        as week 
		,"x46th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,47        as week 
		,"x47th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,48        as week 
		,"x48th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,49        as week 
		,"x49th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,50        as week 
		,"x50th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,51        as week 
		,"x51st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,52        as week 
		,"x52nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,53        as week 
		,"x53rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,54        as week 
		,"x54th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,55        as week 
		,"x55th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,56        as week 
		,"x56th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,57        as week 
		,"x57th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,58        as week 
		,"x58th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,59        as week 
		,"x59th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,60        as week 
		,"x60th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,61        as week 
		,"x61st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,62        as week 
		,"x62nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,63        as week 
		,"x63rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,64        as week 
		,"x64th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,65        as week 
		,"x65th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,66        as week 
		,"x66th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,67        as week 
		,"x67th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,68        as week 
		,"x68th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,69        as week 
		,"x69th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,70        as week 
		,"x70th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,71        as week 
		,"x71st.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,72        as week 
		,"x72nd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,73        as week 
		,"x73rd.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,74        as week 
		,"x74th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,75        as week 
		,"x75th.week"      as rank	
	from untidy.billboard
	union all
	select 
		year 
		,artist 
		,track 
		,time
		,genre
		,date_entered
		,date_peaked
		,76        as week 
		,"x76th.week"      as rank	
	from untidy.billboard
;