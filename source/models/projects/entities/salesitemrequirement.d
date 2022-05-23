module models.projects.entities.salesitemrequirement;

@safe:
import models.projects;

class DProjectSalesItemRequirementEntity : DOOPEntity {
  mixin(EntityThis!("ProjectSalesItemRequirementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "barCode": StringAttribute, //
        "barCodeType": StringAttribute, //
        "isStatusStopped": StringAttribute, //
        "isPartialDeliveryPrevented": StringAttribute, //
        "shipDate": StringAttribute, //
        "costPrice": StringAttribute, //
        "currencyCode": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "deliveryDateControl": StringAttribute, //
        "deliveryName": StringAttribute, //
        "deliveryType": StringAttribute, //
        "modeOfDelivery": StringAttribute, //
        "deliveryTerms": StringAttribute, //
        "inventDeliverNow": StringAttribute, //
        "referenceNumber": StringAttribute, //
        "referenceLot": StringAttribute, //
        "referenceType": StringAttribute, //
        "inventTransactionId": StringAttribute, //
        "inventTransactionReturnId": StringAttribute, //
        "itemBOMId": StringAttribute, //
        "itemId": StringAttribute, //
        "itemRouteId": StringAttribute, //
        "ledgerDimension": StringAttribute, //
        "netAmount": StringAttribute, //
        "lineDeliveryType": StringAttribute, //
        "name": StringAttribute, //
        "overdelivery": StringAttribute, //
        "autoBatchReservation": StringAttribute, //
        "sameBatchSelection": StringAttribute, //
        "priceUnit": StringAttribute, //
        "projectCategoryId": StringAttribute, //
        "projectId": StringAttribute, //
        "projectLinePropertyId": StringAttribute, //
        "projectTransactionId": StringAttribute, //
        "quantityOrdered": StringAttribute, //
        "receiptDateConfirmed": StringAttribute, //
        "receiptDateRequested": StringAttribute, //
        "remainInventFinancial": StringAttribute, //
        "remainInventPhysical": StringAttribute, //
        "reservation": StringAttribute, //
        "salesCategory": StringAttribute, //
        "salesPrice": StringAttribute, //
        "salesQuantity": StringAttribute, //
        "salesStatus": StringAttribute, //
        "salesUnit": StringAttribute, //
        "scrap": StringAttribute, //
        "serviceOrderId": StringAttribute, //
        "shippingDateConfirmed": StringAttribute, //
        "shippingDateRequested": StringAttribute, //
        "taxGroup": StringAttribute, //
        "taxItemGroup": StringAttribute, //
        "underdelivery": StringAttribute, //
        "salesCategoryName": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "ledgerDimensionDisplayValue": StringAttribute, //
        "deliveryPostalAddressRecId": StringAttribute, //
        "formattedDelveryAddress": StringAttribute, //
        "deliveryBuildingCompliment": StringAttribute, //
        "deliveryAddressCity": StringAttribute, //
        "deliveryAddressCountryRegionId": StringAttribute, //
        "deliveryAddressCountryRegionISOCode": StringAttribute, //
        "deliveryAddressCountyId": StringAttribute, //
        "deliveryAddressDescription": StringAttribute, //
        "deliveryAddressDistrictName": StringAttribute, //
        "deliveryAddressDunsNumber": StringAttribute, //
        "isDeliveryAddressPrivate": StringAttribute, //
        "deliveryAddressLatitude": StringAttribute, //
        "deliveryAddressLocationId": StringAttribute, //
        "deliveryAddressLongitude": StringAttribute, //
        "deliveryAddressPostBox": StringAttribute, //
        "deliveryAddressStateId": StringAttribute, //
        "deliveryAddressStreet": StringAttribute, //
        "deliveryAddressStreetNumber": StringAttribute, //
        "deliveryAddressZipCode": StringAttribute, //
        "deliveryAddressTimeZone": StringAttribute, //
        "deliveryValidFrom": StringAttribute, //
        "deliveryValidTo": StringAttribute, //
        "productConfigurationId": StringAttribute, //
        "itemBatchNumber": StringAttribute, //
        "productColorId": StringAttribute, //
        "shippingWarehouseId": StringAttribute, //
        "shippingSiteId": StringAttribute, //
        "productSizeId": StringAttribute, //
        "orderedInventoryStatusId": StringAttribute, //
        "productStyleId": StringAttribute, //
        "productVersionId": StringAttribute, //
        "isDeliveryAddressOrderSpecific": StringAttribute, //
        "deliveryCFOP": StringAttribute, //
        "deliveryCFOPId": StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_LedgerDimensionCombinationRelationshipId": StringAttribute, //
        "backingTable_SalesLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_salesitem.requirements");
  }
}
mixin(EntityCalls!("ProjectSalesItemRequirementEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}