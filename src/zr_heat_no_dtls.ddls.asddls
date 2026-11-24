@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZHEAT_NO_DTLS'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_HEAT_NO_DTLS
  as select from zdt_heat_no_dtls
  
  composition[0..*] of ZR_HEAT_NO_CHDS as _childd
{
  key uuid as UUID,
  plant1 as Plant1,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.localInstanceLastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  lastchangedat as Lastchangedat,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat,
  productionorderno1 as Productionorderno1,
  date1 as Date1,
  material1 as Material1,
  materialdesc1 as Materialdesc1,
  heatqty1 as Heatqty1,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  units1 as Units1,
  noofheat1 as Noofheat1,
  heatno1 as Heatno1,
  user1 as User1,
  time1 as Time1,
  serialno1 as Serialno1,
  heatunitconsumption1 as Heatunitconsumption1,
  shift1 as Shift1,
   _childd
}
