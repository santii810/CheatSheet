SELECT 'ALTER TABLE [' + l.schema_n + '].[' 
       + l.table_name + '] ALTER COLUMN [' 
       + l.column_name + '] ' + l.data_type + '(' 
       + Cast(l.new_max_length AS NVARCHAR(100)) 
       + ') COLLATE ' + l.dest_collation_name + ';', 
       l.schema_n, 
       l.table_name, 
       l.column_name, 
       l.data_type, 
       l.max_length, 
       l.collation_name 
FROM   (SELECT Row_number() 
                 OVER ( 
                   ORDER BY c.column_id) AS row_id, 
               Schema_name(o.schema_id)  schema_n, 
               ta.NAME                   table_name, 
               c.NAME                    column_name, 
               t.NAME                    data_type, 
               c.max_length, 
               CASE 
                 WHEN c.max_length = -1 
                       OR ( c.max_length > 4000 ) THEN 4000 
                 ELSE c.max_length 
               END                       new_max_length, 
               c.column_id, 
               c.collation_name, 
               'Modern_Spanish_CI_AS'            dest_collation_name 
        FROM   sys.columns c 
               INNER JOIN sys.tables ta 
                       ON c.object_id = ta.object_id 
               INNER JOIN sys.objects o 
                       ON c.object_id = o.object_id 
               JOIN sys.types t 
                 ON c.system_type_id = t.system_type_id 
               LEFT OUTER JOIN sys.index_columns ic 
                            ON ic.object_id = c.object_id 
                               AND ic.column_id = c.column_id 
               LEFT OUTER JOIN sys.indexes i 
                            ON ic.object_id = i.object_id 
                               AND ic.index_id = i.index_id 
        WHERE  1 = 1 
               AND c.collation_name = 'SQL_Latin1_General_CP1_CI_AS' 
       --'French_CI_AS'-- ALTER DONE YET OLD VALUE :'SQL_Latin1_General_CP1_CI_AS' 
       ) l 
ORDER  BY l.column_id;




--- https://stackoverflow.com/questions/18122773/change-collations-of-all-columns-of-all-tables-in-sql-server
