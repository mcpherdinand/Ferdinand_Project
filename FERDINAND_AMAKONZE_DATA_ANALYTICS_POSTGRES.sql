--how many counties have played in the world cup (5 years)
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points
from fifa_2018
)

select 
	count(distinct team)
	from all_world_cup
	
--Q2 get the total games played, wins,loss, goal for and goal against
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,games_played,
	win,
	loss,
	goal_for,
	goal_against
from fifa_2018
)

select 
	sum(games_played) as total_games_played,
	sum(win) as total_games_won,
	sum(loss) as total_games_loss,
	sum(goal_for) as total_goals_scored,
	sum(goal_against) as total_goals_conceeded
from 
	all_world_cup
	
--q3 the country with the highest and lowest appearance in the last 5 world cups
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	count(team) as number_of_appearances
from 
	all_world_cup
group by
	team
order by 
	count(team)desc;

--q4 the country with the highest and lowest games played?

/* DAMILARE'S COMMENT:
Ferdinand, This works in that it shows all the teams and their corresponding games playedin descending order.
But the question is just interestested in seeing the highest and the lowest.
we would discuss this in class tomorrow.
I see you applied the same technique to other questions as well.
Great technique anyways.
*/

with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(games_played) as number_of_games_played
from 
	all_world_cup
group by
	team
order by 
	sum(games_played)desc;

--q5 the country with the highest and lowest games won?
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(win) as number_of_won
from 
	all_world_cup
group by
	team
order by 
	sum(win)desc;

--q6 the country with the highest and lowest games lost?
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(loss) as number_of_games_lost
from 
	all_world_cup
group by
	team
order by 
	sum(loss)desc;

--q7 the country with the highest and lowest goal_for?
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(goal_for) as number_of_goal_for
from 
	all_world_cup
group by
	team
order by 
	sum(goal_for)desc;

--q8  the country with the highest and lowest goal_against?
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(goal_against) as number_of_goal_against
from 
	all_world_cup
group by
	team
order by 
	sum(goal_against)desc;

--q9 the country with the highest and lowest goal_difference?
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(goal_difference) as number_of_goal_difference
from 
	all_world_cup
group by
	team
order by 
	sum(goal_difference)desc;

--q10 the country with the highest and lowest points?
with
	all_world_cup as (
	select 
	'wc_2002' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2002
union all
select 
	'wc_2006' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2006
union all
select 
	'wc_2010' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2010
union all
select 
	'wc_2014' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2014
union all
select 
	'wc_2018' as worldcupyear,
	team,
	points,
	games_played,
	win,
	loss,
	goal_for,
	goal_against,
	goal_difference
from fifa_2018
)

select 
	team,
	sum(points) as number_of_points
from 
	all_world_cup
group by
	team
order by 
	sum(points)desc;
