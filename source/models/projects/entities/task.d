module models.projects.entities.task;

import models.projects;

@safe:
class DProjectTaskEntity : DEntity {
  mixin(EntityThis!("ProjectTaskEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "taskElementId": UUIDAttribute, //
        "taskHierarchyId": UUIDAttribute, //
        "taskOutlineLevel": StringAttribute, //
        "taskName": StringAttribute, //
        "parentTaskElementId": UUIDAttribute, //
        "taskNumberRecordId": UUIDAttribute, //
        "taskDisplaySequence": StringAttribute, //
        "taskId": UUIDAttribute, //
        "taskTimeType": StringAttribute, //
        "taskStatus": StringAttribute, //
        "taskOwningCompany": StringAttribute, //
        "taskSubject": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_tasks");
  }
}
mixin(EntityCalls!("ProjectTaskEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}