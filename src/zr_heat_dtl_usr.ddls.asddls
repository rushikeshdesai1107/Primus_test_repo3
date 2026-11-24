@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZHEAT_DTL_USR'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_HEAT_DTL_USR
  as select from ZDT_HEAT_DTL_USR
{
  key user1 as User1,
  plant1 as Plant1,
  @Semantics.systemDateTime.createdAt: true
  createdat as Createdat,
  @Semantics.user.createdBy: true
  createdby as Createdby,
  @Semantics.user.localInstanceLastChangedBy: true
  lastchangedby as Lastchangedby,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  lastchangedat as Lastchangedat
}
