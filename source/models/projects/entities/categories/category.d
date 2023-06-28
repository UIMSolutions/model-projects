module models.projects.entities.categories.category;

import models.projects;

@safe:
class DProjectCategoryEntity : DEntity {
  mixin(EntityThis!("ProjectCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activeInJournals": StringAttribute, //
        "categoryGroup": StringAttribute, //
        "category": StringAttribute, //
        "transactionType": StringAttribute, //
        "categoryName": StringAttribute, //
        "worker": StringAttribute, //
        "customerPaymentRetention": StringAttribute, //
        "indirectCostComponent": StringAttribute, //
        "estimate": StringAttribute, //
        "subscription": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "absence": StringAttribute, //
        "fiscalInformationServiceCode": StringAttribute, //
        "itemWithholdingTaxGroup": StringAttribute, //
        "itemWithholdingTaxGroupId": UUIDAttribute, //
        "taxRateTypeName": StringAttribute, //
        "backingTable_ProjCategoryRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_categories");
  }
}
mixin(EntityCalls!("ProjectCategoryEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCategoryEntity);
  
  auto entity = ProjectCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}