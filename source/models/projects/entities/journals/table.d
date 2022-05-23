module models.projects.entities.journals.table;

@safe:
import models.projects;

class DProjectJournalTableEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalTableEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projCategory": StringAttribute, //
        "deleteLinesAfterPosting": StringAttribute, //
        "description": StringAttribute, //
        "detailSummary": StringAttribute, //
        "journalBatchNumber": StringAttribute, //
        "journalName": StringAttribute, //
        "journalType": StringAttribute, //
        "projLineProperty": StringAttribute, //
        "posted": StringAttribute, //
        "projectID": StringAttribute, //
        "projectDate": StringAttribute, //
        "resource": StringAttribute, //
        "approve": StringAttribute, //
        "txt": StringAttribute, //
        "newVoucherBy": StringAttribute, //
        "setVoucherDateTo": StringAttribute, //
        "selectionBy": StringAttribute, //
        "numberSequenceCode": StringAttribute, //
        "numberSequenceDataArea": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "postedUserId": StringAttribute, //
        "status": StringAttribute, //
        "backingTable_ProjJournalTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journal.names");
  }
}
mixin(EntityCalls!("ProjectJournalTableEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectJournalTableEntity);
  
  auto entity = ProjectJournalTableEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}