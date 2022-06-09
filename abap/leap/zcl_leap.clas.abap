CLASS zcl_leap DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS leap
      IMPORTING
        year          TYPE i
      RETURNING
        VALUE(result) TYPE abap_bool.
ENDCLASS.

CLASS zcl_leap IMPLEMENTATION.

  METHOD leap.
    result = xsdbool( year mod 4 = 0 and year mod 100 <> 0 or year mod 400 = 0 ).
  ENDMETHOD.

ENDCLASS.
