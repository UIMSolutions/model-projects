module models.projects.entities.journals.trans;

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
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjJournalTableEntityRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": StringAttribute, //
        "relationship_OMLegalEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": StringAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": StringAttribute, //
        "relationship_CategoryRelationRelationshipId": StringAttribute, //
        "backingTable_ProjJournalTransRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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