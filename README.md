# Spring Security
This is demo project for the spring boot to implementing spring security.

## Prerequisite: 
```
Java 8 or higher
Eclipse or IntelliJ Idea  >import as maven project
MySQL or PostgreSQL Database or any RDBMS
```

## Usage :
```
- Add the maven package acording to your database in pom.xml
- Change the Database link in application.properties
- Change the Databse username and Password with yours
- Make the database entry in Role table
- Register the user at signup page
- Assign the role manualy by doing the entry in db user_table_roles (hibernate generated)
- Now do the login at `localhost:8080/` 
- you can change the configuration under the package name `config.security`
```
