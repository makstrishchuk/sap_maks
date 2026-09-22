CLASS zcl_maks_test DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    METHODS add
      IMPORTING
        iv_a          TYPE i
        iv_b          TYPE i
      RETURNING
        VALUE(rv_sum) TYPE i.

    METHODS get_materials
      IMPORTING
        io_out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.

CLASS zcl_maks_test IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello Maks' ).
    get_materials( out ).
  ENDMETHOD.

  METHOD add.
    rv_sum = iv_a + iv_b.
  ENDMETHOD.

  METHOD get_materials.
    SELECT MaterialId, Description, Unit, Price, Currency,
           CreatedAt, CreatedBy, LastChangedAt, LastChangedBy
      FROM zi_mt_material
      INTO TABLE @DATA(lt_materials).

    IF lt_materials IS INITIAL.
      io_out->write( 'No materials found.' ).
      RETURN.
    ENDIF.

    LOOP AT lt_materials INTO DATA(ls_material).
      io_out->write( |{ ls_material-materialid WIDTH = 20 }| &&
                     |{ ls_material-description WIDTH = 30 }| &&
                     |{ ls_material-price DECIMALS = 2 } { ls_material-currency }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
