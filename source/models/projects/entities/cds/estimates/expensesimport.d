module models.projects.entities.cds.estimates.expenseimport;

@safe:
import models.projects;

class DProjectCDSEstimateExpensesImportEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSEstimateExpensesImportEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "TaskId": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ExchangeRate": StringAttribute, //
        "Description": StringAttribute, //
        "Price": StringAttribute, //
        "Quantity": StringAttribute, //
        "CurrencyId": StringAttribute, //
        "ModelId": StringAttribute, //
        "TransType": StringAttribute, //
        "DocumentDate": StringAttribute, //
        "BillingType": StringAttribute, //
        "TransactionCategory": StringAttribute, //
        "EstimateLineId": StringAttribute, //
        "BackingTable_ProjCDSEstimateExpensesImportRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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
