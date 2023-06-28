module models.projects.entities.intercompanyparameter;

import models.projects;

@safe:
class DProjectIntercompanyParameterEntity : DEntity {
  mixin(EntityThis!("ProjectIntercompanyParameterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "borrowingLegalEntity": StringAttribute, //
        "defaultExpenseCategory": StringAttribute, //
        "defaultTimesheetCategory": StringAttribute, //
        "accrueRevenue": StringAttribute, //
        "backingTable_ProjIntercompanyParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_intercompanyparameters");
  }
}
mixin(EntityCalls!("ProjectIntercompanyParameterEntity"));

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