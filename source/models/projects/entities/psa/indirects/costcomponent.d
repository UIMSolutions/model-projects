module models.projects.entities.psa.indirects.costcomponent;

import models.projects;

@safe:
class DPSAIndirectCostComponentEntity : DEntity {
  mixin(EntityThis!("PSAIndirectCostComponentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "category": StringAttribute, //
        "componentId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_PSAIndirectComponentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_psa.indirects.costcomponents");
  }
}
mixin(EntityCalls!("PSAIndirectCostComponentEntity"));

version(test_model_portals) { unittest {
    assert(PSAIndirectCostComponentEntity);
  
  auto entity = PSAIndirectCostComponentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}