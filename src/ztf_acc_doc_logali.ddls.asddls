@EndUserText.label: 'Accounting Documents'
@ClientHandling.type: #CLIENT_INDEPENDENT
@OData.entitySet.name: 'AccountingDocs'
define table function ztf_acc_doc_logali
  with parameters
    p_company : bukrs,
    p_year    : gjahr
returns
{
  key doc_number  : belnr_d;
  key item_number : buzei;
      doc_amount  : wrbtr;
      currency    : waers;

}
implemented by method
  zcl_doc_amount_logali=>get_doc_amount;
