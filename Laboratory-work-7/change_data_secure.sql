CREATE OR REPLACE FUNCTION change_data_safe(attr1 VARCHAR, attr2 VARCHAR)
RETURNS VOID AS $$
BEGIN
    EXECUTE format('UPDATE teacher SET name = %L WHERE name = %L', attr2, attr1);
END;
$$ LANGUAGE plpgsql;
