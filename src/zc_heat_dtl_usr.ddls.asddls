@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZHEAT_DTL_USR'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_HEAT_DTL_USR
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_HEAT_DTL_USR
  association [1..1] to ZR_HEAT_DTL_USR as _BaseEntity on $projection.USER1 = _BaseEntity.USER1
{
  key User1,
  Plant1,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  Createdat,
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  Lastchangedby,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Lastchangedat,
  _BaseEntity
}
