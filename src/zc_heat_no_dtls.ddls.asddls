@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZHEAT_NO_DTLS'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_HEAT_NO_DTLS
  provider contract transactional_query
  as projection on ZR_HEAT_NO_DTLS
  association [1..1] to ZR_HEAT_NO_DTLS as _BaseEntity on $projection.UUID = _BaseEntity.UUID
{
  key UUID,
  Plant1,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  Createdat,
  @Semantics: {
    user.createdBy: true
  }
  Createdby,
  @Semantics: {
    user.localInstanceLastChangedBy: true
  }
  Lastchangedby,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  Lastchangedat,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  Locallastchangedat,
  Productionorderno1,
  Date1,
  Material1,
  Materialdesc1,
  Heatqty1,
  @Consumption: {
    valueHelpDefinition: [ {
      entity.element: 'UnitOfMeasure', 
      entity.name: 'I_UnitOfMeasureStdVH', 
      useForValidation: true
    } ]
  }
  Units1,
  Noofheat1,
  Heatno1,
  User1,
  Time1,
  Serialno1,
  Heatunitconsumption1,
  Shift1,
  _BaseEntity,
   _childd : redirected to composition child ZC_HEAT_NO_CHDS
}
