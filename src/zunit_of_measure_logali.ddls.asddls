@AbapCatalog.sqlViewName: 'ZMAT_UOM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Unit of Measure'
@VDM.viewType: #BASIC
@ObjectModel.representativeKey: 'UnitOfMeasure'
define view zunit_of_measure_logali
  as select from t006
  association [0..*] to zunit_of_measuretext_logali as _Text on $projection.UnitOfMeasure = _Text.UnitOfMeasure

{
      @Semantics.unitOfMeasure: true
  key msehi   as UnitOfMeasure,

      _Text,

      isocode as UnitOfMeasureISOCode,
      andec   as UnitOfMeasureNumberOfDecimals, // for rounding
      decan   as UnitOfMeasureDspNmbrOfDcmls    // for number display
}
