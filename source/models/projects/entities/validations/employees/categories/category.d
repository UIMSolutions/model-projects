module models.projects.entities.validations.employees.categories.category;

import models.projects;

@safe:
class DProjectValidationEmployeeCategoryEntity : DEntity {
  mixin(EntityThis!("ProjectValidationEmployeeCategoryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjValEmplCategoryTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_validations.employees.categories");
  }
}
mixin(EntityCalls!("ProjectValidationEmployeeCategoryEntity"));

version(test_model_portals) { unittest {
    assert(ProjectValidationEmployeeCategoryEntity);
  
  auto entity = ProjectValidationEmployeeCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}