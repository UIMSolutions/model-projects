module models.projects.entities.items.journals.trans;

@safe:
import models.projects;

class DProjectItemJournalTransEntity : DOOPEntity {
  mixin(EntityThis!("ProjectItemJournalTransEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "costAmount": StringAttribute, //
        "costPrice": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "inventDimensionId": StringAttribute, //
        "itemId": StringAttribute, //
        "journalId": StringAttribute, //
        "voucher": StringAttribute, //
        "projectDate": StringAttribute, //
        "quantity": StringAttribute, //
        "projectUnitID": StringAttribute, //
        "projectTaxItemGroupId": StringAttribute, //
        "projectTaxGroupId": StringAttribute, //
        "projectSalesPrice": StringAttribute, //
        "projectSalesCurrencyId": StringAttribute, //
        "projectLinePropertyId": StringAttribute, //
        "projectId": StringAttribute, //
        "projectCategoryId": StringAttribute, //
        "cwQuantity": StringAttribute, //
        "lineNum": StringAttribute, //
        "priceUnit": StringAttribute, //
        "costMarkup": StringAttribute, //
        "inventTransactionId": StringAttribute, //
        "inventTransactionReturnId": StringAttribute, //
        "projectTransactionId": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "productColorId": StringAttribute, //
        "productConfigurationId": StringAttribute, //
        "productSizeId": StringAttribute, //
        "productStyleId": StringAttribute, //
        "productVersionId": StringAttribute, //
        "storageSiteId": StringAttribute, //
        "storageWarehouseId": StringAttribute, //
        "storageLocationId": StringAttribute, //
        "inventSerialId": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "backingTable_InventJournalTransRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_itemjournaltrans");
  }
}
mixin(EntityCalls!("ProjectItemJournalTransEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectItemJournalTransEntity);
  
  auto entity = ProjectItemJournalTransEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}