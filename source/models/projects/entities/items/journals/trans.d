module models.projects.entities.items.journals.trans;

import models.projects;

@safe:
class DProjectItemJournalTransEntity : DEntity {
  mixin(EntityThis!("ProjectItemJournalTransEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "costAmount": StringAttribute, //
        "costPrice": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "inventDimensionId": UUIDAttribute, //
        "itemId": UUIDAttribute, //
        "journalId": UUIDAttribute, //
        "voucher": StringAttribute, //
        "projectDate": DateAttribute, //
        "quantity": StringAttribute, //
        "projectUnitId": UUIDAttribute, //
        "projectTaxItemGroupId": UUIDAttribute, //
        "projectTaxGroupId": UUIDAttribute, //
        "projectSalesPrice": StringAttribute, //
        "projectSalesCurrencyId": UUIDAttribute, //
        "projectLinePropertyId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "projectCategoryId": UUIDAttribute, //
        "cwQuantity": StringAttribute, //
        "lineNum": StringAttribute, //
        "priceUnit": StringAttribute, //
        "costMarkup": StringAttribute, //
        "inventTransactionId": UUIDAttribute, //
        "inventTransactionReturnId": UUIDAttribute, //
        "projectTransactionId": UUIDAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "productColorId": UUIDAttribute, //
        "productConfigurationId": UUIDAttribute, //
        "productSizeId": UUIDAttribute, //
        "productStyleId": UUIDAttribute, //
        "productVersionId": UUIDAttribute, //
        "storageSiteId": UUIDAttribute, //
        "storageWarehouseId": UUIDAttribute, //
        "storageLocationId": UUIDAttribute, //
        "inventSerialId": UUIDAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": UUIDAttribute, //
        "backingTable_InventJournalTransRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_itemjournaltrans");
  }
}
mixin(EntityCalls!("ProjectItemJournalTransEntity"));

version(test_model_portals) { unittest {
    assert(ProjectItemJournalTransEntity);
  
  auto entity = ProjectItemJournalTransEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}