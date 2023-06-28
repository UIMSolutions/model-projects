module models.projects.entities.validations.employees.categories.setup;

import models.projects;

@safe:
class DProjectValidationEmployeeCategorySetupEntity : DEntity {
  mixin(EntityThis!("ProjectValidationEmployeeCategorySetupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "groupId": UUIDAttribute, //
        "resource": StringAttribute, //
        "resourceLegalEntityDataArea": StringAttribute, //
        "resourceLegalEntity": StringAttribute, //
        "resourceLegalEntityPartyNumber": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "backingTable_ProjValEmplCategorySetUpRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_validations.employees.categories.setups");
  }
}
mixin(EntityCalls!("ProjectValidationEmployeeCategorySetupEntity"));

version(test_model_portals) { unittest {
    assert(ProjectValidationEmployeeCategorySetupEntity);
  
  auto entity = ProjectValidationEmployeeCategorySetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}