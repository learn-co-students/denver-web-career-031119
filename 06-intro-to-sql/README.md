## Intro to SQL

### Create tables with SQL

SQLite3 Cheatsheet:

* Create a new database: `sqlite3 database_name`
* Quit `sqlite3`: `Ctrl+D`
* Run SQL from a file against a SQLite database: `sqlite3 database_name < sql_file_name`

### Insert, update, and delete data with SQL

* Enter this database with `sqlite3 music.db`
* See what's in the `albums` table with `SELECT * from albums;`

Insert:

| title              | tracks | artist          |
| ------------------ | ------ | --------------- |
| Hot Fuss           | 10     | The Killers     |
| Turn The Radio Off | 16     | Reel Big Fish   |
| Yank Crime         | 9      | Drive Like Jehu |

Update: Yank Crime to have 11 tracks because of the extended edition

Delete: Hot Fuss

### Retrieve simple data with SQL

Movies:

| title                   | year | director       |
| ----------------------- | ---- | -------------- |
| Being John Malkovich    | 1999 | Spike Jonze    |
| Die Hard                | 1988 | John McTiernan |
| Wet Hot American Summer | 2001 | David Wain     |
| Role Models             | 2008 | David Wain     |
