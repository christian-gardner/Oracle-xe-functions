CREATE OR REPLACE FUNCTION ALPHA_EN(FIELD IN VARCHAR) RETURN VARCHAR 

IS 

    i NUMBER;
    myField VARCHAR(1000);
    myNewField VARCHAR(1000);

    BEGIN

        myField := UPPER(FIELD);
        myNewField := '';

        FOR i IN 1 .. LENGTH(myField) LOOP

            myNewField := myNewField ||  
                              case when substr(myField, i, 1) = 'A' then '01'
                                   when substr(myField, i, 1) = 'B' then '02'
                                   when substr(myField, i, 1) = 'C' then '03'
                                   when substr(myField, i, 1) = 'D' then '04'
                                   when substr(myField, i, 1) = 'E' then '05'
                                   when substr(myField, i, 1) = 'F' then '06'
                                   when substr(myField, i, 1) = 'G' then '07'
                                   when substr(myField, i, 1) = 'H' then '08'
                                   when substr(myField, i, 1) = 'I' then '09'
                                   when substr(myField, i, 1) = 'J' then '10'
                                   when substr(myField, i, 1) = 'K' then '11'
                                   when substr(myField, i, 1) = 'L' then '12'
                                   when substr(myField, i, 1) = 'M' then '13'
                                   when substr(myField, i, 1) = 'N' then '14'
                                   when substr(myField, i, 1) = 'O' then '15'
                                   when substr(myField, i, 1) = 'P' then '16'
                                   when substr(myField, i, 1) = 'Q' then '17'
                                   when substr(myField, i, 1) = 'R' then '18'
                                   when substr(myField, i, 1) = 'S' then '19'
                                   when substr(myField, i, 1) = 'T' then '20'
                                   when substr(myField, i, 1) = 'U' then '21'
                                   when substr(myField, i, 1) = 'V' then '22'
                                   when substr(myField, i, 1) = 'W' then '23'
                                   when substr(myField, i, 1) = 'X' then '24'
                                   when substr(myField, i, 1) = 'Y' then '25'
                                   when substr(myField, i, 1) = 'Z' then '26' END;
        END LOOP;
        RETURN myNewField;

END ALPHA_EN;

/
