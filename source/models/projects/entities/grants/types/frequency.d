module models.projects.entities.grants.types.frequency;

@safe:
import models.projects;

class DProjectGrantTypeFrequencyEntity : DOOPEntity {
  mixin(EntityThis!("ProjectGrantTypeFrequencyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "comments": StringAttribute, //
        "frequency": StringAttribute, //
        "projGrantType": StringAttribute, //
        "projGrantType_GrantType": StringAttribute, //
        "backingTable_ProjGrantTypeFrequencyRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_grants.types.frequency");
  }
}
mixin(EntityCalls!("ProjectGrantTypeFrequencyEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectGrantTypeFrequencyEntity);
  
  auto entity = ProjectGrantTypeFrequencyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}