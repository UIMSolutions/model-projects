module models.projects.entities.resources.resource;

import models.projects;

@safe:
class DProjectResourceEntity : DEntity {
  mixin(EntityThis!("ProjectResourceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ProjectId": UUIDAttribute, //
        "PersonnelNumber": StringAttribute, //
        "BackingTable_ProjResourceRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_resources");
  }
}
mixin(EntityCalls!("ProjectResourceEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}