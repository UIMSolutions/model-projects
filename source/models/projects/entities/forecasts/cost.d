module models.projects.entities.forecasts.cost;

@safe:
import models.projects;

class DProjectForecastCostEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastCostEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "method": StringAttribute, //
        "category": StringAttribute, //
        "costPaymentDate": StringAttribute, //
        "costPrice": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "eliminationDate": StringAttribute, //
        "endDate": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "allocationQuantity": StringAttribute, //
        "unit": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "lineProperty": StringAttribute, //
        "forecastModel": StringAttribute, //
        "periodKey": StringAttribute, //
        "allocationKey": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectID": StringAttribute, //
        "resource": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": StringAttribute, //
        "stop": StringAttribute, //
        "description": StringAttribute, //
        "projectContractID": StringAttribute, //
        "fundingSourceID": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "transId": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "resourceCategoryId": StringAttribute, //
        "quantity": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "relationship_OMLegalEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": StringAttribute, //
        "backingTable_ProjForecastCostRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_forecasts.costs");
  }
}
mixin(EntityCalls!("ProjectForecastCostEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastCostEntity);
  
  auto entity = ProjectForecastCostEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}