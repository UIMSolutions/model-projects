module models.projects.entities.fundings.rule;

@safe:
import models.projects;

class DProjectFundingRuleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectFundingRuleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "categoryGroupId": UUIDAttribute, //
        "categoryId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "endDate": StringAttribute, //
        "itemId": UUIDAttribute, //
        "priority": StringAttribute, //
        "priorityKey": StringAttribute, //
        "projectId": UUIDAttribute, //
        "resource": StringAttribute, //
        "startDate": StringAttribute, //
        "transactionType": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "allocateRounding": StringAttribute, //
        "allocationPercentage": StringAttribute, //
        "fundingSource": StringAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "fundingSource_ContractId": UUIDAttribute, //
        "fundingRule": StringAttribute, //
        "relationship_ProjectContractRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjFundingRuleAllocationRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_fundings.rules");
  }
}
mixin(EntityCalls!("ProjectFundingRuleEntity"));

version(test_model_portals) { unittest {
    assert(ProjectFundingRuleEntity);
  
  auto entity = ProjectFundingRuleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}