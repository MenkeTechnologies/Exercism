CLASS zcl_scrabble_score DEFINITION PUBLIC .
  PUBLIC SECTION.
    METHODS score
      IMPORTING
        input TYPE string OPTIONAL
      RETURNING
        VALUE(result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_scrabble_score IMPLEMENTATION.
  METHOD score.
    data(sum) = 0.
    DO strlen( input ) TIMES.
      data(c) = to_upper( substring( val = input off = sy-index - 1 len = 1 ) ).
      data(lv_value) = COND #(
        WHEN c CA 'AEIOULNRST' THEN 1
        WHEN c CA 'DG' THEN 2
        WHEN c CA 'BCMP' THEN 3
        WHEN c CA 'FHVWY' THEN 4
        WHEN c CA 'K' THEN 5
        WHEN c CA 'JX' THEN 8
        WHEN c CA 'QZ' THEN 10
        ELSE 0
      ).
    sum = sum + lv_value.
  enddo.
  result = sum.
  ENDMETHOD.
ENDCLASS.
