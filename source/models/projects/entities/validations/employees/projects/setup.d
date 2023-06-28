module models.projects.entities.validations.employees.projects.setup;

import models.projects;

@safe:
class DProjectValidationEmployeeProjectSetupEntity : DEntity {
  mixin(EntityThis!("ProjectValidationEmployeeProjectSetupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectId": UUIDAttribute, //
        "resource": StringAttribute, //
        "resourceLegalEntityDataArea": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "groupId": UUIDAttribute, //
        "resourceLegalEntity": StringAttribute, //
        "backingTable_ProjValEmplProjSetupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_validations.employees.projects.setups");
  }
}
mixin(EntityCalls!("ProjectValidationEmployeeProjectSetupEntity"));

version(test_model_portals) { unittest {
    assert(ProjectValidationEmployeeProjectSetupEntity);
  
  auto entity = ProjectValidationEmployeeProjectSetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}