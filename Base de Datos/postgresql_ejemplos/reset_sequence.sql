-- RESET ID SEQUENCES

ALTER SEQUENCE <sequence_name> RESTART WITH <desired_number>;

-- Example:

ALTER SEQUENCE users_id_seq RESTART WITH 1;
