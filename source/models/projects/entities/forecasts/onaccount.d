module models.projects.entities.forecasts.onaccount;

import models.projects;

@safe:
class DProjectForecastOnAccountEntity : DEntity {
  mixin(EntityThis!("ProjectForecastOnAccountEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "salesCurrency": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "eliminationDate": DateAttribute, //
        "exchangeRate": StringAttribute, //
        "invoiceDate": DateAttribute, //
        "forecastModel": StringAttribute, //
        "budgetType": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "quantity": StringAttribute, //
        "salesPaymentDate": DateAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": DateAttribute, //
        "transactionId": UUIDAttribute, //
        "description": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjForecastOnAccRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_forecasts.onaccounts");
  }
}
mixin(EntityCalls!("ProjectForecastOnAccountEntity"));

version(test_model_portals) { unittest {
    assert(ProjectForecastOnAccountEntity);
  
  auto entity = ProjectForecastOnAccountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}