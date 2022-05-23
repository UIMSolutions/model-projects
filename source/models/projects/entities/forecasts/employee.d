module models.projects.entities.forecasts.employee;

@safe:
import models.projects;

class DProjectForecastEmployeeEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastEmployeeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "category": StringAttribute, //
        "costPaymentDate": StringAttribute, //
        "costPrice": StringAttribute, //
        "cashFlowForecastStatus": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "eliminationDate": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "jobIdentification": StringAttribute, //
        "lineNumber": StringAttribute, //
        "lineProperty": StringAttribute, //
        "forecastModel": StringAttribute, //
        "budgetType": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectID": StringAttribute, //
        "hours": StringAttribute, //
        "specialReport": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "capacity": StringAttribute, //
        "projectDate": StringAttribute, //
        "startTime": StringAttribute, //
        "link": StringAttribute, //
        "linkType": StringAttribute, //
        "hoursScheduled": StringAttribute, //
        "endDate": StringAttribute, //
        "endTime": StringAttribute, //
        "workingTime": StringAttribute, //
        "schedulingResource": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "transactionID": StringAttribute, //
        "description": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "projectContractID": StringAttribute, //
        "fundingSourceID": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "resourceCategoryId": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "relationship_OMLegalEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": StringAttribute, //
        "backingTable_ProjForecastEmplRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_forecasts.employees");
  }
}
mixin(EntityCalls!("ProjectForecastEmployeeEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastEmployeeEntity);
  
  auto entity = ProjectForecastEmployeeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}