module models.projects.entities.cds.estimates.hour;

@safe:
import models.projects;

class DProjectCDSEstimateHoursEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSEstimateHoursEntity"));

  override void initialize() {
    super.initialize;

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
        "startDate": StringAttribute, //
        "backingTable_ProjCDSEstimateHoursImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.estimates.hours");
  }
}
mixin(EntityCalls!("ProjectCDSEstimateHoursEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSEstimateHoursEntity);
  
  auto entity = ProjectCDSEstimateHoursEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
