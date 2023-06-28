module models.projects.entities.vendors.retentiontermschedule;

import models.projects;

@safe:
class DProjectVendorRetentionTermScheduleEntity : DEntity {
  mixin(EntityThis!("ProjectVendorRetentionTermScheduleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "percentageToRetain": StringAttribute, //
        "percentageToRelease": StringAttribute, //
        "ruleID": StringAttribute, //
        "percentageOfUnitsDelivered": StringAttribute, //
        "relationship_ProjVendorRetentionTermEntityRelationshipId": UUIDAttribute, //
        "backingTable_PSAVendorRetentionTermsLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_vendors.retentiontermschedules");
  }
}
mixin(EntityCalls!("ProjectVendorRetentionTermScheduleEntity"));

version(test_model_portals) { unittest {
    assert(ProjectVendorRetentionTermScheduleEntity);
  
  auto entity = ProjectVendorRetentionTermScheduleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}