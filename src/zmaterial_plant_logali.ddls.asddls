@AbapCatalog.sqlViewName: 'ZMAT_PLANT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material Plant'
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
@ObjectModel.representativeKey: 'Plant'
define view zmaterial_plant_logali
  as select from marc
{
      @EndUserText.label: 'Material'
  key marc.matnr as Material,
  key marc.werks as Plant

}
