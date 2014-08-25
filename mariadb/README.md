MariaDB
=============

A Docker build which runs just MariaDB.

You can set the root MySQL password by passing the `MYSQL_ROOT_PASSWORD` as an environment variable (if nothing is passed then the password will be randowm, be carefull !!!). You can also create a database by setting and passing the following ...

- `MYSQL_DATABASE` = Name of the database to create
- `MYSQL_USER` = Username for the database you defined in `MYSQL_DATABASE`
- `MYSQL_PASSWORD` = Password for the user created in `MYSQL_USER`

You can lauch a continer by using ...

```
docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=y0Urp455w0rd -e MYSQL_DATABASE=wibble -e MYSQL_USER=rah -e MYSQL_PASSWORD=y0UrDbP455w0rD russmckendrick/maria
```

Once running you can connect with ...

```
mysql --host=localhost --protocol=TCP -p
```