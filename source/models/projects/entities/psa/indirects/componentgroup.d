module models.projects.entities.psa.indirects.indirectComponentGroup;

@safe:
import models.projects;

class DPSAIndirectComponentGroupEntity : DOOPEntity {
  mixin(EntityThis!("PSAIndirectComponentGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "IndirectCostComponentGroup": StringAttribute, //
        "IndirectComponentGroupName": StringAttribute, //
        "BackingTable_PSAIndirectComponentGroupRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAIndirectComponentGroupEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAIndirectComponentGroupEntity);
  
  auto entity = PSAIndirectComponentGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}