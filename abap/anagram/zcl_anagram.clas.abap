CLASS zcl_anagram DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS anagram
      IMPORTING
        input         TYPE string
        candidates    TYPE string_table
      RETURNING
        VALUE(result) TYPE string_table.
    METHODS sort_string
      IMPORTING
        input         TYPE string
      RETURNING
        VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_anagram IMPLEMENTATION.
  METHOD anagram.
   LOOP AT candidates ASSIGNING FIELD-SYMBOL(<cand>).
      IF sort_string( input ) = sort_string( <cand> ) AND to_lower( input ) <> to_lower( <cand> ).
        APPEND <cand> TO result.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD sort_string.
    DATA input_letters TYPE string_table.
    DATA(input_lower) = to_lower( input ).
    DATA(do_count) = strlen( input_lower ).
    DATA(index) = 0.
    DO do_count TIMES.
      index = sy-index - 1.
      APPEND input_lower+index(1) TO input_letters.
    ENDDO.
    SORT input_letters.
    LOOP AT input_letters ASSIGNING FIELD-SYMBOL(<letter>).
      result = |{ result }{ <letter> }|.
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
