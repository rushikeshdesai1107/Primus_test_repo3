@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZHEAT_COMPON'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_HEAT_COMPON
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_HEAT_COMPON
  association [1..1] to ZR_HEAT_COMPON as _BaseEntity on $projection.PRODUCT1 = _BaseEntity.PRODUCT1 and $projection.PLANT1 = _BaseEntity.PLANT1
{
  key Product1,
  key Plant1,
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
  Prodname1,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  Units1,
  _BaseEntity
}
