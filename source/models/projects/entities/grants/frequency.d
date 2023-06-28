module models.projects.entities.grants.frequency;

import models.projects;

@safe:
class DProjectGrantFrequencyEntity : DEntity {
  mixin(EntityThis!("ProjectGrantFrequencyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "frequency": StringAttribute, // 
        "frequencyComments": StringAttribute, // 
        "projGrant": StringAttribute, // 
        "projGrant_GrantId": UUIDAttribute, // 
        "backingTable_ProjGrantFrequencyRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
     ])
      .registerPath("projects_grants.frequencies");
  }
}
mixin(EntityCalls!("ProjectGrantFrequencyEntity"));

version(test_model_portals) { unittest {
    assert(ProjectGrantFrequencyEntity);
  
  auto entity = ProjectGrantFrequencyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}