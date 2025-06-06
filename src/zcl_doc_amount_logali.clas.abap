class zcl_doc_amount_logali definition
  public
  final
  create public .

  public section.

    interfaces if_amdp_marker_hdb.

    class-methods: get_doc_amount  for table function ztf_acc_doc_logali.

  protected section.
  private section.
endclass.



class zcl_doc_amount_logali implementation.

  method get_doc_amount by database function
                            for hdb language sqlscript
                            options read-only.

    return   select
                  belnr as doc_number,
                  buzei as item_number,
                  wrbtr as doc_amount,
                  waers as currency
             from "_SYS_BIC"."ZABAP_HANA_TRAINING.gvaler/AC_DOC_AMOUNTS"
             order BY doc_number, item_number;

  endmethod.


endclass.
