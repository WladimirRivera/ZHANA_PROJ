@AbapCatalog.sqlViewName: 'ZMAT_LOG_GTT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material Group'
@Analytics.dataCategory: #DIMENSION
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'MaterialGroup'
define view zmaterial_group_logali
  as select from t023
  association [0..*] to zmaterial_grouptext_logali as _Text on $projection.MaterialGroup = _Text.MaterialGroup
{
      @ObjectModel.text.association: '_Text'
  key t023.matkl as MaterialGroup,
      _Text
}
