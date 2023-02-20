module models.projects.entities.periods.period;

@safe:
import models.projects;

class DProjectPeriodEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "periodId": UUIDAttribute, //
        "description": StringAttribute, //
        "weekDayPeriodStart": StringAttribute, //
        "frequency": StringAttribute, //
        "periodFrequency": StringAttribute, //
        "timesheetFrequency": StringAttribute, //
        "isWeekAutoSplit": StringAttribute, //
        "backingTable_ProjPeriodTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_periods");
  }
}
mixin(EntityCalls!("ProjectPeriodEntity"));

version(test_model_portals) { unittest {
    assert(ProjectPeriodEntity);
  
  auto entity = ProjectPeriodEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}