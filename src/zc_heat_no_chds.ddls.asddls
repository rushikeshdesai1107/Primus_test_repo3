@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZDTHEAT_NO_CHDS'
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZC_HEAT_NO_CHDS
//  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_HEAT_NO_CHDS
  association [1..1] to ZR_HEAT_NO_CHDS as _BaseEntity on $projection.UUID = _BaseEntity.UUID and $projection.CUUID = _BaseEntity.CUUID
{
  key UUID,
  key CUUID,
  SerialNo1,
  ChargeMixComponent1,
  CMixCompDesc1,
  ComponentQty1,
  @Consumption: {
    valueHelpDefinition: [ {
      entity.element: 'UnitOfMeasure', 
      entity.name: 'I_UnitOfMeasureStdVH', 
      useForValidation: true
    } ]
  }
  ComponentUnit1,
  @Semantics: {
    user.createdBy: true
  }
  CreatedBy,
  @Semantics: {
    systemDateTime.createdAt: true
  }
  CreatedAt,
  @Semantics: {
    user.lastChangedBy: true
  }
  LastChangedBy,
  @Semantics: {
    systemDateTime.lastChangedAt: true
  }
  LastChangedAt,
  @Semantics: {
    systemDateTime.localInstanceLastChangedAt: true
  }
  LocalLastChangedAt,
  _BaseEntity,
  _Head: redirected to parent ZC_HEAT_NO_DTLS
}
