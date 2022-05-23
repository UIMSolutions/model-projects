module models.projects.entities.cfdas.ProjCFDANumber;

@safe:
import models.projects;

class DProjectCFDANumberEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCFDANumberEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "cfdaClusterName": StringAttribute, //
        "cfdaID": StringAttribute, //
        "description": StringAttribute, //
        "backingTable_ProjCFDANumberRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cfda.numbers");
  }
}
mixin(EntityCalls!("ProjectCFDANumberEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCFDANumberEntity);
  
  auto entity = ProjectCFDANumberEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}