module models.projects.entities.pma.journals.table;

@safe:
import models.projects;

class DProjectJournalTableEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalTableEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ProjCategory": StringAttribute, //
        "DeleteLinesAfterPosting": StringAttribute, //
        "Description": StringAttribute, //
        "DetailSummary": StringAttribute, //
        "JournalBatchNumber": StringAttribute, //
        "JournalName": StringAttribute, //
        "JournalType": StringAttribute, //
        "ProjLineProperty": StringAttribute, //
        "Posted": StringAttribute, //
        "ProjectID": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "Resource": StringAttribute, //
        "Approve": StringAttribute, //
        "Txt": StringAttribute, //
        "NewVoucherBy": StringAttribute, //
        "SetVoucherDateTo": StringAttribute, //
        "SelectionBy": StringAttribute, //
        "NumberSequenceCode": StringAttribute, //
        "NumberSequenceDataArea": StringAttribute, //
        "ResourceId": StringAttribute, //
        "ResourceCompanyId": StringAttribute, //
        "PostedUserId": StringAttribute, //
        "Status": StringAttribute, //
        "BackingTable_ProjJournalTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journalnames");
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