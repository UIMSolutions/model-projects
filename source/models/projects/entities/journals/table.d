module models.projects.entities.journals.table;

@safe:
import models.projects;

class DProjectJournalTableEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalTableEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "projectId": UUIDAttribute, //
        "projectDate": StringAttribute, //
        "resource": StringAttribute, //
        "approve": StringAttribute, //
        "txt": StringAttribute, //
        "newVoucherBy": StringAttribute, //
        "setVoucherDateTo": StringAttribute, //
        "selectionBy": StringAttribute, //
        "numberSequenceCode": StringAttribute, //
        "numberSequenceDataArea": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "postedUserId": UUIDAttribute, //
        "status": StringAttribute, //
        "backingTable_ProjJournalTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
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