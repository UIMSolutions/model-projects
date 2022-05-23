module models.projects.entities.wbsdraft;

@safe:
import models.projects;

class DProjectWBSDraftEntity : DOOPEntity {
  mixin(EntityThis!("ProjectWBSDraftEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectId": StringAttribute, //
        "hierarchyId": StringAttribute, //
        "taskId": StringAttribute, //
        "wbsId": StringAttribute, //
        "note": StringAttribute, //
        "task": StringAttribute, //
        "predecessors": StringAttribute, //
        "category": StringAttribute, //
        "effort": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "duration": StringAttribute, //
        "numberOfResources": StringAttribute, //
        "role": StringAttribute, //
        "isTaskClosed": StringAttribute, //
        "isTaskMandatory": StringAttribute, //
        "hierarchyTreeTableRefRecId": StringAttribute, //
        "taskSiblingNumber": StringAttribute, //
        "parentTaskId": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "taskPriority": StringAttribute, //
        "activityTaskTimeType": StringAttribute, //
        "isCategoryMandatory": StringAttribute, //
        "calendarId": StringAttribute, //
        "mspID": StringAttribute, //
        "endNode": StringAttribute, //
        "hierarchyLevel": StringAttribute, //
        "calendarStandardWorkDayHours": StringAttribute, //
        "taskEffortAtComplete": StringAttribute, //
        "taskCostAtComplete": StringAttribute, //
        "relationship_ProjectRelationshipId": StringAttribute, //
        "relationship_ProjectCategoryRelationshipId": StringAttribute, //
        "relationship_ResourceRoleRelationshipId": StringAttribute, //
        "backingTable_ProjPlanVersionRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_wbs.drafts");
  }
}
mixin(EntityCalls!("ProjectWBSDraftEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}