module models.projects.entities.pma.periods.empl;

@safe:
import models.projects;

class DProjectPeriodEmplEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodEmplEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "NormBillable": StringAttribute, //
        "NormEfficiency": StringAttribute, //
        "PeriodFrom": StringAttribute, //
        "PeriodId": StringAttribute, //
        "IsPosted": StringAttribute, //
        "PostedDate": StringAttribute, //
        "Resource": StringAttribute, //
        "ResourceId": StringAttribute, //
        "BackingTable_ProjPeriodEmplRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_periodemployees");
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