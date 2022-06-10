CLASS zcl_darts DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS score
      IMPORTING
        x             TYPE f
        y             TYPE f
      RETURNING
        VALUE(result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.


CLASS zcl_darts IMPLEMENTATION.
  METHOD score.
    result = cond #( let d = sqrt( x ** 2 + y ** 2 ) in
                     when d > 10 then 0
                     when d > 5 then 1
                     when d > 1 then 5
                     else 10 ).
  ENDMETHOD.


ENDCLASS.
