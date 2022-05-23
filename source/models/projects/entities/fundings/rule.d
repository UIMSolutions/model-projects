module models.projects.entities.fundings.rule;

@safe:
import models.projects;

class DProjectFundingRuleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectFundingRuleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "categoryGroupId": StringAttribute, //
        "categoryId": StringAttribute, //
        "projectContractId": StringAttribute, //
        "endDate": StringAttribute, //
        "itemId": StringAttribute, //
        "priority": StringAttribute, //
        "priorityKey": StringAttribute, //
        "projectId": StringAttribute, //
        "resource": StringAttribute, //
        "startDate": StringAttribute, //
        "transactionType": StringAttribute, //
        "resourceId": StringAttribute, //
        "allocateRounding": StringAttribute, //
        "allocationPercentage": StringAttribute, //
        "fundingSource": StringAttribute, //
        "fundingSourceId": StringAttribute, //
        "fundingSource_ContractId": StringAttribute, //
        "fundingRule": StringAttribute, //
        "relationship_ProjectContractRelationshipId": StringAttribute, //
        "relationship_ProjectEntityRelationshipId": StringAttribute, //
        "backingTable_ProjFundingRuleAllocationRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_fundings.rules");
  }
}
mixin(EntityCalls!("ProjectFundingRuleEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectFundingRuleEntity);
  
  auto entity = ProjectFundingRuleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}