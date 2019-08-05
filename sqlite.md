SQLite3 Cheat Sheet

# Info
Download from:
http://www.sqlite.org/download.html
Getting Started:
http://www.sqlite.org/sqlite.html
Documentation:
http://www.sqlite.org/docs.html

# Commands

Open/Create a Database, This is done using the command line program.
```
sqlite3 {database file name}
sqlite3 my_stuff_database.db
```
If the database exists it will be opened, if it doesn’t exist, it will be created (sort of – you’ll need to perform some sort of write operation first)

Print the database structure
```
.schema
```


Print database structure and data
```
.dump
```


Turn on column names on query results
```
.explain on
```
To turn it off do:
```
.explain off
```


This will return the output to the default of pipe-separated values with no column header. Use the following command to see the current ‘explain’ status:
```
.show
```


Creating Tables
```
create table {table name} ('{column name}' {data type} primary key, '{column name}' {data type});
```
Example:
```
CREATE TABLE my_things('id' int primary key, 'name' varchar(20), 'description' varchar(50));
```

Adding a Column to a Table
```
alter table {table name} ADD '{column name}' {data type};
```
Example:
```
alter table my_things ADD 'description' varchar(50);
```
Deleting a table
```
drop table {table name};
```
Example:
```
drop table my_things;
```
Inserting Data into a Table
```
insert into {table name} values ({data}, {more data}, '{yet more data}');
```
Example:
```
insert into my_things values (1, 'My first thing', 'It is nice');
```

Transactions
```
begin transaction;
{put the relevant queries here}
commit;
```
Output query results to a file
```
.output {filename.txt}
```
After entering the above command, the results of subsequent queries will be written to the specified file
Change the output back to being printed to the console by typing the following:
```
.output stdout
```
×
Drag and Drop
The image will be downloaded by Fatkun
