module models.projects.entities.forecasts.onaccount;

@safe:
import models.projects;

class DProjectForecastOnAccountEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastOnAccountEntity"));

  override void initialize() {
    super.initialize;

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
        "projectID": StringAttribute, //
        "quantity": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": StringAttribute, //
        "transactionID": StringAttribute, //
        "description": StringAttribute, //
        "projectContractID": StringAttribute, //
        "fundingSourceID": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "backingTable_ProjForecastOnAccRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_forecasts.onaccounts");
  }
}
mixin(EntityCalls!("ProjectForecastOnAccountEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastOnAccountEntity);
  
  auto entity = ProjectForecastOnAccountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}