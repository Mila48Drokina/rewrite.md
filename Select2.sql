
select name, duration from Tracks 
ORDER by duration desc 
limit 1;

select name from tracks
where duration >='210';

select name from collection
where year_release between '2018' and'2020';

select name from artists
where name not like '% %';

select name from tracks
where tracks.name contains 'my' or  tracks.name like 'Moi';




