-- 코드를 작성해주세요
-- 잡은물고기 
select count(*) as FISH_COUNT from FISH_INFO fi 
inner join FISH_NAME_INFO fni
on fi.FISH_TYPE= fni.FISH_TYPE
 where FISH_NAME in('BASS', 'SNAPPER'); 