module models.projects.entities.periods.ProjPeriodTimesheetWeek;

@safe:
import models.projects;

class DProjectPeriodTimesheetWeekEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodTimesheetWeekEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "PeriodFrom": StringAttribute, //
        "PeriodId": StringAttribute, //
        "PeriodName": StringAttribute, //
        "PeriodTo": StringAttribute, //
        "backingTable_ProjPeriodTimesheetWeekRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_periodlines");
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