module models.projects.entities.pma.journals.trans;

@safe:
import models.projects;

class DProjectJournalTransEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalTransEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "Category": StringAttribute, //
        "CostPrice": StringAttribute, //
        "Dimension": StringAttribute, //
        "StartTime": StringAttribute, //
        "LineNumber": StringAttribute, //
        "LineProperty": StringAttribute, //
        "TypeOfOperation": StringAttribute, //
        "StartDate": StringAttribute, //
        "ProjectID": StringAttribute, //
        "PriceGroup": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "Cost": StringAttribute, //
        "PercentageComplete": StringAttribute, //
        "PSAWrkCtrId": StringAttribute, //
        "Hours": StringAttribute, //
        "Resource": StringAttribute, //
        "Role": StringAttribute, //
        "ReversingDate": StringAttribute, //
        "ReversingEntry": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "SalesTaxGroup": StringAttribute, //
        "ItemSalesTaxGroup": StringAttribute, //
        "EndTime": StringAttribute, //
        "VoucherDate": StringAttribute, //
        "TransactionID": StringAttribute, //
        "Description": StringAttribute, //
        "Voucher": StringAttribute, //
        "DimensionDisplayValue": StringAttribute, //
        "JournalId": StringAttribute, //
        "ResourceId": StringAttribute, //
        "ResourceCompanyId": StringAttribute, //
        "ResourceCategoryId": StringAttribute, //
        "CurrencyId": StringAttribute, //
        "Relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "Relationship_ProjJournalTableEntityRelationshipId": StringAttribute, //
        "Relationship_ProjectEntityRelationshipId": StringAttribute, //
        "Relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "Relationship_OMLegalEntityRelationshipId": StringAttribute, //
        "Relationship_ResResourceDataEntityRelationshipId": StringAttribute, //
        "Relationship_ResResourceCategoryDataEntityRelationshipId": StringAttribute, //
        "Relationship_CategoryRelationRelationshipId": StringAttribute, //
        "BackingTable_ProjJournalTransRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journalnames");
  }
}
mixin(EntityCalls!("ProjectJournalTransEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectJournalTransEntity);
  
  auto entity = ProjectJournalTransEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}