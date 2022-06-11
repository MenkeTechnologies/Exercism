CLASS zcl_isogram DEFINITION PUBLIC.

  PUBLIC SECTION.
    METHODS is_isogram
      IMPORTING
        VALUE(phrase)        TYPE string
      RETURNING
        VALUE(result) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_isogram IMPLEMENTATION.

  METHOD is_isogram.
      result = reduce #( init isogram = abap_true
                       for i = 0 until i = strlen( sy-abcde )
                       next isogram = cond #( when count( val = to_lower( phrase ) sub = to_lower( sy-abcde+i(1) ) ) > 1 
                                                then abap_false
                                              else isogram ) ).
  ENDMETHOD.

ENDCLASS.
