module models.projects.entities.forecasts.sales;

import models.projects;

@safe:
class DProjectForecastSalesEntity : DEntity {
  mixin(EntityThis!("ProjectForecastSalesEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "allocateMethod": StringAttribute, //
        "amount": StringAttribute, //
        "udgetComment": StringAttribute, //
        "costPrice": StringAttribute, //
        "cashFlowForecast": StringAttribute, //
        "currency": StringAttribute, //
        "customerAccountId": UUIDAttribute, //
        "customerGroupId": UUIDAttribute, //
        "defaultDimension": StringAttribute, //
        "discountAmount": StringAttribute, //
        "discountPercent": StringAttribute, //
        "endDate": DateAttribute, //
        "periods": StringAttribute, //
        "unit": StringAttribute, //
        "inventDimensionId": UUIDAttribute, //
        "inventQuantity": StringAttribute, //
        "itemAllocateId": UUIDAttribute, //
        "itemBOMId": UUIDAttribute, //
        "itemGroupId": UUIDAttribute, //
        "itemId": UUIDAttribute, //
        "itemRouteId": UUIDAttribute, //
        "periodKeyId": UUIDAttribute, //
        "modelId": UUIDAttribute, //
        "cwQuantity": StringAttribute, //
        "cwUnitId": UUIDAttribute, //
        "priceUnit": StringAttribute, //
        "projectCategoryId": UUIDAttribute, //
        "projectForecastBudgetType": StringAttribute, //
        "projectForecastCostPaymentDate": DateAttribute, //
        "projectForecastEliminationDate": DateAttribute, //
        "projectForecastInvoiceDate": DateAttribute, //
        "projectForecastSalesPaymentDate": DateAttribute, //
        "projectFundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectLinePropertyId": UUIDAttribute, //
        "projectTransactionId": UUIDAttribute, //
        "report": StringAttribute, //
        "salesMarkup": StringAttribute, //
        "salesPrice": StringAttribute, //
        "salesQuantity": StringAttribute, //
        "salesUnitId": UUIDAttribute, //
        "startDate": DateAttribute, //
        "taxGroupId": UUIDAttribute, //
        "taxItemGroupId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "productColorId": UUIDAttribute, //
        "productConfigurationId": UUIDAttribute, //
        "productSizeId": UUIDAttribute, //
        "productStyleId": UUIDAttribute, //
        "productVersionId": UUIDAttribute, //
        "storageSiteId": UUIDAttribute, //
        "storageWarehouseId": UUIDAttribute, //
        "storageLocationId": UUIDAttribute, //
        "covStatus": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": UUIDAttribute, //
        "backingTable_ForecastSalesRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_forecasts.sales");
  }
}
mixin(EntityCalls!("ProjectForecastSalesEntity"));

version(test_model_portals) { unittest {
    assert(ProjectForecastSalesEntity);
  
  auto entity = ProjectForecastSalesEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}