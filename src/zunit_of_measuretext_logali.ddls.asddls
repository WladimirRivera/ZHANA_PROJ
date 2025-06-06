@AbapCatalog.sqlViewName: 'ZMAT_UOMT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Unit of Measure Text'
@VDM.viewType: #BASIC
@ObjectModel: { dataCategory: #TEXT,
                representativeKey: 'UnitOfMeasure' }
define view zunit_of_measuretext_logali
  as select from t006a

{
      @Semantics.language: true
  key spras as Language,
      @Semantics.unitOfMeasure: true
  key msehi as UnitOfMeasure,
      @Semantics.text: true
      msehl as UnitOfMeasureLongName,
      @Semantics.text: true
      mseht as UnitOfMeasureName,
      @Semantics.text: true
      mseh6 as UnitOfMeasureTechnicalName
}
