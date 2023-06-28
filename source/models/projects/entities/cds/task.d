module models.projects.entities.cds.task;

import models.projects;

@safe:
class DProjectCDSTaskEntity : DEntity {
  mixin(EntityThis!("ProjectCDSTaskEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "task": StringAttribute, //
        "parentTask": StringAttribute, //
        "workBreakdownStructureId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjCDSTaskImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.tasks");
  }
}
mixin(EntityCalls!("ProjectCDSTaskEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSTaskEntity);
  
  auto entity = ProjectCDSTaskEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
