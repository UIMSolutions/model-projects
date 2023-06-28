module models.projects.entities.journals.approvals.details;

import models.projects;

@safe:
class DProjectJournalApprovalDetailsEntity : DEntity {
  mixin(EntityThis!("ProjectJournalApprovalDetailsEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "editing": StringAttribute, //
        "checkJournal": StringAttribute, //
        "group": StringAttribute, //
        "readyForPosting": StringAttribute, //
        "statusValue": StringAttribute, //
        "previous": StringAttribute, //
        "approve": StringAttribute, //
        "next": StringAttribute, //
        "backingTable_ProjJournalStatusLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_journal.approval.details");
  }
}
mixin(EntityCalls!("ProjectJournalApprovalDetailsEntity"));

version(test_model_portals) { unittest {
    assert(ProjectJournalApprovalDetailsEntity);
  
  auto entity = ProjectJournalApprovalDetailsEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}