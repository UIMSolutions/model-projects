module models.projects.entities.resources.categories.data;

import models.projects;

@safe:
class DProjectResourceCategoryDataEntity : DEntity {
  mixin(EntityThis!("ProjectResourceCategoryDataEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "roleId": UUIDAttribute, //
        "description": StringAttribute, //
        "defaultResourceCategory": StringAttribute, //
        "isCategoryDisabled": StringAttribute, //
        "backingTable_PSASchedRoleRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_resources.categories.data");
  }
}
mixin(EntityCalls!("ProjectResourceCategoryDataEntity"));

version(test_model_portals) { unittest {
    assert(ProjectResourceCategoryDataEntity);
  
  auto entity = ProjectResourceCategoryDataEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}