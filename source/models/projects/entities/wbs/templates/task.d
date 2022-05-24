module models.projects.entities.wbs.templates.task;

@safe:
import models.projects;

class DProjectWBSTemplateTaskEntity : DOOPEntity {
  mixin(EntityThis!("ProjectWBSTemplateTaskEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "hierarchyId": StringAttribute, //
        "taskId": StringAttribute, //
        "wbsId": StringAttribute, //
        "notes": StringAttribute, //
        "task": StringAttribute, //
        "predecessors": StringAttribute, //
        "category": StringAttribute, //
        "effort": StringAttribute, //
        "numberOfResources": StringAttribute, //
        "role": StringAttribute, //
        "activityStatus": StringAttribute, //
        "parentTaskId": StringAttribute, //
        "taskSiblingNumber": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "taskPriority": StringAttribute, //
        "isCategoryMandatory": StringAttribute, //
        "isTemplate": StringAttribute, //
        "relationship_ProjectCategoryRelationshipId": StringAttribute, //
        "relationship_ResourceCategoryRelationshipId": StringAttribute, //
        "backingTable_ProjPlanVersionRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("projects_wbs.template.tasks");
  }
}
mixin(EntityCalls!("ProjectWBSTemplateTaskEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectWBSTemplateTaskEntity);
  
  auto entity = ProjectWBSTemplateTaskEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}