# Food menu management API

This API is designed to manage and administer meal menus, provided to create, read, update and delete meal records from a MySQL database.

## Features

- **Meal CRUD**: Implementation of API endpoints to create, read, update and delete meal records.
- **CORS Security**: Configuration of CORS headers to allow access from any source.
- **Request Handling**: Implementation of logic to handle different types of HTTP requests (GET, POST, PUT, DELETE).
- **MySQL Database**: Use of a MySQL database to store and manage meal data.

## Technologies Used

- PHP
- MySQL
- JavaScript (for integration with the frontend, if applicable)
- Git

## Prerequisites

- PHP 7.0 o superior
- Servidor web compatible (Apache, Nginx, etc.)
- MySQL server

## Installation

1. Clone this repository:
```Bash
git clone https://github.com/KevinJp21/API-Food.git
```
4. Configure the database: Import the database creation script (`Foods.sql`) into your MySQL server.
5. Add your environment variables
```Bash
DB_HOST=host
DB_USER=user
DB_PASSWORD=password
DB_DATABASE=Database name
```
6. Configure the `config.php` file: Make sure to correctly configure the connection credentials to your MySQL database.
7. Start your web server and verify that the project is correctly configured.

## Usage

- **API Endpoints**:
  - `GET /getFood.php`: Obtain all available foods.
  - `GET /getFood.php?id=id`: Get a specific food by its ID.
  - `POST /saveFood.php`: Saves a new food.
  - `PUT /updateFood.php`: Upgrade an existing food.
  - `DELETE /deleteFood.php?id=id`: Delete a specific food by its ID.
  ```
## Author
- [@KevinJp21](https://github.com/KevinJp21)
