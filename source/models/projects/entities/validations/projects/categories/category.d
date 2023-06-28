module models.projects.entities.validations.projects.categories.category;

import models.projects;

@safe:
class DProjectValidationProjectCategoryEntity : DEntity {
  mixin(EntityThis!("ProjectValidationProjectCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjValProjCategoryTableRelationshipId	": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_validations.projects.categories");
  }
}
mixin(EntityCalls!("ProjectValidationProjectCategoryEntity"));

version(test_model_portals) { unittest {
    assert(ProjectValidationProjectCategoryEntity);
  
  auto entity = ProjectValidationProjectCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}