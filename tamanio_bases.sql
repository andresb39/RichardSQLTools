select DB_NAME(database_id) base,
       type_desc,
       sum(size)/128 tama�o
from sys.master_files
group by database_id,type_desc
order by tama�o	desc