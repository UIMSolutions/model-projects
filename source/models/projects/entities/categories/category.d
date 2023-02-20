module models.projects.entities.categories.category;

@safe:
import models.projects;

class DProjectCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ActiveInJournals": StringAttribute, //
        "CategoryGroup": StringAttribute, //
        "Category": StringAttribute, //
        "TransactionType": StringAttribute, //
        "CategoryName": StringAttribute, //
        "Worker": StringAttribute, //
        "CustomerPaymentRetention": StringAttribute, //
        "IndirectCostComponent": StringAttribute, //
        "Estimate": StringAttribute, //
        "Subscription": StringAttribute, //
        "ItemSalesTaxGroup": StringAttribute, //
        "Absence": StringAttribute, //
        "FiscalInformationServiceCode": StringAttribute, //
        "ItemWithholdingTaxGroup": StringAttribute, //
        "ItemWithholdingTaxGroupId": UUIDAttribute, //
        "TaxRateTypeName": StringAttribute, //
        "BackingTable_ProjCategoryRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_categories");
  }
}
mixin(EntityCalls!("ProjectCategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCategoryEntity);
  
  auto entity = ProjectCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}