module models.projects.entities.wbs.templates.task;

import models.projects;

@safe:
class DProjectWBSTemplateTaskEntity : DEntity {
  mixin(EntityThis!("ProjectWBSTemplateTaskEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "hierarchyId": UUIDAttribute, //
        "taskId": UUIDAttribute, //
        "wbsId": UUIDAttribute, //
        "notes": StringAttribute, //
        "task": StringAttribute, //
        "predecessors": StringAttribute, //
        "category": StringAttribute, //
        "effort": StringAttribute, //
        "numberOfResources": StringAttribute, //
        "role": StringAttribute, //
        "activityStatus": StringAttribute, //
        "parentTaskId": UUIDAttribute, //
        "taskSiblingNumber": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "taskPriority": StringAttribute, //
        "isCategoryMandatory": StringAttribute, //
        "isTemplate": StringAttribute, //
        "relationship_ProjectCategoryRelationshipId": UUIDAttribute, //
        "relationship_ResourceCategoryRelationshipId": UUIDAttribute, //
        "backingTable_ProjPlanVersionRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_wbs.template.tasks");
  }
}
mixin(EntityCalls!("ProjectWBSTemplateTaskEntity"));

version(test_model_portals) { unittest {
    assert(ProjectWBSTemplateTaskEntity);
  
  auto entity = ProjectWBSTemplateTaskEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}