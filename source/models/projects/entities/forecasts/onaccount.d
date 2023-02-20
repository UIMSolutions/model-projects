module models.projects.entities.forecasts.onaccount;

@safe:
import models.projects;

class DProjectForecastOnAccountEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastOnAccountEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "salesCurrency": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "eliminationDate": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "forecastModel": StringAttribute, //
        "budgetType": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "quantity": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": StringAttribute, //
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