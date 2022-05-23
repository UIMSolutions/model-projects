module models.projects.entities.journals.trans;

@safe:
import models.projects;

class DProjectJournalTransEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalTransEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "category": StringAttribute, //
        "costPrice": StringAttribute, //
        "dimension": StringAttribute, //
        "startTime": StringAttribute, //
        "lineNumber": StringAttribute, //
        "lineProperty": StringAttribute, //
        "typeOfOperation": StringAttribute, //
        "startDate": StringAttribute, //
        "projectID": StringAttribute, //
        "priceGroup": StringAttribute, //
        "projectDate": StringAttribute, //
        "cost": StringAttribute, //
        "percentageComplete": StringAttribute, //
        "psaWrkCtrId": StringAttribute, //
        "hours": StringAttribute, //
        "resource": StringAttribute, //
        "role": StringAttribute, //
        "reversingDate": StringAttribute, //
        "reversingEntry": StringAttribute, //
        "salesPrice": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "endTime": StringAttribute, //
        "voucherDate": StringAttribute, //
        "transactionID": StringAttribute, //
        "description": StringAttribute, //
        "voucher": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "journalId": StringAttribute, //
        "ResourceId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "resourceCategoryId": StringAttribute, //
        "currencyId": StringAttribute, //
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