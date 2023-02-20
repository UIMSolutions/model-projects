module models.projects.entities.grantcustomertype;

@safe:
import models.projects;

class DProjectGrantCustomerTypeEntity : DOOPEntity {
  mixin(EntityThis!("ProjectGrantCustomerTypeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "Description": StringAttribute, //
        "GrantorType": StringAttribute, //
        "BackingTable_ProjGrantorTypeRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_grantcustomertypes");
  }
}
mixin(EntityCalls!("ProjectGrantCustomerTypeEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectGrantCustomerTypeEntity);
  
  auto entity = ProjectGrantCustomerTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}