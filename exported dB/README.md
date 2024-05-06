## Note
#### Please read the simple note below to export your db
- This exports the database to the path you are currently in, while executing this command
- mysqldump -u USER_NAME -p --password=PASSWORD_DETAILS DATABASE > GIVE_THE_FILE_A_NAME.sql

#### Please read the simple note below to import your db
- mysql -u USER_NAME -p --password=PASSWORD_DETAILS DATABASE < THE_FILE_A_NAME.sql