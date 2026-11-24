@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZSCRAPORDER'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_SCRAPORDER
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SCRAPORDER
  association [1..1] to ZR_SCRAPORDER as _BaseEntity on $projection.PLANT = _BaseEntity.PLANT and $projection.ORDERNO = _BaseEntity.ORDERNO
{
  key Plant,
  key OrderNo,
  Component,
  SapDescription,
  Date1,
  Material,
  HeaderMaterialDesc,
  OrderType,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  BaseUnit,
  @Semantics: {
    Quantity.Unitofmeasure: 'BaseUnit'
  }
  TotalWeightInKg,
  Item,
  ComponentDescription,
  @Semantics: {
    Quantity.Unitofmeasure: 'BaseUnit'
  }
  ComponentQuantity,
  StorageLocation,
  @Semantics: {
    Quantity.Unitofmeasure: 'BaseUnit'
  }
  Weight,
  @Semantics: {
    Quantity.Unitofmeasure: 'BaseUnit'
  }
  TotalWeight,
  Remark,
  OrderConfirmed,
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
  @Semantics: {
    Quantity.Unitofmeasure: 'BaseUnit'
  }
  AvailableStock,
  Batch,
  _BaseEntity
}
