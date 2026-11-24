@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: 'Heat Production Order'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_HEAT_PRD_ORDER
  provider contract TRANSACTIONAL_QUERY
  as projection on ZI_HEAT_PRD_ORDER
  association [1..1] to ZI_HEAT_PRD_ORDER as _BaseEntity on $projection.MANUFACTURINGORDER = _BaseEntity.MANUFACTURINGORDER
{
  @Endusertext: {
    Label: 'Manufacturing Order', 
    Quickinfo: 'Manufacturing Order ID'
  }
  key ManufacturingOrder,
  @Endusertext: {
    Label: 'Order Text', 
    Quickinfo: 'Manufacturing Order Text'
  }
  ManufacturingOrderText,
  @Endusertext: {
    Label: 'Product', 
    Quickinfo: 'Product'
  }
  Product,
  @Endusertext: {
    Label: 'Plant', 
    Quickinfo: 'Plant'
  }
  Plant,
  @Endusertext: {
    Label: 'Plant Name', 
    Quickinfo: 'Plant Name'
  }
  PlantName,
  @Endusertext: {
    Label: 'Order Type', 
    Quickinfo: 'Order Type'
  }
  ManufacturingOrderType,
  @Endusertext: {
    Label: 'Product Description', 
    Quickinfo: 'Product Description'
  }
  ProductDescription,
  _ProductDesc,
  _BaseEntity
}
