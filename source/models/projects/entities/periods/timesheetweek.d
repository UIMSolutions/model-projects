module models.projects.entities.periods.timesheetweek;

@safe:
import models.projects;

class DProjectPeriodTimesheetWeekEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodTimesheetWeekEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "periodFrom": StringAttribute, //
        "periodId": StringAttribute, //
        "periodName": StringAttribute, //
        "periodTo": StringAttribute, //
        "backingTable_ProjPeriodTimesheetWeekRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_period.timesheetweeks");
  }
}
mixin(EntityCalls!("ProjectPeriodTimesheetWeekEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectPeriodTimesheetWeekEntity);
  
  auto entity = ProjectPeriodTimesheetWeekEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}