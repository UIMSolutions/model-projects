module models.projects.entities.allocationkeys.allocationkey;

import models.projects;

@safe:
class DProjectAllocationKeyEntity : DEntity {
  mixin(EntityThis!("ProjectAllocationKeyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "allocationKey": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjAllocateKeyRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_allocationkeys");
  }
}
mixin(EntityCalls!("ProjectAllocationKeyEntity"));

version(test_model_portals) { unittest {
    assert(ProjectAllocationKeyEntity);
  
  auto entity = ProjectAllocationKeyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}