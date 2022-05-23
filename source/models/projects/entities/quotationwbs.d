module models.projects.entities.ProjQuotationWbs;

module models.projects.entities.quotationwbs;

@safe:
import models.projects;

class DProjectQuotationWbsEntity : DOOPEntity {
  mixin(EntityThis!("ProjectQuotationWbsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "quotationId": StringAttribute, //
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
        "usTaskMandatory": StringAttribute, //
        "hierarchyTreeTableRefRecId": StringAttribute, //
        "taskSiblingNumber": StringAttribute, //
        "parentTaskId": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "taskPriority": StringAttribute, //
        "activityTaskTimeType": StringAttribute, //
        "isCategoryMandatory": StringAttribute, //
        "calendarId": StringAttribute, //
        "endNode": StringAttribute, //
        "hierarchyLevel": StringAttribute, //
        "calendarStandardWorkDayHours": StringAttribute, //
        "taskEffortAtComplete": StringAttribute, //
        "taskCostAtComplete": StringAttribute, //
        "relationship_ProjectCategoryRelationshipId": StringAttribute, //
        "relationship_ResourceCategoryRelationshipId": StringAttribute, //
        "backingTable_ProjPlanVersionRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_quotation.wbs");
  }
}
mixin(EntityCalls!("ProjectQuotationWbsEntity"));

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