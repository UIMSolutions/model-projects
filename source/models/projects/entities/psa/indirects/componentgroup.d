module models.projects.entities.psa.indirects.componentgroup;

@safe:
import models.projects;

class DPSAIndirectComponentGroupEntity : DOOPEntity {
  mixin(EntityThis!("PSAIndirectComponentGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "indirectCostComponentGroup": StringAttribute, //
        "indirectComponentGroupName": StringAttribute, //
        "backingTable_PSAIndirectComponentGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_psa.indirects.componentgroups");
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