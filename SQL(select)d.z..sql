--Название и год выпуска альбомов, вышедших до 2018 года:

select  name, year_of_issure
from album_list al 
where year_of_issure <= 2018;


--название и продолжительность самого длительного трека:

select name, duration 
from track_list tl 
where duration = (select max(duration) from track_list tl2);


--название треков, продолжительность которых не менее 3,5 минуты:

select name, duration
from track_list tl 
where duration >= 3.5 * 60;


--названия сборников, вышедших в период с 2018 по 2020 год включительно:

select name, year_of_issure 
from compilation c 
where 2018 <= year_of_issure and year_of_issure <= 2020;


--исполнители, чье имя состоит из 1 слова:

select name 
from list_of_performers lop 
where not name like '%% %%' and not name like '%%.%%' ;


--название треков, которые содержат букву "а", "е":

select name 
from track_list tl 
where name like '%%a%%' or name like '%%e%%' or name like '%%а%%' or name like '%%е%%' 
 
