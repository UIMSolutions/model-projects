module models.projects.entities.resources.setupdata;

@safe:
import models.projects;

class DProjectResourceSetupDataEntity : DOOPEntity {
  mixin(EntityThis!("ProjectResourceSetupDataEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "defaultTimeCategory": StringAttribute, //
        "legalEntity": StringAttribute, //
        "period": StringAttribute, //
        "resource": StringAttribute, //
        "maxHoursCalendar": StringAttribute, //
        "defaultTimeCategoryId": StringAttribute, //
        "resourceLegalEntityDataArea": StringAttribute, //
        "periodId": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceName": StringAttribute, //
        "useResourceRate": StringAttribute, //
        "validateProjectResource": StringAttribute, //
        "validateResourceCategory": StringAttribute, //
        "maxHoursCalendarId": StringAttribute, //
        "maxWorkingHours": StringAttribute, //
        "requireStartStopTime": StringAttribute, //
        "backingTable_ResourceSetupRelationshipId": StringAttribute, //     
      ])
      .registerPath("projects_resources.setupdata");
  }
}
mixin(EntityCalls!("ProjectResourceSetupDataEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectResourceSetupDataEntity);
  
  auto entity = ProjectResourceSetupDataEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}