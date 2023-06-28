module models.projects.entities.cds.category;

import models.projects;

@safe:
class DProjectCDSCategoryEntity : DEntity {
  mixin(EntityThis!("ProjectCDSCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "sharedCategory": StringAttribute, //
        "integrationId": UUIDAttribute, //
        "backingTable_CategoryTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.categories");
  }
}
mixin(EntityCalls!("ProjectCDSCategoryEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSCategoryEntity);
  
  auto entity = ProjectCDSCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}