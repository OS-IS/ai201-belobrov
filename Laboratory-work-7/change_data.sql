CREATE OR REPLACE FUNCTION change_data(attr1 VARCHAR, attr2 VARCHAR)
RETURNS VOID AS $$
DECLARE
    query TEXT;
BEGIN
    query := 'UPDATE teacher SET name = ''' || attr2 || ''' WHERE name = ''' || attr1 || ''';';
    EXECUTE query;
END;
$$ LANGUAGE plpgsql;
