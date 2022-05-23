module models.projects.entities.periods.employee;

@safe:
import models.projects;

class DProjectPeriodEmplEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodEmplEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "normBillable": StringAttribute, //
        "normEfficiency": StringAttribute, //
        "periodFrom": StringAttribute, //
        "periodId": StringAttribute, //
        "isPosted": StringAttribute, //
        "postedDate": StringAttribute, //
        "resource": StringAttribute, //
        "resourceId": StringAttribute, //
        "backingTable_ProjPeriodEmplRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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