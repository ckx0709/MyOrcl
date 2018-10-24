--删除表中完全重复的两条数据 
delete from ckx001 where id = (select id from ckx001 group by id having count(1) > 1)
and rowid != (select min(rowid) from ckx001 group by id having count(1) > 1)