CREATE USER 'axman'@'localhost' IDENTIFIED BY 'Secret123#';
CREATE USER 'axman'@'%' IDENTIFIED BY 'Secret123#';

GRANT ALL PRIVILEGES ON *.* TO 'axman'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'axman'@'%';
