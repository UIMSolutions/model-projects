module models.projects.entities.cfdas.number;

import models.projects;

@safe:
class DProjectCFDANumberEntity : DEntity {
  mixin(EntityThis!("ProjectCFDANumberEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "cfdaClusterName": StringAttribute, //
        "cfdaId": UUIDAttribute, //
        "description": StringAttribute, //
        "backingTable_ProjCFDANumberRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cfda.numbers");
  }
}
mixin(EntityCalls!("ProjectCFDANumberEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCFDANumberEntity);
  
  auto entity = ProjectCFDANumberEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}