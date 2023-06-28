module models.projects.entities.vendors.retentionterm;

import models.projects;

@safe:
class DProjectVendorRetentionTermEntity : DEntity {
  mixin(EntityThis!("ProjectVendorRetentionTermEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "ruleId": UUIDAttribute, //
        "backingTable_PSAVendorRetentionTermsTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_vendors.retentionterms");
  }
}
mixin(EntityCalls!("ProjectVendorRetentionTermEntity"));

version(test_model_portals) { unittest {
    assert(ProjectVendorRetentionTermEntity);
  
  auto entity = ProjectVendorRetentionTermEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}