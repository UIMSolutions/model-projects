module models.projects.entities.costs.salesprice;

import models.projects;

@safe:
class DProjectCostSalesPriceEntity : DEntity {
  mixin(EntityThis!("ProjectCostSalesPriceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "currencyId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "priceGroup": StringAttribute, //
        "salesPriceModel": StringAttribute, //
        "salesPricing": StringAttribute, //
        "validFor": StringAttribute, //
        "customerAccount": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "resource": StringAttribute, //
        "transactionDate": DateAttribute, //
        "resourceId": UUIDAttribute, //
        "backingTable_ProjCostSalesPriceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_costs.sales.prices");
  }
}
mixin(EntityCalls!("ProjectCostSalesPriceEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCostSalesPriceEntity);
  
  auto entity = ProjectCostSalesPriceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}