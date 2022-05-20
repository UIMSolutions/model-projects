module models.projects.entities.vals.empls.projs.setup;

@safe:
import models.projects;

class DProjectValEmplProjectSetupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValEmplProjectSetupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "GroupId": StringAttribute, //
        "Name": StringAttribute, //
        "BackingTable_ProjValEmplProjTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_valemplcategorysetups");
  }
}
mixin(EntityCalls!("ProjectValEmplProjectSetupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValEmplProjectSetupEntity);
  
  auto entity = ProjectValEmplProjectSetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}