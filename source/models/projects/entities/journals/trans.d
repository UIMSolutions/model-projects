module models.projects.entities.journals.trans;

import models.projects;

@safe:
class DProjectJournalTransEntity : DEntity {
  mixin(EntityThis!("ProjectJournalTransEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "startDate": DateAttribute, //
        "projectId": UUIDAttribute, //
        "priceGroup": StringAttribute, //
        "projectDate": DateAttribute, //
        "cost": StringAttribute, //
        "percentageComplete": StringAttribute, //
        "psaWrkCtrId": UUIDAttribute, //
        "hours": StringAttribute, //
        "resource": StringAttribute, //
        "role": StringAttribute, //
        "reversingDate": DateAttribute, //
        "reversingEntry": StringAttribute, //
        "salesPrice": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "endTime": StringAttribute, //
        "voucherDate": DateAttribute, //
        "transactionId": UUIDAttribute, //
        "description": StringAttribute, //
        "voucher": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "journalId": UUIDAttribute, //
        "ResourceId": UUIDAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "resourceCategoryId": UUIDAttribute, //
        "currencyId": UUIDAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjJournalTableEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": UUIDAttribute, //
        "relationship_OMLegalEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": UUIDAttribute, //
        "relationship_CategoryRelationRelationshipId": UUIDAttribute, //
        "backingTable_ProjJournalTransRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_journalnames");
  }
}
mixin(EntityCalls!("ProjectJournalTransEntity"));

version(test_model_portals) { unittest {
    assert(ProjectJournalTransEntity);
  
  auto entity = ProjectJournalTransEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}