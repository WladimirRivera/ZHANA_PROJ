@AbapCatalog.sqlViewName: 'ZMAT_LOGTT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Material Type Text'
@VDM.viewType: #BASIC
@ObjectModel: { representativeKey: 'MaterialType',
                dataCategory: #TEXT }
define view zmaterial_typetext_logali
  as select from t134t
{
  key mtart as MaterialType,
      @Semantics.language: true
  key spras as Language,
      @Semantics.text: true
      mtbez as MaterialTypeName
}
