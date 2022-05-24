module models.projects.entities.resources.categories.setupdata;

@safe:
import models.projects;

class DProjectResourceCategoryDataEntity : DOOPEntity {
  mixin(EntityThis!("ProjectResourceCategoryDataEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "roleId": StringAttribute, //
        "description": StringAttribute, //
        "defaultResourceCategory": StringAttribute, //
        "isCategoryDisabled": StringAttribute, //
        "backingTable_PSASchedRoleRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_resources.categories.data");
  }
}
mixin(EntityCalls!("ProjectResourceCategoryDataEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectResourceCategoryDataEntity);
  
  auto entity = ProjectResourceCategoryDataEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}