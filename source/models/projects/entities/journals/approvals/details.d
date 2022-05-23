module models.projects.entities.journals.approvals.details;

@safe:
import models.projects;

class DProjectJournalApprovalDetailsEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalApprovalDetailsEntity"));

  override void initialize() {
    super.initialize;

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
        "backingTable_ProjJournalStatusLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journal.approval.details");
  }
}
mixin(EntityCalls!("ProjectJournalApprovalDetailsEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectJournalApprovalDetailsEntity);
  
  auto entity = ProjectJournalApprovalDetailsEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}