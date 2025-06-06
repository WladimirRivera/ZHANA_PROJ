*&---------------------------------------------------------------------*
*& Include ztable_content_logali_f01
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*& Form FREE_RESOURCES
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
form free_resources .

  if go_alv_display is bound.
    go_alv_display->free( ).
  endif.

endform.
*&---------------------------------------------------------------------*
*& Form INIT_2000
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
form init_2000 .

  check not gv_tabname is initial.

  gv_previous_tabname = gv_tabname.

  if not go_cust_cont is bound.
    go_cust_cont = new #( 'ALV_CONT' ).
  endif.

  try.

*      go_alv_display = cl_salv_gui_table_ida=>create( iv_table_name    = gv_tabname
*                                                      io_gui_container = go_cust_cont ).

      go_alv_display = cl_salv_gui_table_ida=>create_for_cds_view( iv_cds_view_name = gv_tabname
                                                                   io_gui_container = go_cust_cont ).

    catch cx_salv_db_connection into data(lox_db_connection).
      message lox_db_connection->get_text( ) type 'I'.

    catch cx_salv_db_table_not_supported into data(lox_db_table_not_supported).
      message lox_db_table_not_supported->get_text( ) type 'I'.

    catch cx_salv_ida_contract_violation into data(lox_ida_contract_violation).
      message lox_ida_contract_violation->get_text( ) type 'I'.

  endtry.

endform.
