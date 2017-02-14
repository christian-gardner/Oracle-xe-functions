CREATE OR REPLACE FUNCTION               isdegit (p_number VARCHAR2)
RETURN NUMBER
IS

retval  PLS_INTEGER;

BEGIN

retval := CASE   WHEN p_number IS NULL THEN 0
                 WHEN LENGTH(TRIM(TRANSLATE(p_number, ' +-.0123456789',' ')))   IS NULL THEN 1
                 WHEN   LENGTH(TRIM(TRANSLATE(p_number, ' +-.0123456789',' '))) IS NOT NULL THEN 2
                 END;

RETURN retval;


EXCEPTION
     WHEN OTHERS THEN
          retval := SQLCODE;
END;

/
