module models.projects.entities.pma.cfdas.ProjCFDANumber;

@safe:
import models.projects;

class DProjectCFDANumberEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCFDANumberEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CFDAClusterName": StringAttribute, //
        "CFDAID": StringAttribute, //
        "Description": StringAttribute, //
        "BackingTable_ProjCFDANumberRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cfdanumbers");
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