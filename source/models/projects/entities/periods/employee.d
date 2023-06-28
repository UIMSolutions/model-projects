module models.projects.entities.periods.employee;

import models.projects;

@safe:
class DProjectPeriodEmplEntity : DEntity {
  mixin(EntityThis!("ProjectPeriodEmplEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "normBillable": StringAttribute, //
        "normEfficiency": StringAttribute, //
        "periodFrom": StringAttribute, //
        "periodId": UUIDAttribute, //
        "isPosted": StringAttribute, //
        "postedDate": DateAttribute, //
        "resource": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "backingTable_ProjPeriodEmplRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_period.employees");
  }
}
mixin(EntityCalls!("ProjectPeriodEmplEntity"));

version(test_model_portals) { unittest {
    assert(ProjectPeriodEmplEntity);
  
  auto entity = ProjectPeriodEmplEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}