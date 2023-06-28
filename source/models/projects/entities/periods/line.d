module models.projects.entities.periods.line;

import models.projects;

@safe:
class DProjectPeriodLineEntity : DEntity {
  mixin(EntityThis!("ProjectPeriodLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "modelId": UUIDAttribute, //
        "periodFrom": StringAttribute, //
        "periodId": UUIDAttribute, //
        "periodName": StringAttribute, //
        "periodTo": StringAttribute, //
        "backingTable_ProjPeriodLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_period.lines");
  }
}
mixin(EntityCalls!("ProjectPeriodLineEntity"));

version(test_model_portals) { unittest {
    assert(ProjectPeriodLineEntity);
  
  auto entity = ProjectPeriodLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}