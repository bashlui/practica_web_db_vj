-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS game_db;
USE game_db;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create scores table
CREATE TABLE IF NOT EXISTS scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    score INT NOT NULL,
    date DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create some sample users (passwords will be hashed by the API)
-- Note: Don't use these in production, they're just for testing
INSERT INTO users (name, username, password, age) VALUES
('Test User', 'test', 'password123', 25),
('Admin User', 'admin', 'admin123', 30)
ON DUPLICATE KEY UPDATE username = username; 