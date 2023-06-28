module models.projects.entities.cfdas.cluster;

import models.projects;

@safe:
class DProjectCFDAClusterEntity : DEntity {
  mixin(EntityThis!("ProjectCFDAClusterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "clusterName": StringAttribute, //
        "backingTable_ProjCFDAClusterRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cfda.clusters");
  }
}
mixin(EntityCalls!("ProjectCFDAClusterEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCFDAClusterEntity);
  
  auto entity = ProjectCFDAClusterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}