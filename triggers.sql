CREATE OR REPLACE FUNCTION notify_new_personnel()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'New Personnel Added: % %', NEW.FName, NEW.LName;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER personnel_insert_trigger
AFTER INSERT ON Personnel
FOR EACH ROW EXECUTE FUNCTION notify_new_personnel();

CREATE OR REPLACE FUNCTION notify_personnel_deletion()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Personnel Deleted: % %', OLD.FName, OLD.LName;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER personnel_delete_trigger
AFTER DELETE ON Personnel
FOR EACH ROW EXECUTE FUNCTION notify_personnel_deletion();



