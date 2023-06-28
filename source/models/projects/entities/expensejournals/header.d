module models.projects.entities.expensejournals.header;

import models.projects;

@safe:
class DExpenseJournalHeaderEntity : DEntity {
  mixin(EntityThis!("ExpenseJournalHeaderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "postingLayer": StringAttribute, //
        "journalNameId": UUIDAttribute, //
        "journalBatchNumber": StringAttribute, //
        "description": StringAttribute, //
        "isPosted": StringAttribute, //
        "legalEntityForIntercompanyTax": StringAttribute, //
        "isReversingEntry": StringAttribute, //
        "reversingDate": DateAttribute, //
        "reportedAsReadyBy": StringAttribute, //
        "rejectedBy": StringAttribute, //
        "approvedBy": StringAttribute, //
        "backingTable_LedgerJournalTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_expensejournalheaders");
  }
}
mixin(EntityCalls!("ExpenseJournalHeaderEntity"));

version(test_model_portals) { unittest {
    assert(ExpenseJournalHeaderEntity);
  
  auto entity = ExpenseJournalHeaderEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}