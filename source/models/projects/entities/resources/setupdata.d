module models.projects.entities.resources.setupdata;

import models.projects;

@safe:
class DProjectResourceSetupDataEntity : DEntity {
  mixin(EntityThis!("ProjectResourceSetupDataEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "defaultTimeCategory": StringAttribute, //
        "legalEntity": StringAttribute, //
        "period": StringAttribute, //
        "resource": StringAttribute, //
        "maxHoursCalendar": StringAttribute, //
        "defaultTimeCategoryId": UUIDAttribute, //
        "resourceLegalEntityDataArea": StringAttribute, //
        "periodId": UUIDAttribute, //
        "resourceId": UUIDAttribute, //
        "resourceName": StringAttribute, //
        "useResourceRate": StringAttribute, //
        "validateProjectResource": StringAttribute, //
        "validateResourceCategory": StringAttribute, //
        "maxHoursCalendarId": UUIDAttribute, //
        "maxWorkingHours": StringAttribute, //
        "requireStartStopTime": StringAttribute, //
        "backingTable_ResourceSetupRelationshipId": UUIDAttribute, //     
      ])
      .registerPath("projects_resources.setupdata");
  }
}
mixin(EntityCalls!("ProjectResourceSetupDataEntity"));

version(test_model_portals) { unittest {
    assert(ProjectResourceSetupDataEntity);
  
  auto entity = ProjectResourceSetupDataEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}