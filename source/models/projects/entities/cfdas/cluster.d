module models.projects.entities.pma.cfdas.ProjCFDACluster;

@safe:
import models.projects;

class DProjectCFDAClusterEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCFDAClusterEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ClusterName": StringAttribute, //
        "BackingTable_ProjCFDAClusterRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cfdaclusters");
  }
}
mixin(EntityCalls!("ProjectCFDAClusterEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCFDAClusterEntity);
  
  auto entity = ProjectCFDAClusterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}