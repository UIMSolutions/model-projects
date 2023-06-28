module models.projects.entities.journals.approvals.approval;

import models.projects;

@safe:
class DProjectJournalApprovalEntity : DEntity {
  mixin(EntityThis!("ProjectJournalApprovalEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "name": StringAttribute, //
        "approve": StringAttribute, //
        "backingTable_ProjJournalStatusTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_journal.approvals");
  }
}
mixin(EntityCalls!("ProjectJournalApprovalEntity"));

version(test_model_portals) { unittest {
    assert(ProjectJournalApprovalEntity);
  
  auto entity = ProjectJournalApprovalEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}