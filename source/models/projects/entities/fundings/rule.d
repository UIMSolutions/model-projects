module models.projects.entities.fundings.rule;

@safe:
import models.projects;

class DProjectFundingRuleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectFundingRuleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "CategoryGroupId": StringAttribute, //
        "CategoryId": StringAttribute, //
        "ProjectContractId": StringAttribute, //
        "EndDate": StringAttribute, //
        "ItemId": StringAttribute, //
        "Priority": StringAttribute, //
        "PriorityKey": StringAttribute, //
        "ProjectId": StringAttribute, //
        "Resource": StringAttribute, //
        "StartDate": StringAttribute, //
        "TransactionType": StringAttribute, //
        "ResourceId": StringAttribute, //
        "AllocateRounding": StringAttribute, //
        "AllocationPercentage": StringAttribute, //
        "FundingSource": StringAttribute, //
        "FundingSourceId": StringAttribute, //
        "FundingSource_ContractId": StringAttribute, //
        "FundingRule": StringAttribute, //
        "Relationship_ProjectContractRelationshipId": StringAttribute, //
        "Relationship_ProjectEntityRelationshipId": StringAttribute, //
        "BackingTable_ProjFundingRuleAllocationRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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