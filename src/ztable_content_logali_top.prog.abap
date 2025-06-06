*&---------------------------------------------------------------------*
*& Include ztable_content_logali_top
*&---------------------------------------------------------------------*

data: gv_tabname          type tabname,
      gv_previous_tabname type tabname.

data: go_alv_display type ref to if_salv_gui_table_ida,
      go_cust_cont   type ref to cl_gui_custom_container.
