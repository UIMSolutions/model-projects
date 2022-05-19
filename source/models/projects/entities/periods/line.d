module models.projects.entities.pma.periods.ProjPeriodLine;

@safe:
import models.projects;

class DProjectPeriodLineEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPeriodLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ModelId": StringAttribute, //
        "PeriodFrom": StringAttribute, //
        "PeriodId": StringAttribute, //
        "PeriodName": StringAttribute, //
        "PeriodTo": StringAttribute, //
        "BackingTable_ProjPeriodLineRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_periodlines");
  }
}
mixin(EntityCalls!("ProjectPeriodLineEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectPeriodLineEntity);
  
  auto entity = ProjectPeriodLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}