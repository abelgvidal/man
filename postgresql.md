# PostgreSQL

## Connect with PostgreSQL

Log in as the newly created postgres user (after installing postgresql).

```bash
su - postgres # only in linux, in OSX skip this
psql # Start the console
\h # Gives you a list of available SQL commands. 
\h [command] # Display [command] usage
```

## Create database

> createdb name_of_db

## Connect to database

> \c name_of_db

## Create user and grant permissions

> CREATE USER milestone WITH PASSWORD "milestone";
ERROR: syntax error at or near ""milestone""

> CREATE USER milestone WITH PASSWORD 'milestone';
> GRANT ALL ON DATABASE dbTest TO milestone;
> GRANT ALL ON DATABASE "name_of_db" TO milestone;
> GRANT
> \c - milestone
> FATAL: Peer authentication failed for user "milestone"

You have to tell PostgreSQL: milestone is allowed to log in via password. This happens in the file /etc/postgresql/9.1/main/pg_hba.conf . Either change this line

> local all all peer

to

> local all all md5

or add the following line if you only want it to hold for the milestone user:

> local all milestone md5

This line has to be placed before the rule that is valid for all users or it will not work. Like this:

> local all milestone md5
> local all all md5

Finally the PostgreSQL service needs to be restarted. Pick one of (if it does not work, see below for pg_ctl ):

```
> service postgresql restart
> /etc/init.d/postgresql restart
```

# Permissions on tables

```
> name_of_db=# \dn
> List of schemas
> Name | Owner 
> --------+----------
> public | postgres
> (1 row)
```

So our milestone user needs access to dbTest.public.* , both for all tables as well as sequences. 

```
> name_of_db=# GRANT ALL ON ALL TABLES IN SCHEMA public TO milestone;
> name_of_db=# GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO milestone;
```

## Autoincrement

```
> name_of_db=# CREATE TABLE foo (id serial PRIMARY KEY, bar text);
```

## Show tables

```
> postgres=# \l # SHOW DATABASES
> postgres=# \dt # SHOW TABLES
> postgres=# \d myTable # DESCRIBE myTable
```

## Import file

```
> \i /dir1/dir2/file.sql
```
