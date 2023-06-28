module models.projects.entities.validations.employees.projects.project;

import models.projects;

@safe:
class DProjectValidationEmployeeProjectEntity : DEntity {
  mixin(EntityThis!("ProjectValidationEmployeeProjectEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjValEmplProjTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_validations.projects");
  }
}
mixin(EntityCalls!("ProjectValidationEmployeeProjectEntity"));

version(test_model_portals) { unittest {
    assert(ProjectValidationEmployeeProjectEntity);
  
  auto entity = ProjectValidationEmployeeProjectEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}