USE adlister_db;

TRUNCATE users;
TRUNCATE ads;


INSERT INTO users (id, username, email, password) VALUES
    (1, 'user1', 'user1@example.com', 'password1');
