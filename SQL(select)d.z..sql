--�������� � ��� ������� ��������, �������� �� 2018 ����:

select  name, year_of_issure
from album_list al 
where year_of_issure <= 2018;


--�������� � ����������������� ������ ����������� �����:

select name, duration 
from track_list tl 
where duration = (select max(duration) from track_list tl2);


--�������� ������, ����������������� ������� �� ����� 3,5 ������:

select name, duration
from track_list tl 
where duration >= 3.5 * 60;


--�������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������:

select name, year_of_issure 
from compilation c 
where 2018 <= year_of_issure and year_of_issure <= 2020;


--�����������, ��� ��� ������� �� 1 �����:

select name 
from list_of_performers lop 
where not name like '%% %%' and not name like '%%.%%' ;


--�������� ������, ������� �������� ����� "�", "�":

select name 
from track_list tl 
where name like '%%a%%' or name like '%%e%%' or name like '%%�%%' or name like '%%�%%' 
 
