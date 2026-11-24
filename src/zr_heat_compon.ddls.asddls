@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZHEAT_COMPON'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_HEAT_COMPON
  as select from ZDT_HEAT_COMPON
{
  key product1 as Product1,
  key plant1 as Plant1,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.localInstanceLastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  lastchangedat as Lastchangedat,
  prodname1 as Prodname1,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  units1 as Units1
}
