module models.projects.entities.allocationkeys.allocationkey;

@safe:
import models.projects;

class DProjectAllocationKeyEntity : DOOPEntity {
  mixin(EntityThis!("ProjectAllocationKeyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AllocationKey": StringAttribute, //
        "Name": StringAttribute, //
        "BackingTable_ProjAllocateKeyRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_allocationkeys");
  }
}
mixin(EntityCalls!("ProjectAllocationKeyEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectAllocationKeyEntity);
  
  auto entity = ProjectAllocationKeyEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}