-- Login único por servidor
CREATE LOGIN opt WITH PASSWORD = 'abc123..';
ALTER LOGIN opt WITH CHECK_POLICY = OFF;
ALTER LOGIN opt WITH PASSWORD = 'opt';
-- User distinto en cada base de datos
CREATE USER opt FOR LOGIN opt;  
GRANT ALL TO opt;


select * from master.sys.server_principals

SELECT * FROM sys.database_principals WHERE type_desc = 'SQL_USER' AND default_schema_name = 'dbo';
