CREATE OR REPLACE FUNCTION get_data(attr_val VARCHAR)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, access_level INTEGER) AS $$
DECLARE
    query TEXT;
BEGIN
    query := 'SELECT * FROM teacher WHERE name = ''' || attr_val || ''';';
    RETURN QUERY EXECUTE query;
END;
$$ LANGUAGE plpgsql;
