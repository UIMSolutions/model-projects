module models.projects.entities.grants.types.type;

import models.projects;

@safe:
class DProjectGrantTypeEntity : DEntity {
  mixin(EntityThis!("ProjectGrantTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "federalManDate": DateAttribute, //
        "grantManager": StringAttribute, //
        "grantType": StringAttribute, //
        "organizationNumber": StringAttribute, //
        "stateManDate": DateAttribute, //
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

version(test_model_portals) { unittest {
    assert(ProjectGrantTypeEntity);
  
  auto entity = ProjectGrantTypeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}