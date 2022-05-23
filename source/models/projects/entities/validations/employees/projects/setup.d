module models.projects.entities.validations.employees.projects.setup;

@safe:
import models.projects;

class DProjectValidationEmployeeProjectSetupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValidationEmployeeProjectSetupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projid": StringAttribute, //
        "resource": StringAttribute, //
        "resourceLegalEntityDataArea": StringAttribute, //
        "resourceId": StringAttribute, //
        "groupId": StringAttribute, //
        "resourceLegalEntity": StringAttribute, //
        "backingTable_ProjValEmplProjSetupRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_validations.employees.projects.setups");
  }
}
mixin(EntityCalls!("ProjectValidationEmployeeProjectSetupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValidationEmployeeProjectSetupEntity);
  
  auto entity = ProjectValidationEmployeeProjectSetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}