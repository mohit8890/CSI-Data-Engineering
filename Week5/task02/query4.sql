-- Clear destination tables
DELETE FROM Students;
DELETE FROM Teachers;

-- Create a configuration mapping table for dynamic column extraction
CREATE TABLE TableColumnMap (
    TableName NVARCHAR(100),
    ColumnList NVARCHAR(MAX)
);

-- Insert mappings: define which columns to copy from each table
INSERT INTO TableColumnMap (TableName, ColumnList)
VALUES
    ('Students', 'StudentID, FirstName'),
    ('Teachers', 'TeacherID, Subject');

-- Use this query in lookup activity in Azure Data Factory (or any pipeline tool)
SELECT TableName, ColumnList FROM TableColumnMap;

-- Dummy table for testing in source (shiv33/shivankur-db1)
CREATE TABLE DummyTable (
    DummyCol VARCHAR(10)
);

-- Copy activity SQL override expression (for pipeline dynamic content):
-- This is used in ADF's Source Query setting when iterating over lookup values
@concat('SELECT ', item().ColumnList, ' FROM ', item().TableName)
