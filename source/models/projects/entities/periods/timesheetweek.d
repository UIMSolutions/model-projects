module models.projects.entities.periods.timesheetweek;

import models.projects;

@safe:
class DProjectPeriodTimesheetWeekEntity : DEntity {
  mixin(EntityThis!("ProjectPeriodTimesheetWeekEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "periodFrom": StringAttribute, //
        "periodId": UUIDAttribute, //
        "periodName": StringAttribute, //
        "periodTo": StringAttribute, //
        "backingTable_ProjPeriodTimesheetWeekRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_period.timesheetweeks");
  }
}
mixin(EntityCalls!("ProjectPeriodTimesheetWeekEntity"));

version(test_model_portals) { unittest {
    assert(ProjectPeriodTimesheetWeekEntity);
  
  auto entity = ProjectPeriodTimesheetWeekEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}