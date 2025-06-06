@AbapCatalog.sqlViewName: 'ZMAT_LOGT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material Text'
@VDM.viewType: #BASIC
@ObjectModel: { dataCategory: #TEXT,
                representativeKey: 'Material' }
define view zmaterial_text_logali
  as select from makt
{
  key matnr as Material,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      maktx as MaterialName
}
