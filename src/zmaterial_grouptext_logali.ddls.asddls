@AbapCatalog.sqlViewName: 'ZMAT_LOG_GT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material Group Text'
@VDM.viewType: #BASIC
@ObjectModel: {
   representativeKey: 'MaterialGroup',
   dataCategory: #TEXT }
define view zmaterial_grouptext_logali
  as select from t023t
{
  key matkl   as MaterialGroup,
      @Semantics.language: true
  key spras   as Language,
      @Semantics.text: true
      wgbez   as MaterialGroupName,
      @Semantics.text: true
      wgbez60 as MaterialGroupText
}
