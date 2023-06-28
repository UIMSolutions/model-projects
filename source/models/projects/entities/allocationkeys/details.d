module models.projects.entities.allocationkeys.detail;

import models.projects;

@safe:
class DProjectAllocationKeyEntity : DEntity {
  mixin(EntityThis!("ProjectAllocationKeyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "allocationKey": StringAttribute, //
        "category": StringAttribute, //
        "lineProperty": StringAttribute, //
        "lineNumber": StringAttribute, //
        "allocationPercentage": StringAttribute, //
        "projectId": UUIDAttribute, //
        "resource": StringAttribute, //
        "resourcePersonnelNumber": StringAttribute, //
        "backingTable_ProjAllocateTransRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_allocationkeys.details");
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