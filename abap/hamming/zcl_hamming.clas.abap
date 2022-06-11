CLASS zcl_hamming DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS hamming_distance
      IMPORTING
        first_strand  TYPE string
        second_strand TYPE string
      RETURNING
        VALUE(result) TYPE i
      RAISING
        cx_parameter_invalid.
ENDCLASS.

CLASS zcl_hamming IMPLEMENTATION.

  METHOD hamming_distance.
    if strlen( first_strand ) <> strlen( second_strand ).
      raise exception type cx_parameter_invalid.
    endif.

    result = reduce #( INIT acc = 0
                       FOR i = 0 WHILE i < strlen( first_strand )
                       NEXT acc += cond #( when first_strand+i(1) <> second_strand+i(1) then 1 else 0 ) ).
  ENDMETHOD.

ENDCLASS.
