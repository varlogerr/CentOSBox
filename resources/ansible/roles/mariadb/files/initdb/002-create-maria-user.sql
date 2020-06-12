CREATE USER 'maria'@'localhost' IDENTIFIED BY 'Secret123#';
CREATE USER 'maria'@'%' IDENTIFIED BY 'Secret123#';

GRANT ALL PRIVILEGES ON *.* TO 'maria'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'maria'@'%';
