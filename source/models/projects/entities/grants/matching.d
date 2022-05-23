module models.projects.entities.grants.matching;

@safe:
import models.projects;

class DProjectGrantMatchingEntity : DOOPEntity {
  mixin(EntityThis!("ProjectGrantMatchingEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "comments": StringAttribute, //
        "description": StringAttribute, //
        "matchingPercentage": StringAttribute, //
        "matchingType": StringAttribute, //
        "backingTable_ProjGrantMatchingRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_costs.sales.prices");
  }
}
mixin(EntityCalls!("ProjectGrantMatchingEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectGrantMatchingEntity);
  
  auto entity = ProjectGrantMatchingEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}