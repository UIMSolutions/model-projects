module models.projects.entities.expensejournals.header;

@safe:
import models.projects;

class DExpenseJournalHeaderEntity : DOOPEntity {
  mixin(EntityThis!("ExpenseJournalHeaderEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "PostingLayer": StringAttribute, //
        "JournalNameId": StringAttribute, //
        "JournalBatchNumber": StringAttribute, //
        "Description": StringAttribute, //
        "IsPosted": StringAttribute, //
        "LegalEntityForIntercompanyTax": StringAttribute, //
        "IsReversingEntry": StringAttribute, //
        "ReversingDate": StringAttribute, //
        "ReportedAsReadyBy": StringAttribute, //
        "RejectedBy": StringAttribute, //
        "ApprovedBy": StringAttribute, //
        "BackingTable_LedgerJournalTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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