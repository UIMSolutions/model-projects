module models.projects.entities.forecasts.sales;

@safe:
import models.projects;

class DProjectForecastSalesEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastSalesEntity"));

  override void initialize() {
    super.initialize;

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
        "customerAccountId": StringAttribute, //
        "customerGroupId": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "discountAmount": StringAttribute, //
        "discountPercent": StringAttribute, //
        "endDate": StringAttribute, //
        "periods": StringAttribute, //
        "unit": StringAttribute, //
        "inventDimensionId": StringAttribute, //
        "inventQuantity": StringAttribute, //
        "itemAllocateId": StringAttribute, //
        "itemBOMId": StringAttribute, //
        "itemGroupId": StringAttribute, //
        "itemId": StringAttribute, //
        "itemRouteId": StringAttribute, //
        "periodKeyId": StringAttribute, //
        "modelId": StringAttribute, //
        "cwQuantity": StringAttribute, //
        "cwUnitId": StringAttribute, //
        "priceUnit": StringAttribute, //
        "projectCategoryId": StringAttribute, //
        "projectForecastBudgetType": StringAttribute, //
        "projectForecastCostPaymentDate": StringAttribute, //
        "projectForecastEliminationDate": StringAttribute, //
        "projectForecastInvoiceDate": StringAttribute, //
        "projectForecastSalesPaymentDate": StringAttribute, //
        "projectFundingSource": StringAttribute, //
        "projectId": StringAttribute, //
        "projectLinePropertyId": StringAttribute, //
        "projectTransactionId": StringAttribute, //
        "report": StringAttribute, //
        "salesMarkup": StringAttribute, //
        "salesPrice": StringAttribute, //
        "salesQuantity": StringAttribute, //
        "salesUnitId": StringAttribute, //
        "startDate": StringAttribute, //
        "taxGroupId": StringAttribute, //
        "taxItemGroupId": StringAttribute, //
        "fundingSourceID": StringAttribute, //
        "projectContractID": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "productColorId": StringAttribute, //
        "productConfigurationId": StringAttribute, //
        "productSizeId": StringAttribute, //
        "productStyleId": StringAttribute, //
        "productVersionId": StringAttribute, //
        "storageSiteId": StringAttribute, //
        "storageWarehouseId": StringAttribute, //
        "storageLocationId": StringAttribute, //
        "covStatus": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "backingTable_ForecastSalesRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_forecasts.sales");
  }
}
mixin(EntityCalls!("ProjectForecastSalesEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastSalesEntity);
  
  auto entity = ProjectForecastSalesEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}