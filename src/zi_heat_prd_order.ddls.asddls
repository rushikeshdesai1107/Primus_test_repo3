@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Heat Production Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZI_Heat_PRD_ORDER
  as select from I_ManufacturingOrder as MFO

  association [0..*] to I_ProductDescription_2 as _ProductDesc on  MFO.Product           = _ProductDesc.Product
                                                               and _ProductDesc.Language = $session.system_language
{
      //  key MFO.ManufacturingOrder,
      //      MFO.ManufacturingOrderText,
      //      MFO.Product,
      //      MFO.ProductionPlant,
      //      MFO._ProductionPlant.PlantName,
      //      _ProductDesc.ProductDescription,
      //
      //      //       _ProductDesc._Product.YY1_MaterialGrade_PRD,
      //
      //      _ProductDesc // Make association public

  key MFO.ManufacturingOrder,
      MFO.ManufacturingOrderText,
      MFO.Product,
      MFO._ProductionPlant.Plant, // Through navigation
      MFO._ProductionPlant.PlantName,
      MFO.ManufacturingOrderType,
      _ProductDesc.ProductDescription,
      //       _ProductDesc._Product.YY1_MaterialGrade_PRD,
      _ProductDesc
}
