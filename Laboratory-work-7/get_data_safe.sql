CREATE OR REPLACE FUNCTION get_data_safe(attr_val VARCHAR)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, access_level INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE format('SELECT * FROM teacher WHERE name = %L', attr_val);
END;
$$ LANGUAGE plpgsql;
