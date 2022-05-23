module models.projects.entities.PSAIndirectCostComponen;

@safe:
import models.projects;

class DPSAIndirectCostComponentEntity : DOOPEntity {
  mixin(EntityThis!("PSAIndirectCostComponentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "category": StringAttribute, //
        "componentId": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_PSAIndirectComponentRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAIndirectCostComponentEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAIndirectCostComponentEntity);
  
  auto entity = PSAIndirectCostComponentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}