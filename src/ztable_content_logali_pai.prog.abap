*&---------------------------------------------------------------------*
*& Include ztable_content_logali_pai
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_2000  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
module user_command_2000 input.

  case sy-ucomm.
    when 'BACK'.
      leave to screen 0.
      perform free_resources.
    when others.
  endcase.

  if gv_previous_tabname ne gv_tabname.
    perform free_resources.
  endif.

endmodule.
