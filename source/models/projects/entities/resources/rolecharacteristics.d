module models.projects.entities.resources.rolecharacteristics;

import models.projects;

@safe:
class DProject_ResourceRoleCharacteristicsEntity : DEntity {
  mixin(EntityThis!("Project_ResourceRoleCharacteristicsEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "characteristicId": UUIDAttribute, //
        "characteristicRequirement": StringAttribute, //
        "characteristicSet": StringAttribute, //
        "roleId": UUIDAttribute, //
        "characteristic": StringAttribute, //
        "reqEntityType": StringAttribute, //
        "backingTable_ResCharacteristicRequirementLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_resources.rolecharacteristics");
  }
}
mixin(EntityCalls!("Project_ResourceRoleCharacteristicsEntity"));

version(test_model_portals) { unittest {
    assert(Project_ResourceRoleCharacteristicsEntity);
  
  auto entity = Project_ResourceRoleCharacteristicsEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}