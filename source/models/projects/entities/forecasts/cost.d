module models.projects.entities.forecasts.cost;

import models.projects;

@safe:
class DProjectForecastCostEntity : DEntity {
  mixin(EntityThis!("ProjectForecastCostEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "method": StringAttribute, //
        "category": StringAttribute, //
        "costPaymentDate": DateAttribute, //
        "costPrice": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "eliminationDate": DateAttribute, //
        "endDate": DateAttribute, //
        "exchangeRate": StringAttribute, //
        "allocationQuantity": StringAttribute, //
        "unit": StringAttribute, //
        "invoiceDate": DateAttribute, //
        "lineProperty": StringAttribute, //
        "forecastModel": StringAttribute, //
        "periodKey": StringAttribute, //
        "allocationKey": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "resource": StringAttribute, //
        "salesPaymentDate": DateAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": DateAttribute, //
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

version(test_model_portals) { unittest {
    assert(ProjectForecastCostEntity);
  
  auto entity = ProjectForecastCostEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}