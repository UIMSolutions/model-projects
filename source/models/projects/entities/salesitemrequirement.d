module models.projects.entities.salesitemrequirement;

import models.projects;

@safe:
class DProjectSalesItemRequirementEntity : DEntity {
  mixin(EntityThis!("ProjectSalesItemRequirementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "barCode": StringAttribute, //
        "barCodeType": StringAttribute, //
        "isStatusStopped": StringAttribute, //
        "isPartialDeliveryPrevented": StringAttribute, //
        "shipDate": DateAttribute, //
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
        "inventTransactionId": UUIDAttribute, //
        "inventTransactionReturnId": UUIDAttribute, //
        "itemBOMId": UUIDAttribute, //
        "itemId": UUIDAttribute, //
        "itemRouteId": UUIDAttribute, //
        "ledgerDimension": StringAttribute, //
        "netAmount": StringAttribute, //
        "lineDeliveryType": StringAttribute, //
        "name": StringAttribute, //
        "overdelivery": StringAttribute, //
        "autoBatchReservation": StringAttribute, //
        "sameBatchSelection": StringAttribute, //
        "priceUnit": StringAttribute, //
        "projectCategoryId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "projectLinePropertyId": UUIDAttribute, //
        "projectTransactionId": UUIDAttribute, //
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
        "serviceOrderId": UUIDAttribute, //
        "shippingDateConfirmed": StringAttribute, //
        "shippingDateRequested": StringAttribute, //
        "taxGroup": StringAttribute, //
        "taxItemGroup": StringAttribute, //
        "underdelivery": StringAttribute, //
        "salesCategoryName": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "ledgerDimensionDisplayValue": StringAttribute, //
        "deliveryPostalAddressRecId": UUIDAttribute, //
        "formattedDelveryAddress": StringAttribute, //
        "deliveryBuildingCompliment": StringAttribute, //
        "deliveryAddressCity": StringAttribute, //
        "deliveryAddressCountryRegionId": UUIDAttribute, //
        "deliveryAddressCountryRegionISOCode": StringAttribute, //
        "deliveryAddressCountyId": UUIDAttribute, //
        "deliveryAddressDescription": StringAttribute, //
        "deliveryAddressDistrictName": StringAttribute, //
        "deliveryAddressDunsNumber": StringAttribute, //
        "isDeliveryAddressPrivate": StringAttribute, //
        "deliveryAddressLatitude": StringAttribute, //
        "deliveryAddressLocationId": UUIDAttribute, //
        "deliveryAddressLongitude": StringAttribute, //
        "deliveryAddressPostBox": StringAttribute, //
        "deliveryAddressStateId": UUIDAttribute, //
        "deliveryAddressStreet": StringAttribute, //
        "deliveryAddressStreetNumber": StringAttribute, //
        "deliveryAddressZipCode": StringAttribute, //
        "deliveryAddressTimeZone": StringAttribute, //
        "deliveryValidFrom": StringAttribute, //
        "deliveryValidTo": StringAttribute, //
        "productConfigurationId": UUIDAttribute, //
        "itemBatchNumber": StringAttribute, //
        "productColorId": UUIDAttribute, //
        "shippingWarehouseId": UUIDAttribute, //
        "shippingSiteId": UUIDAttribute, //
        "productSizeId": UUIDAttribute, //
        "orderedInventoryStatusId": UUIDAttribute, //
        "productStyleId": UUIDAttribute, //
        "productVersionId": UUIDAttribute, //
        "isDeliveryAddressOrderSpecific": StringAttribute, //
        "deliveryCFOP": StringAttribute, //
        "deliveryCFOPId": UUIDAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_LedgerDimensionCombinationRelationshipId": UUIDAttribute, //
        "backingTable_SalesLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_salesitem.requirements");
  }
}
mixin(EntityCalls!("ProjectSalesItemRequirementEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}