module models.projects.entities.customers.retentions.terms.term;

@safe:
import models.projects;

class DProjectCustomerRetentionTermEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCustomerRetentionTermEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "billingRule": StringAttribute, //
        "projectContractID": StringAttribute, //
        "customerAccount": StringAttribute, //
        "description": StringAttribute, //
        "projectID": StringAttribute, //
        "retentionTerm": StringAttribute, //
        "effectiveDate": StringAttribute, //
        "backingTable_PSACustomerRetentionTermTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_customers.retentions.terms");
  }
}
mixin(EntityCalls!("ProjectCustomerRetentionTermEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCustomerRetentionTermEntity);
  
  auto entity = ProjectCustomerRetentionTermEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}