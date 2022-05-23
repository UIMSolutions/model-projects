module models.projects.entities.forecasts.sales;

@safe:
import models.projects;

class DProjectForecastSalesEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastSalesEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Active": StringAttribute, //
        "ActivityNumber": StringAttribute, //
        "AllocateMethod": StringAttribute, //
        "Amount": StringAttribute, //
        "BudgetComment": StringAttribute, //
        "CostPrice": StringAttribute, //
        "CashFlowForecast": StringAttribute, //
        "Currency": StringAttribute, //
        "CustomerAccountId": StringAttribute, //
        "CustomerGroupId": StringAttribute, //
        "DefaultDimension": StringAttribute, //
        "DiscountAmount": StringAttribute, //
        "DiscountPercent": StringAttribute, //
        "EndDate": StringAttribute, //
        "Periods": StringAttribute, //
        "Unit": StringAttribute, //
        "InventDimensionId": StringAttribute, //
        "InventQuantity": StringAttribute, //
        "ItemAllocateId": StringAttribute, //
        "ItemBOMId": StringAttribute, //
        "ItemGroupId": StringAttribute, //
        "ItemId": StringAttribute, //
        "ItemRouteId": StringAttribute, //
        "PeriodKeyId": StringAttribute, //
        "ModelId": StringAttribute, //
        "CWQuantity": StringAttribute, //
        "CWUnitId": StringAttribute, //
        "PriceUnit": StringAttribute, //
        "ProjectCategoryId": StringAttribute, //
        "ProjectForecastBudgetType": StringAttribute, //
        "ProjectForecastCostPaymentDate": StringAttribute, //
        "ProjectForecastEliminationDate": StringAttribute, //
        "ProjectForecastInvoiceDate": StringAttribute, //
        "ProjectForecastSalesPaymentDate": StringAttribute, //
        "ProjectFundingSource": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ProjectLinePropertyId": StringAttribute, //
        "ProjectTransactionId": StringAttribute, //
        "Report": StringAttribute, //
        "SalesMarkup": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "SalesQuantity": StringAttribute, //
        "SalesUnitId": StringAttribute, //
        "StartDate": StringAttribute, //
        "TaxGroupId": StringAttribute, //
        "TaxItemGroupId": StringAttribute, //
        "FundingSourceID": StringAttribute, //
        "ProjectContractID": StringAttribute, //
        "DefaultDimensionDisplayValue": StringAttribute, //
        "ProductColorId": StringAttribute, //
        "ProductConfigurationId": StringAttribute, //
        "ProductSizeId": StringAttribute, //
        "ProductStyleId": StringAttribute, //
        "ProductVersionId": StringAttribute, //
        "StorageSiteId": StringAttribute, //
        "StorageWarehouseId": StringAttribute, //
        "StorageLocationId": StringAttribute, //
        "CovStatus": StringAttribute, //
        "Relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "Relationship_ProjectEntityRelationshipId": StringAttribute, //
        "Relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "BackingTable_ForecastSalesRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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