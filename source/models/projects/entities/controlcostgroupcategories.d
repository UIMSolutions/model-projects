module models.projects.entities.controlcostgroupcategory;

import models.projects;

@safe:
class DProjectControlCostGroupCategoryEntity : DEntity {
  mixin(EntityThis!("ProjectControlCostGroupCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "categoryName": StringAttribute, //
        "sharedCategory": StringAttribute, //
        "useInExpense": StringAttribute, //
        "useInProduction": StringAttribute, //
        "useInProject": StringAttribute, //
        "sharedCategoryId": UUIDAttribute, //
        "relationship_SharedCategoryRelationshipId": UUIDAttribute, //
        "backingTable_CategoryTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_control.costgroup.categories");
  }
}
mixin(EntityCalls!("ProjectControlCostGroupCategoryEntity"));

version(test_model_portals) { unittest {
    assert(ProjectControlCostGroupCategoryEntity);
  
  auto entity = ProjectControlCostGroupCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}