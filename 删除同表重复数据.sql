--ɾ��������ȫ�ظ����������� 
delete from ckx001 where id = (select id from ckx001 group by id having count(1) > 1)
and rowid != (select min(rowid) from ckx001 group by id having count(1) > 1)
/*
��������
*/
--����
select t.*,dense_rank() over(order by t.sarl ) from ckx001 t;
select t.*,rank() over(order by t.sarl ) from ckx001 t;
