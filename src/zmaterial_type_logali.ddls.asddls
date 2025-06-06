@AbapCatalog.sqlViewName: 'ZMAT_LOGTTT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material Type'
@Analytics.dataCategory: #DIMENSION
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'MaterialType'
define view zmaterial_type_logali
  as select from t134
  association [0..*] to zmaterial_typetext_logali as _Text on $projection.MaterialType = _Text.MaterialType
{
      @ObjectModel.text.association: '_Text'
  key t134.mtart as MaterialType,
      _Text

}
