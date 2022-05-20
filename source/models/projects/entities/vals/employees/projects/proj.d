module models.projects.entities.vals.empls.projs.proj;

@safe:
import models.projects;

class DProjectValEmployeeProjectEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValEmployeeProjectEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "GroupId": StringAttribute, //
        "Name": StringAttribute, //
        "backingTable_ProjValEmplProjTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_valemplcategorysetups");
  }
}
mixin(EntityCalls!("ProjectValEmployeeProjectEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValEmployeeProjectEntity);
  
  auto entity = ProjectValEmployeeProjectEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}