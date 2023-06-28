module models.projects.entities.stage;

import models.projects;

@safe:
class DProjectStageEntity : DEntity {
  mixin(EntityThis!("ProjectStageEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "Language": StringAttribute, //
        "Status": StringAttribute, //
        "Stage": StringAttribute, //
        "BackingTable_ProjStageTableRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_stages");
  }
}
mixin(EntityCalls!("ProjectStageEntity"));

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