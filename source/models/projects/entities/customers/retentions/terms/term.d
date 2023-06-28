module models.projects.entities.customers.retentions.terms.term;

import models.projects;

@safe:
class DProjectCustomerRetentionTermEntity : DEntity {
  mixin(EntityThis!("ProjectCustomerRetentionTermEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "billingRule": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "customerAccount": StringAttribute, //
        "description": StringAttribute, //
        "projectId": UUIDAttribute, //
        "retentionTerm": StringAttribute, //
        "effectiveDate": DateAttribute, //
        "backingTable_PSACustomerRetentionTermTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_customers.retentions.terms");
  }
}
mixin(EntityCalls!("ProjectCustomerRetentionTermEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCustomerRetentionTermEntity);
  
  auto entity = ProjectCustomerRetentionTermEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}