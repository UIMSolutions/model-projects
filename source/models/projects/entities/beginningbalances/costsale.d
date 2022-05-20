module models.projects.entities.beginningbalances.costsale;

@safe:
import models.projects;

class DProjectBeginningBalanceCostSaleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectBeginningBalanceCostSaleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "costPrice": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "itemId": StringAttribute, //
        "lineNumbei": StringAttribute, //
        "linePropertyId": StringAttribute, //
        "canAccrueRevenue": StringAttribute, //
        "categoryId": StringAttribute, //
        "projFundingSource": StringAttribute, //
        "projectId": StringAttribute, //
        "costStatus": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "projectDate": StringAttribute, //
        "transactionStatus": StringAttribute, //
        "transactionType": StringAttribute, //
        "quantity": StringAttribute, //
        "salesPrice": StringAttribute, //
        "voucherDate": StringAttribute, //
        "description": StringAttribute, //
        "voucher": StringAttribute, //
        "resourceRecId": StringAttribute, //
        "resourceCategoryRecId": StringAttribute, //
        "fundingSourceId": StringAttribute, //
        "journalId": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "journalDescription": StringAttribute, //
        "journalDetailSummary": StringAttribute, //
        "journalName": StringAttribute, //
        "journalType": StringAttribute, //
        "voucherChange": StringAttribute, //
        "voucherDraw": StringAttribute, //
        "voucherNumberSequenceTable": StringAttribute, //
        "contractId": StringAttribute, //
        "resource": StringAttribute, //
        "salesAmount": StringAttribute, //
        "costAmount": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_ProjectRelationshipId": StringAttribute, //
        "relationship_ProjJournalTableEntityRelationshipId": StringAttribute, //
        "backingTable_ProjBegBalJournalTrans_CostSalesRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_beginningbalancecostsales");
  }
}
mixin(EntityCalls!("ProjectBeginningBalanceCostSaleEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectBeginningBalanceCostSaleEntity);
  
  auto entity = ProjectBeginningBalanceCostSaleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}