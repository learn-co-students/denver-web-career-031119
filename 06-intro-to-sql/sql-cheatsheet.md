## Creating a table

```sql
CREATE TABLE table_name (
    id INTEGER PRIMARY KEY,
    some_string TEXT,
    some_integer INTEGER,
    some_decimal REAL
);
```

## Dropping a table

```sql
DROP TABLE IF EXISTS table_name;
```

## Inserting data

```sql
INSERT INTO table_name (
    column_name, other_column_name
) VALUES (
    'some string', 1
), (
    'another string', 1
);
```

## Updating data

```sql
UPDATE table_name
SET column_name = 'new value'
WHERE id = 1;
```

## Deleting data

```sql
DELETE FROM table_name
WHERE id = 1;
```

## Selecting data

```sql
SELECT column_name, other_column_name
FROM table_name
WHERE column_name = 'some value'
AND another_column_name = 'some other value';
```
