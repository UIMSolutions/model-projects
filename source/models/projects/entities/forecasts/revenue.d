module models.projects.entities.forecasts.revenue;

@safe:
import models.projects;

class DProjectForecastRevenueEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastRevenueEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "method": StringAttribute, //
        "category": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "eliminationDate": StringAttribute, //
        "end": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "quantity": StringAttribute, //
        "unit": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "lineProperty": StringAttribute, //
        "forecastModel": StringAttribute, //
        "periodKey": StringAttribute, //
        "budgetType": StringAttribute, //
        "projectID": StringAttribute, //
        "resource": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": StringAttribute, //
        "stop": StringAttribute, //
        "transactionID": StringAttribute, //
        "description": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "resourceId": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectContractID": StringAttribute, //
        "fundingSourceID": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "resourceCategoryId": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "relationship_OMLegalEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": StringAttribute, //
        "backingTable_ProjForecastRevenueRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_forecasts.revenues");
  }
}
mixin(EntityCalls!("ProjectForecastRevenueEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastRevenueEntity);
  
  auto entity = ProjectForecastRevenueEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}