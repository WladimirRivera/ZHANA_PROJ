@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Accounting Documents'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@OData.publish: true
define view entity z_c_acc_docs_logali
  with parameters
    p_company : bukrs,
    p_year    : gjahr
  as select from ztf_acc_doc_logali( p_company: $parameters.p_company , p_year: $parameters.p_year)
{
  key doc_number  as DocumentId,
  key item_number as DocumentPosId,
      @Semantics.amount.currencyCode: 'Currency'
      doc_amount  as Amount,
      currency    as Currency
}


//  OData GET request - All positions
//  /sap/opu/odata/sap/Z_C_ACC_DOCS_LOGALI_CDS/z_c_acc_docs_logali(p_company='1017',p_year='2020')/Set/?$format=json

//  OData GET request - One position
// /sap/opu/odata/sap/Z_C_ACC_DOCS_LOGALI_CDS/z_c_acc_docs_logaliSet(p_company='1017',p_year='2020',DocumentId='90000000',DocumentPosId='001')?$format=json
