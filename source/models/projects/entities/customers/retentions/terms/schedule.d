module models.projects.entities.customers.retentions.terms.schedule;

@safe:
import models.projects;

class DProjectCustomerRetentionTermScheduleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCustomerRetentionTermScheduleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "percentComplete": StringAttribute, //
        "release": StringAttribute, //
        "percentToRetain": StringAttribute, //
        "retentionTerm": StringAttribute, //
        "relationship_ProjCustomerRetentionTermEntityRelationshipId": StringAttribute, //
        "backingTable_PSACustomerRetentionTermLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_customers.retentions.terms.schedules");
  }
}
mixin(EntityCalls!("ProjectCustomerRetentionTermScheduleEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCustomerRetentionTermScheduleEntity);
  
  auto entity = ProjectCustomerRetentionTermScheduleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}