module models.projects.entities.journals.approvals.approval;

@safe:
import models.projects;

class DProjectJournalApprovalEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalApprovalEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Name": StringAttribute. //
        "Approve": StringAttribute. //
        "BackingTable_ProjJournalStatusTableRelationshipId": StringAttribute. //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute. //
     ])
      .registerPath("projects_journalapprovals");
  }
}
mixin(EntityCalls!("ProjectJournalApprovalEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectJournalApprovalEntity);
  
  auto entity = ProjectJournalApprovalEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}