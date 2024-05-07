## Note
#### Please read the simple note below to export your db
- This exports the database to the path you are currently in, while executing this command
- mysqldump -u USER_NAME -p --password=PASSWORD DETAILS_DATABASE > GIVE_THE_FILE_A_NAME.sql

#### Please read the simple note below to import your db
- This imports the database to the path you are currently in, while executing this command
- You might need to explicitly point the file path accordingly
<<<<<<< HEAD
- mysql -u USER_NAME -p --password=PASSWORD DETAILS_DATABASE < THE_FILE_A_NAME.sql
=======
- mysql -u USER_NAME -p --password=PASSWORD_DETAILS DATABASE < THE_FILE_A_NAME.sql

#### INFO
- Note 1: It is better to use the full path of the SQL file file.sql.

- Note 2: Use -R and --triggers with mysqldump to keep the routines and triggers of the original database. They are not copied by default.

- Note 3 You may have to create the (empty) database from MySQL if it doesn't exist already and the exported SQL doesn't contain CREATE DATABASE (exported with --no-create-db or -n option) before you can import it.
>>>>>>> d5cb61969a1aec28e61be931b8c7d8cda82bde92
