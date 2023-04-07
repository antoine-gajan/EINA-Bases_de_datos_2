-- Creacion de las tablas
CREATE TABLE Persons (
	PersonID int PRIMARY KEY,
	LastName varchar(255) NOT NULL,
	FirstName varchar(255) NOT NULL,
	Address varchar(255),
	City varchar(255)
);

CREATE TABLE Coches (
id int PRIMARY KEY,
matricula varchar(10) NOT NULL,
fabricacion date NOT NULL,
marca varchar(20) NOT NULL,
precio decimal(10,2) NOT NULL
);

CREATE TABLE Animales (
	id int PRIMARY KEY,
	tipo varchar(20) NOT NULL,
	edad int NOT NULL CHECK (edad > 0),
	nombre varchar(20) NOT NULL
);

-- Creacion de los usuarios
CREATE USER user1;
CREATE USER user2;
CREATE USER user3;

CREATE ROLE readacces;
CREATE ROLE writeaccess;

-- Grant access to existing tables
GRANT USAGE ON SCHEMA public TO readaccess;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readaccess;

GRANT USAGE ON SCHEMA public TO writeaccess;
GRANT SELECT, INSERT ON ALL TABLES IN SCHEMA public TO writeaccess;


-- Grant access to users
GRANT readaccess TO user1;
GRANT writeaccess TO user2;

-- For user3 (mixt of read and write)
GRANT SELECT, INSERT ON Persons IN SCHEMA public TO user3;
GRANT SELECT ON Animales IN SCHEMA public TO user3;
REVOKE ALL PRIVILEGES ON Coches IN SCHEMA public TO user3;
