module models.projects.entities.resource;

@safe:
import models.projects;

class DProjectResourceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectResourceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ProjectId": StringAttribute, //
        "PersonnelNumber": StringAttribute, //
        "BackingTable_ProjResourceRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_resources");
  }
}
mixin(EntityCalls!("ProjectResourceEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}