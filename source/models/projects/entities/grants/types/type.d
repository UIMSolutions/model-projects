module models.projects.entities.grants.types.type;

@safe:
import models.projects;

class DProjectGrantTypeEntity : DOOPEntity {
  mixin(EntityThis!("ProjectGrantTypeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "federalMandate": StringAttribute, //
        "grantManager": StringAttribute, //
        "grantType": StringAttribute, //
        "organizationNumber": StringAttribute, //
        "stateMandate": StringAttribute, //
        "subGrantor": StringAttribute, //
        "workerContact": StringAttribute, //
        "excludeFromSEFA": StringAttribute, //
        "managerPersonnelNumber": StringAttribute, //
        "contactPersonnelNumber": StringAttribute, //
        "backingTable_ProjGrantTypeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_grants.types.types");
  }
}
mixin(EntityCalls!("ProjectGrantTypeEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectGrantTypeEntity);
  
  auto entity = ProjectGrantTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}