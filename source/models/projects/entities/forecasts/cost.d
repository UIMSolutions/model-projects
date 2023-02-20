module models.projects.entities.forecasts.cost;

@safe:
import models.projects;

class DProjectForecastCostEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastCostEntity"));

  override void initialize() {
    super.initialize(configSettings);

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
        "projectId": UUIDAttribute, //
        "resource": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": StringAttribute, //
        "stop": StringAttribute, //
        "description": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "resourceId": UUIDAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "transId": UUIDAttribute, //
        "defaultDimension": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "resourceCategoryId": UUIDAttribute, //
        "quantity": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": UUIDAttribute, //
        "relationship_OMLegalEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjForecastCostRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
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