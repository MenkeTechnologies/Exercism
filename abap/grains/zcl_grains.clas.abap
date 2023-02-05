CLASS zcl_grains DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES type_result TYPE p LENGTH 16 DECIMALS 0.
    METHODS square
      IMPORTING
        input         TYPE i
      RETURNING
        VALUE(result) TYPE type_result
      RAISING
        cx_parameter_invalid.
    METHODS total
      RETURNING
        VALUE(result) TYPE type_result
      RAISING
        cx_parameter_invalid.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_grains IMPLEMENTATION.
  METHOD square.
    result = 1.
    IF input > 0 AND input < 65.
    DO ( input - 1 ) times.
	  result = result * 2.
    ENDDO.
    ELSE.
	  RAISE EXCEPTION TYPE cx_parameter_invalid.
    ENDIF.
  ENDMETHOD.

  METHOD total.
	data: iterator type i Value 1.
	DO 63 times.
	  iterator = iterator * 2.
	  result = result + iterator.
	ENDDO.
  ENDMETHOD.

ENDCLASS.
