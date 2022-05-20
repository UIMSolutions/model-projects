module models.projects.entities.group;

@safe:
import models.projects;

class DProjectGroupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "accruedLossCategoryId": StringAttribute, //
        "canVerifyCostAgainstRemainingForecast": StringAttribute, //
        "revenueRecognitionAccountingRule": StringAttribute, //
        "costTemplate": StringAttribute, //
        "postCostsExpense": StringAttribute, //
        "accrueRevenueExpense": StringAttribute, //
        "postCostsHour": StringAttribute, //
        "accrueRevenueHour": StringAttribute, //
        "areForeseeableLosses": StringAttribute, //
        "onAccountInvoicing": StringAttribute, //
        "postCostsItem": StringAttribute, //
        "accrueRevenueItem": StringAttribute, //
        "ledgerPostingSearchPriority": StringAttribute, //
        "matchingPrinciple": StringAttribute, //
        "name": StringAttribute, //
        "periodCode": StringAttribute, //
        "productionCategoryId": StringAttribute, //
        "profitCategoryId": StringAttribute, //
        "projectGroup": StringAttribute, //
        "linePropertySearchPriority": StringAttribute, //
        "projectType": StringAttribute, //
        "accrueRevenueFee": StringAttribute, //
        "calculationMethod": StringAttribute, //
        "salesValueCategoryId": StringAttribute, //
        "backingTable_ProjGroupRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, ///ProjectGroupEntity
     ])
      .registerPath("projects_groups");
  }
}
mixin(EntityCalls!("ProjectGroupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectGroupEntity);
  
  auto entity = ProjectGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}