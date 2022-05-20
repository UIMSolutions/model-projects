module models.projects.entities.expensejournals.header;

@safe:
import models.projects;

class DExpenseJournalHeaderEntity : DOOPEntity {
  mixin(EntityThis!("ExpenseJournalHeaderEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "postingLayer": StringAttribute, //
        "journalNameId": UUIDAttribute, //
        "journalBatchNumber": StringAttribute, //
        "description": StringAttribute, //
        "isPosted": StringAttribute, //
        "legalEntityForIntercompanyTax": StringAttribute, //
        "isReversingEntry": StringAttribute, //
        "reversingDate": StringAttribute, //
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

version(test_model_portals) {
  unittest {
    assert(ExpenseJournalHeaderEntity);
  
  auto entity = ExpenseJournalHeaderEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}