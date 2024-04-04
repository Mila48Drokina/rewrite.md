select m.name, count(ar.name) from musical_genre m
join genre_artisits am on m.id = am.musical_genre_id 
join artists ar on am.artist_id = ar.id 
group by m.name;

select count(t.id) from tracks t 
join albums al on t.album_id = al.id 
where al.year_of_release between 2019 and 2020;

select al.name, avg(t.duration) from albums al
join tracks t on al.id = t.album_id
group by al.name;

select name from artists ar
where name not in (select ar.name from artists ar
join albumsartists aa on ar.id = aa.artist_id
join albums al on aa.album_id = al.id
where al.year_of_release = 2020);

select DISTINCT Collection_title from Collection c 
join track_collection mr on c.id =mr.id_collection
join albums a on mr.id_Track  = t.id
join albumsartists ma on a.id = ma.id_album
join artists m on a ma.id_artist_id = m.id
where artist LIKE 'Oleg_Gazmanov';

