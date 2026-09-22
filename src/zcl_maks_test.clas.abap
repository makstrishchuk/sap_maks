CLASS zcl_maks_test DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_maks_test IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello Maks' ).
  ENDMETHOD.
ENDCLASS.
