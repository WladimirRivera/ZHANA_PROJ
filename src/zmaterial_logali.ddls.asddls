@AbapCatalog.sqlViewName: 'ZMAT_LOG'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Materials'
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
@ObjectModel.representativeKey: 'Material'
define view zmaterial_logali
  as select from mara

  association [0..*] to zmaterial_text_logali   as _Text          on $projection.Material = _Text.Material
  association [0..1] to zmaterial_type_logali   as _MaterialType  on $projection.MaterialType = _MaterialType.MaterialType
  association [0..1] to zmaterial_group_logali  as _MaterialGroup on $projection.MaterialGroup = _MaterialGroup.MaterialGroup
  association [0..1] to zunit_of_measure_logali as _BaseUnit      on $projection.MaterialBaseUnit = _BaseUnit.UnitOfMeasure
  association [0..1] to zunit_of_measure_logali as _WeightUnit    on $projection.MaterialWeightUnit = _WeightUnit.UnitOfMeasure
  association [0..*] to zmaterial_plant_logali  as _MaterialPlant on $projection.Material = _MaterialPlant.Material

{

      @ObjectModel.text.association: '_Text'
  key mara.matnr as Material,
      _Text,

      @EndUserText.label: 'Material Type'
      mara.mtart as MaterialType,
      _MaterialType,

      @EndUserText.label: 'Material Group'
      mara.matkl as MaterialGroup,
      _MaterialGroup,

      @EndUserText.label: 'Base Unit of Measure'
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_BaseUnit'
      mara.meins as MaterialBaseUnit,
      _BaseUnit,

      @EndUserText.label: 'Peso bruto'
      @Semantics.quantity.unitOfMeasure: 'MaterialWeightUnit'
      @DefaultAggregation: #SUM
      mara.brgew as MaterialGrossWeight,

      @EndUserText.label: 'Net Weight'
      @Semantics.quantity.unitOfMeasure: 'MaterialWeightUnit'
      @DefaultAggregation: #SUM
      mara.ntgew as MaterialNetWeight,

      --@EndUserText.label: 'Weight Unit'
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_WeightUnit'
      mara.gewei as MaterialWeightUnit,
      _WeightUnit,

      _MaterialPlant

}
