CLASS zcl_elyses_enchantments DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES ty_stack TYPE STANDARD TABLE OF i WITH EMPTY KEY.

    "! Get card at position
    METHODS get_item
      IMPORTING stack         TYPE ty_stack
                position      TYPE i
      RETURNING VALUE(result) TYPE i.

    "! Replace card at position
    METHODS set_item
      IMPORTING stack         TYPE ty_stack
                position      TYPE i
                replacement   TYPE i
      RETURNING VALUE(result) TYPE ty_stack.

    "Add card to stack
    METHODS insert_item_at_top
      IMPORTING stack         TYPE ty_stack
                new_card      TYPE i
      RETURNING VALUE(result) TYPE ty_stack.

    "! Remove card at position
    METHODS remove_item
      IMPORTING stack         TYPE ty_stack
                position      TYPE i
      RETURNING VALUE(result) TYPE ty_stack.

    "! Remove top card (last row)
    METHODS remove_item_from_top
      IMPORTING stack         TYPE ty_stack
      RETURNING VALUE(result) TYPE ty_stack.

    "! Add card to bottom of stack (first row)
    METHODS insert_item_at_bottom
      IMPORTING stack         TYPE ty_stack
                new_card      TYPE i
      RETURNING VALUE(result) TYPE ty_stack.

    "! Remove bottom card (delete first row)
    METHODS remove_item_from_bottom
      IMPORTING stack         TYPE ty_stack
      RETURNING VALUE(result) TYPE ty_stack.

    "! Count cards
    METHODS get_size_of_stack
      IMPORTING stack         TYPE ty_stack
      RETURNING VALUE(result) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS insert_item
      importing stack         type ty_stack
                new_card      type i
                position      type i
      returning value(result) type ty_stack.
ENDCLASS.



CLASS zcl_elyses_enchantments IMPLEMENTATION.

  method get_item.
    result = stack[ position ].
  endmethod.
  method set_item.
    result = stack.
    modify result index position from replacement.
  endmethod.
  method insert_item_at_top.
    result = insert_item(
                 stack    = stack
                 new_card = new_card
                 position = lines( stack ) + 1 ).
  endmethod.
  method get_size_of_stack.
    result = lines( stack ).
  endmethod.
  method insert_item_at_bottom.
    result = insert_item(
                 stack    = stack
                 new_card = new_card
                 position = 1 ).
  endmethod.
  method remove_item.
    result = stack.
    delete result index position.
  endmethod.
  method remove_item_from_bottom.
    result = remove_item( stack = stack position = 1 ).
  endmethod.
  method remove_item_from_top.
    result = remove_item( stack = stack position = lines( stack ) ).
  endmethod.
  method insert_item.
    result = stack.
    insert new_card into result index position.
  endmethod.

endclass.
