module models.projects.entities.costs.salesprice;

@safe:
import models.projects;

class DProjectCostSalesPriceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCostSalesPriceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": StringAttribute, //
        "currencyId": StringAttribute, //
        "projectId": StringAttribute, //
        "priceGroup": StringAttribute, //
        "salesPriceModel": StringAttribute, //
        "salesPricing": StringAttribute, //
        "validFor": StringAttribute, //
        "customerAccount": StringAttribute, //
        "projectContractId": StringAttribute, //
        "resource": StringAttribute, //
        "transactionDate": StringAttribute, //
        "resourceId": StringAttribute, //
        "backingTable_ProjCostSalesPriceRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_costs.sales.prices");
  }
}
mixin(EntityCalls!("ProjectCostSalesPriceEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCostSalesPriceEntity);
  
  auto entity = ProjectCostSalesPriceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}