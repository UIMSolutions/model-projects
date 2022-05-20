module models.projects.entities.journals.approvals.details;

@safe:
import models.projects;

class DProjectJournalApprovalDetailsEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalApprovalDetailsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Editing": StringAttribute, //
        "CheckJournal": StringAttribute, //
        "Group": StringAttribute, //
        "ReadyForPosting": StringAttribute, //
        "StatusValue": StringAttribute, //
        "Previous": StringAttribute, //
        "Approve": StringAttribute, //
        "Next": StringAttribute, //
        "backingTable_ProjJournalStatusLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journalapprovaldetails");
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