module models.projects.entities.costs.priceexpense;

@safe:
import models.projects;

class DProjectCostPriceExpenseEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCostPriceExpenseEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": StringAttribute, //
        "costPrice": StringAttribute, //
        "projId": StringAttribute, //
        "customerAccount": StringAttribute, //
        "priceGroup": StringAttribute, //
        "projectContractId": StringAttribute, //
        "resource": StringAttribute, //
        "transactionDate": StringAttribute, //
        "resourceId": StringAttribute, //
        "backingTable_ProjCostPriceExpenseRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_costs.price.expenses");
  }
}
mixin(EntityCalls!("ProjectCostPriceExpenseEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCostPriceExpenseEntity);
  
  auto entity = ProjectCostPriceExpenseEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}