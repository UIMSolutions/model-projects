module models.projects.entities.allocationkeys.detail;

@safe:
import models.projects;

class DProjectAllocationKeyEntity : DOOPEntity {
  mixin(EntityThis!("ProjectAllocationKeyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AllocationKey": StringAttribute, //
        "Category": StringAttribute, //
        "LineProperty": StringAttribute, //
        "LineNumber": StringAttribute, //
        "AllocationPercentage": StringAttribute, //
        "ProjectID": StringAttribute, //
        "Resource": StringAttribute, //
        "ResourcePersonnelNumber": StringAttribute, //
        "BackingTable_ProjAllocateTransRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_allocationkeydetails");
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