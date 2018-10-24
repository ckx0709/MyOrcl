--删除表中完全重复的两条数据 
delete from ckx001 where id = (select id from ckx001 group by id having count(1) > 1)
and rowid != (select min(rowid) from ckx001 group by id having count(1) > 1)
/*
分析函数
*/
--排名
select t.*,dense_rank() over(order by t.sarl ) from ckx001 t;
select t.*,rank() over(order by t.sarl ) from ckx001 t;
