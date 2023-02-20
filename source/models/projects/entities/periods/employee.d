module models.projects.entities.periods.employee;

@safe:
import models.projects;

class DProjectPeriodEmplEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodEmplEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "normBillable": StringAttribute, //
        "normEfficiency": StringAttribute, //
        "periodFrom": StringAttribute, //
        "periodId": UUIDAttribute, //
        "isPosted": StringAttribute, //
        "postedDate": StringAttribute, //
        "resource": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "backingTable_ProjPeriodEmplRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_period.employees");
  }
}
mixin(EntityCalls!("ProjectPeriodEmplEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectPeriodEmplEntity);
  
  auto entity = ProjectPeriodEmplEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}