module models.projects.entities.resources.rolecharacteristics;

@safe:
import models.projects;

class DProject_ResourceRoleCharacteristicsEntity : DOOPEntity {
  mixin(EntityThis!("Project_ResourceRoleCharacteristicsEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "characteristicId": StringAttribute, //
        "characteristicRequirement": StringAttribute, //
        "characteristicSet": StringAttribute, //
        "roleId": StringAttribute, //
        "characteristic": StringAttribute, //
        "reqEntityType": StringAttribute, //
        "backingTable_ResCharacteristicRequirementLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_resources.rolecharacteristics");
  }
}
mixin(EntityCalls!("Project_ResourceRoleCharacteristicsEntity"));

version(test_model_portals) {
  unittest {
    assert(Project_ResourceRoleCharacteristicsEntity);
  
  auto entity = Project_ResourceRoleCharacteristicsEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}