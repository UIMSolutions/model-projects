module models.projects.entities.categories.group;

import models.projects;

@safe:
class DProjectCategoryGroupEntity : DEntity {
  mixin(EntityThis!("ProjectCategoryGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryGroupId": UUIDAttribute, //
        "categoryType": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjCategoryGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_categories");
  }
}
mixin(EntityCalls!("ProjectCategoryGroupEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCategoryGroupEntity);
  
  auto entity = ProjectCategoryGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}