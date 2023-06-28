module models.projects.entities.costs.priceexpense;

import models.projects;

@safe:
class DProjectCostPriceExpenseEntity : DEntity {
  mixin(EntityThis!("ProjectCostPriceExpenseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "costPrice": StringAttribute, //
        "projectId": UUIDAttribute, //
        "customerAccount": StringAttribute, //
        "priceGroup": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "resource": StringAttribute, //
        "transactionDate": DateAttribute, //
        "resourceId": UUIDAttribute, //
        "backingTable_ProjCostPriceExpenseRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_costs.price.expenses");
  }
}
mixin(EntityCalls!("ProjectCostPriceExpenseEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCostPriceExpenseEntity);
  
  auto entity = ProjectCostPriceExpenseEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}