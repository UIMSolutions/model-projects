module models.projects.entities.cds.estimates.expenseimport;

@safe:
import models.projects;

class DProjectCDSEstimateExpensesImportEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSEstimateExpensesImportEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "taskId": StringAttribute, //
        "projectId": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "description": StringAttribute, //
        "price": StringAttribute, //
        "quantity": StringAttribute, //
        "currencyId": StringAttribute, //
        "modelId": StringAttribute, //
        "transType": StringAttribute, //
        "documentDate": StringAttribute, //
        "billingType": StringAttribute, //
        "transactionCategory": StringAttribute, //
        "estimateLineId": StringAttribute, //
        "backingTable_ProjCDSEstimateExpensesImportRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cds.estimate.expense.imports");
  }
}
mixin(EntityCalls!("ProjectCDSEstimateExpensesImportEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSEstimateExpensesImportEntity);
  
  auto entity = ProjectCDSEstimateExpensesImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
