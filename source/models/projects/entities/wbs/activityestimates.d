module models.projects.entities.wbs.activityestimate;

@safe:
import models.projects;

class DProjectWBSActivityEstimateEntity : DOOPEntity {
  mixin(EntityThis!("ProjectWBSActivityEstimateEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectId": StringAttribute, //
        "hierarchyId": StringAttribute, //
        "taskId": StringAttribute, //
        "wbsId": StringAttribute, //
        "taskName": StringAttribute, //
        "description": StringAttribute, //
        "itemNumber": StringAttribute, //
        "lineProperty": StringAttribute, //
        "category": StringAttribute, //
        "transactionType": StringAttribute, //
        "quantity": StringAttribute, //
        "resourceCategoryRecId": StringAttribute, //
        "salesCategoryRecId": StringAttribute, //
        "unitCostPrice": StringAttribute, //
        "unitSalesPrice": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "salesCategory": StringAttribute, //
        "totalCostPrice": StringAttribute, //
        "totalSalesPrice": StringAttribute, //
        "relationship_ProjectRelationshipId": StringAttribute, //
        "relationship_ProjectCategoryRelationshipId": StringAttribute, //
        "relationship_ResourceCategoryRelationshipId": StringAttribute, //
        "backingTable_PSAActivityEstimatesRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("projects_wbs.activityestimates");
  }
}
mixin(EntityCalls!("ProjectWBSActivityEstimateEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectWBSActivityEstimateEntity);
  
  auto entity = ProjectWBSActivityEstimateEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}