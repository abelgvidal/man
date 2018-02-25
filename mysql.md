# MySQL

## Enable remote connections

> vim /etc/mysql/my.cnf

> bind-address = 127.0.0.1 to #bind-address = 127.0.0.1


## Allow user remote access

> GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' IDENTIFIED BY 'passwd';

or 

> GRANT ALL PRIVILEGES ON db_name.table_name TO 'user'@'%' IDENTIFIED BY 'passwd';

or 

> GRANT ALL PRIVILEGES ON *.* TO 'user'@'12.46.46.55' IDENTIFIED BY 'passwd';


## How to export

> mysqldump -uusername -p -h hostname --port 3306 somedb > somedb.sql

or 

>  mysqldump -uusername -p -h hostname --port 3306 --all-databases > somedb.sql

## How to import 

> mysql -uusername -p -h hostname --port 3306 somedb < somedb.sql

## Kill query

> CALL mysql.rds_kill_query(id);
> CALL mysql.rds_kill(id);
