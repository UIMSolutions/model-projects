module models.projects.entities.cds.estimates.hour;

import models.projects;

@safe:
class DProjectCDSEstimateHoursEntity : DEntity {
  mixin(EntityThis!("ProjectCDSEstimateHoursEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "taskId": UUIDAttribute, //
        "description": StringAttribute, //
        "projectId": UUIDAttribute, //
        "salesCurrency": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "plannedCostAmount": StringAttribute, //
        "plannedSalesAmount": StringAttribute, //
        "duration": StringAttribute, //
        "forecastModel": StringAttribute, //
        "startDate": DateAttribute, //
        "backingTable_ProjCDSEstimateHoursImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.estimates.hours");
  }
}
mixin(EntityCalls!("ProjectCDSEstimateHoursEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSEstimateHoursEntity);
  
  auto entity = ProjectCDSEstimateHoursEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
