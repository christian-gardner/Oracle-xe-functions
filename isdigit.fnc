CREATE OR REPLACE FUNCTION               ISDIGIT ( P_IN  VARCHAR2) RETURN NUMBER
IS
   RET_VAL  NUMBER(22,2);
   TMP_VAL  NUMBER;

BEGIN

     TMP_VAL  := TO_NUMBER(P_IN);

     RET_VAL  := ROUND(TMP_VAL,2);

     RETURN RET_VAL;




EXCEPTION
    WHEN OTHERS THEN
          RET_VAL  := 0;
          RETURN RET_VAL;
END;

/
