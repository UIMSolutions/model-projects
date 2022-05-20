module models.projects.entities.cds.task;

@safe:
import models.projects;

class DProjectCDSTaskEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSTaskEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "task": StringAttribute, //
        "parentTask": StringAttribute, //
        "workBreakdownStructureID": StringAttribute, //
        "projectId": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjCDSTaskImportRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cds.tasks");
  }
}
mixin(EntityCalls!("ProjectCDSTaskEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSTaskEntity);
  
  auto entity = ProjectCDSTaskEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
