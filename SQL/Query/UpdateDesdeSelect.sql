UPDATE
    h
SET
    h.project_code = ph.project_code
FROM
    header AS h
    INNER JOIN project_header AS ph
        ON h.code = ph.header_code


-- Original:

UPDATE
    Table_A
SET
    Table_A.col1 = Table_B.col1,
    Table_A.col2 = Table_B.col2
FROM
    Some_Table AS Table_A
    INNER JOIN Other_Table AS Table_B
        ON Table_A.id = Table_B.id
WHERE
    Table_A.col3 = 'cool'
    
 --Other
 UPDATE YourTable 
SET Col1 = OtherTable.Col1, 
    Col2 = OtherTable.Col2 
FROM (
    SELECT ID, Col1, Col2 
    FROM other_table) AS OtherTable
WHERE 
    OtherTable.ID = YourTable.ID
