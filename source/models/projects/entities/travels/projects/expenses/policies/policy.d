module models.projects.entities.travels.expenses.policies.policy;

import models.projects;

@safe:
class DProjectTravelExpensePolicyEntity : DEntity {
  mixin(EntityThis!("ProjectTravelExpensePolicyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "allowableAmount": StringAttribute, //
        "city": StringAttribute, //
        "expenseCategory": StringAttribute, //
        "customerAccount": StringAttribute, //
        "endDate": DateAttribute, //
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
        "startDate": DateAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "backingTable_ProjExpPoliciesRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_travels.expenses.policies");
  }
}
mixin(EntityCalls!("ProjectTravelExpensePolicyEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}