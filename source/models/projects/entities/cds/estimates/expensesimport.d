module models.projects.entities.cds.estimates.expenseimport;

import models.projects;

@safe:
class DProjectCDSEstimateExpensesImportEntity : DEntity {
  mixin(EntityThis!("ProjectCDSEstimateExpensesImportEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "taskId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "exchangeRate": StringAttribute, //
        "description": StringAttribute, //
        "price": StringAttribute, //
        "quantity": StringAttribute, //
        "currencyId": UUIDAttribute, //
        "modelId": UUIDAttribute, //
        "transType": StringAttribute, //
        "documentDate": DateAttribute, //
        "billingType": StringAttribute, //
        "transactionCategory": StringAttribute, //
        "estimateLineId": UUIDAttribute, //
        "backingTable_ProjCDSEstimateExpensesImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.estimate.expense.imports");
  }
}
mixin(EntityCalls!("ProjectCDSEstimateExpensesImportEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSEstimateExpensesImportEntity);
  
  auto entity = ProjectCDSEstimateExpensesImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
