module models.projects.entities.customers.retentions.terms.schedule;

import models.projects;

@safe:
class DProjectCustomerRetentionTermScheduleEntity : DEntity {
  mixin(EntityThis!("ProjectCustomerRetentionTermScheduleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "percentComplete": StringAttribute, //
        "release": StringAttribute, //
        "percentToRetain": StringAttribute, //
        "retentionTerm": StringAttribute, //
        "relationship_ProjCustomerRetentionTermEntityRelationshipId": UUIDAttribute, //
        "backingTable_PSACustomerRetentionTermLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_customers.retentions.terms.schedules");
  }
}
mixin(EntityCalls!("ProjectCustomerRetentionTermScheduleEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCustomerRetentionTermScheduleEntity);
  
  auto entity = ProjectCustomerRetentionTermScheduleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}