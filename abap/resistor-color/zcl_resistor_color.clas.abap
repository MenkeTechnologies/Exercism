CLASS zcl_resistor_color DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
   METHODS constructor.
    METHODS resistor_color
      IMPORTING
        color_code   TYPE string
      RETURNING
        VALUE(value) TYPE i.
  PRIVATE SECTION.
    DATA color_values TYPE STANDARD TABLE OF string WITH KEY table_line.
ENDCLASS.

CLASS zcl_resistor_color IMPLEMENTATION.

 METHOD resistor_color.
    DATA input_color TYPE string.
    input_color = to_lower( color_code ).
    READ TABLE color_values TRANSPORTING NO FIELDS WITH KEY table_line = input_color.
    value = sy-tabix - 1.
  ENDMETHOD.

  METHOD constructor.
    APPEND 'black' TO color_values.
    APPEND 'brown' TO color_values.
    APPEND 'red' TO color_values.
    APPEND 'orange' TO color_values.
    APPEND 'yellow' TO color_values.
    APPEND 'green' TO color_values.
    APPEND 'blue' TO color_values.
    APPEND 'violet' TO color_values.
    APPEND 'grey' TO color_values.
    APPEND 'white' TO color_values.
  ENDMETHOD.

ENDCLASS.
