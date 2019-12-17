-- Login único por servidor
CREATE LOGIN my_login WITH PASSWORD = 'abc123..';
ALTER LOGIN my_login WITH CHECK_POLICY = OFF;
ALTER LOGIN my_login WITH PASSWORD = 'new_password';
-- User distinto en cada base de datos
CREATE USER my_login FOR LOGIN my_login;  
GRANT ALL TO my_login;


--Lista usuarios
select * from master.sys.server_principals
--Lista usuarios quitando algunos de sistema
SELECT * FROM sys.database_principals WHERE type_desc = 'SQL_USER' AND default_schema_name = 'dbo';
