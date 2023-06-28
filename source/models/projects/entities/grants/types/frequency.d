module models.projects.entities.grants.types.frequency;

import models.projects;

@safe:
class DProjectGrantTypeFrequencyEntity : DEntity {
  mixin(EntityThis!("ProjectGrantTypeFrequencyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "comments": StringAttribute, //
        "frequency": StringAttribute, //
        "projGrantType": StringAttribute, //
        "projGrantType_GrantType": StringAttribute, //
        "backingTable_ProjGrantTypeFrequencyRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_grants.types.frequency");
  }
}
mixin(EntityCalls!("ProjectGrantTypeFrequencyEntity"));

version(test_model_portals) { unittest {
    assert(ProjectGrantTypeFrequencyEntity);
  
  auto entity = ProjectGrantTypeFrequencyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}