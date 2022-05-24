module models.projects.entities.vendors.retentiontermschedule;

@safe:
import models.projects;

class DProjectVendorRetentionTermScheduleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectVendorRetentionTermScheduleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "percentageToRetain": StringAttribute, //
        "percentageToRelease": StringAttribute, //
        "ruleID": StringAttribute, //
        "percentageOfUnitsDelivered": StringAttribute, //
        "relationship_ProjVendorRetentionTermEntityRelationshipId": StringAttribute, //
        "backingTable_PSAVendorRetentionTermsLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("projects_vendors.retentiontermschedules");
  }
}
mixin(EntityCalls!("ProjectVendorRetentionTermScheduleEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectVendorRetentionTermScheduleEntity);
  
  auto entity = ProjectVendorRetentionTermScheduleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}