module models.projects.entities.items.journals.trans;

@safe:
import models.projects;

class DProjectItemJournalTransEntity : DOOPEntity {
  mixin(EntityThis!("ProjectItemJournalTransEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "CostAmount": StringAttribute, //
        "CostPrice": StringAttribute, //
        "DefaultDimension": StringAttribute, //
        "InventDimensionId": StringAttribute, //
        "ItemId": StringAttribute, //
        "JournalId": StringAttribute, //
        "Voucher": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "Quantity": StringAttribute, //
        "ProjectUnitID": StringAttribute, //
        "ProjectTaxItemGroupId": StringAttribute, //
        "ProjectTaxGroupId": StringAttribute, //
        "ProjectSalesPrice": StringAttribute, //
        "ProjectSalesCurrencyId": StringAttribute, //
        "ProjectLinePropertyId": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ProjectCategoryId": StringAttribute, //
        "CWQuantity": StringAttribute, //
        "LineNum": StringAttribute, //
        "PriceUnit": StringAttribute, //
        "CostMarkup": StringAttribute, //
        "InventTransactionId": StringAttribute, //
        "InventTransactionReturnId": StringAttribute, //
        "ProjectTransactionId": StringAttribute, //
        "DefaultDimensionDisplayValue": StringAttribute, //
        "ProductColorId": StringAttribute, //
        "ProductConfigurationId": StringAttribute, //
        "ProductSizeId": StringAttribute, //
        "ProductStyleId": StringAttribute, //
        "ProductVersionId": StringAttribute, //
        "StorageSiteId": StringAttribute, //
        "StorageWarehouseId": StringAttribute, //
        "StorageLocationId": StringAttribute, //
        "inventSerialId": StringAttribute, //
        "Relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "Relationship_ProjectEntityRelationshipId": StringAttribute, //
        "Relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "BackingTable_InventJournalTransRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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