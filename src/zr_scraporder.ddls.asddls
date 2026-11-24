@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSCRAPORDER'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_SCRAPORDER
  as select from ZDT_SCRAPORDER
{
  key plant as Plant,
  key order_no as OrderNo,
  component as Component,
  sap_description as SapDescription,
  date1 as Date1,
  material as Material,
  header_material_desc as HeaderMaterialDesc,
  order_type as OrderType,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  base_unit as BaseUnit,
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  total_weight_in_kg as TotalWeightInKg,
  item as Item,
  component_description as ComponentDescription,
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  component_quantity as ComponentQuantity,
  storage_location as StorageLocation,
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  weight as Weight,
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  total_weight as TotalWeight,
  remark as Remark,
  order_confirmed as OrderConfirmed,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.localInstanceLastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  available_stock as AvailableStock,
  batch as Batch
}
