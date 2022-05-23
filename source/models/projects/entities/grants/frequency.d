module models.projects.entities.grants.frequency;

@safe:
import models.projects;

class DProjectGrantFrequencyEntity : DOOPEntity {
  mixin(EntityThis!("ProjectGrantFrequencyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "frequency": StringAttribute, // 
        "frequencyComments": StringAttribute, // 
        "projGrant": StringAttribute, // 
        "projGrant_GrantId": StringAttribute, // 
        "backingTable_ProjGrantFrequencyRelationshipId": StringAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, // 
     ])
      .registerPath("projects_grants.frequencies");
  }
}
mixin(EntityCalls!("ProjectGrantFrequencyEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectGrantFrequencyEntity);
  
  auto entity = ProjectGrantFrequencyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}