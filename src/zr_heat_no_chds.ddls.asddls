@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZDTHEAT_NO_CHDS'
@EndUserText.label: 'Heat No Component Details'

define  view entity ZR_HEAT_NO_CHDS
  as select from zdt_heat_no_chds

  association to parent ZR_HEAT_NO_DTLS as _Head
    on _Head.UUID = $projection.UUID

{
  key uuid                  as UUID,
  key cuuid                 as CUUID,

      serialno1            as SerialNo1,
      chargemixcomponent1  as ChargeMixComponent1,
      cmixcompdesc1        as CMixCompDesc1,
      componentqty1        as ComponentQty1,

  @Consumption.valueHelpDefinition: [{
      entity: {
        name    : 'I_UnitOfMeasureStdVH',
        element : 'UnitOfMeasure'
      },
      useForValidation: true
  }]
      componentunit1       as ComponentUnit1,

  @Semantics.user.createdBy: true
      created_by           as CreatedBy,

  @Semantics.systemDateTime.createdAt: true
      created_at           as CreatedAt,

  @Semantics.user.lastChangedBy: true
      last_changed_by      as LastChangedBy,

  @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at      as LastChangedAt,

  @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _Head
}
