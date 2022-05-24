module models.projects.entities.travels.expenses.policies.policy;

@safe:
import models.projects;

class DProjectTravelExpensePolicyEntity : DOOPEntity {
  mixin(EntityThis!("ProjectTravelExpensePolicyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "allowableAmount": StringAttribute, //
        "city": StringAttribute, //
        "expenseCategory": StringAttribute, //
        "customerAccount": StringAttribute, //
        "endDate": StringAttribute, //
        "currency": StringAttribute, //
        "perUnit": StringAttribute, //
        "maximumAmount": StringAttribute, //
        "maximumPercent": StringAttribute, //
        "projectExpensePolicyWorkerGroup": StringAttribute, //
        "policyType": StringAttribute, //
        "projectID": StringAttribute, //
        "projectContractID": StringAttribute, //
        "receiptMinimum": StringAttribute, //
        "receiptRequired": StringAttribute, //
        "startDate": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "backingTable_ProjExpPoliciesRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_travels.expenses.policies");
  }
}
mixin(EntityCalls!("ProjectTravelExpensePolicyEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}