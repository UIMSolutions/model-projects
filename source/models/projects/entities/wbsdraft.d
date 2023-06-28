module models.projects.entities.wbsdraft;

import models.projects;

@safe:
class DProjectWBSDraftEntity : DEntity {
  mixin(EntityThis!("ProjectWBSDraftEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectId": UUIDAttribute, //
        "hierarchyId": UUIDAttribute, //
        "taskId": UUIDAttribute, //
        "wbsId": UUIDAttribute, //
        "note": StringAttribute, //
        "task": StringAttribute, //
        "predecessors": StringAttribute, //
        "category": StringAttribute, //
        "effort": StringAttribute, //
        "startDate": DateAttribute, //
        "endDate": DateAttribute, //
        "duration": StringAttribute, //
        "numberOfResources": StringAttribute, //
        "role": StringAttribute, //
        "isTaskClosed": StringAttribute, //
        "isTaskMandatory": StringAttribute, //
        "hierarchyTreeTableRefRecId": UUIDAttribute, //
        "taskSiblingNumber": StringAttribute, //
        "parentTaskId": UUIDAttribute, //
        "resourceCategory": StringAttribute, //
        "taskPriority": StringAttribute, //
        "activityTaskTimeType": StringAttribute, //
        "isCategoryMandatory": StringAttribute, //
        "calendarId": UUIDAttribute, //
        "mspId": UUIDAttribute, //
        "endNode": StringAttribute, //
        "hierarchyLevel": StringAttribute, //
        "calendarStandardWorkDayHours": StringAttribute, //
        "taskEffortAtComplete": StringAttribute, //
        "taskCostAtComplete": StringAttribute, //
        "relationship_ProjectRelationshipId": UUIDAttribute, //
        "relationship_ProjectCategoryRelationshipId": UUIDAttribute, //
        "relationship_ResourceRoleRelationshipId": UUIDAttribute, //
        "backingTable_ProjPlanVersionRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_wbs.drafts");
  }
}
mixin(EntityCalls!("ProjectWBSDraftEntity"));

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