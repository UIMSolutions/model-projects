module models.projects.entities.wbs.activityestimate;

import models.projects;

@safe:
class DProjectWBSActivityEstimateEntity : DEntity {
  mixin(EntityThis!("ProjectWBSActivityEstimateEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectId": UUIDAttribute, //
        "hierarchyId": UUIDAttribute, //
        "taskId": UUIDAttribute, //
        "wbsId": UUIDAttribute, //
        "taskName": StringAttribute, //
        "description": StringAttribute, //
        "itemNumber": StringAttribute, //
        "lineProperty": StringAttribute, //
        "category": StringAttribute, //
        "transactionType": StringAttribute, //
        "quantity": StringAttribute, //
        "resourceCategoryRecId": UUIDAttribute, //
        "salesCategoryRecId": UUIDAttribute, //
        "unitCostPrice": StringAttribute, //
        "unitSalesPrice": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "salesCategory": StringAttribute, //
        "totalCostPrice": StringAttribute, //
        "totalSalesPrice": StringAttribute, //
        "relationship_ProjectRelationshipId": UUIDAttribute, //
        "relationship_ProjectCategoryRelationshipId": UUIDAttribute, //
        "relationship_ResourceCategoryRelationshipId": UUIDAttribute, //
        "backingTable_PSAActivityEstimatesRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_wbs.activityestimates");
  }
}
mixin(EntityCalls!("ProjectWBSActivityEstimateEntity"));

version(test_model_portals) { unittest {
    assert(ProjectWBSActivityEstimateEntity);
  
  auto entity = ProjectWBSActivityEstimateEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}