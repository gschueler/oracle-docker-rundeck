
-- CREATE OR REPLACE 
-- type wrap_lob as object(
--   lob clob,
--   MAP MEMBER FUNCTION get_hash RETURN RAW
-- )
-- ;
-- /

-- CREATE OR REPLACE 
-- TYPE BODY wrap_lob is

--   MAP MEMBER FUNCTION get_hash RETURN RAW is
--   begin
--     return DBMS_CRYPTO.HASH(lob,1);
--   end;
-- end;
-- /