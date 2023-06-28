module models.projects.entities.beginningbalances.costsale;

import models.projects;

@safe:
class DProjectBeginningBalanceCostSaleEntity : DEntity {
  mixin(EntityThis!("ProjectBeginningBalanceCostSaleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "costPrice": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "itemId": UUIDAttribute, //
        "lineNumbei": StringAttribute, //
        "linePropertyId": UUIDAttribute, //
        "canAccrueRevenue": StringAttribute, //
        "categoryId": UUIDAttribute, //
        "projFundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "costStatus": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "projectDate": DateAttribute, //
        "transactionStatus": StringAttribute, //
        "transactionType": StringAttribute, //
        "quantity": StringAttribute, //
        "salesPrice": StringAttribute, //
        "voucherDate": DateAttribute, //
        "description": StringAttribute, //
        "voucher": StringAttribute, //
        "resourceRecId": UUIDAttribute, //
        "resourceCategoryRecId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "journalId": UUIDAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "journalDescription": StringAttribute, //
        "journalDetailSummary": StringAttribute, //
        "journalName": StringAttribute, //
        "journalType": StringAttribute, //
        "voucherChange": StringAttribute, //
        "voucherDraw": StringAttribute, //
        "voucherNumberSequenceTable": StringAttribute, //
        "contractId": UUIDAttribute, //
        "resource": StringAttribute, //
        "salesAmount": StringAttribute, //
        "costAmount": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectRelationshipId": UUIDAttribute, //
        "relationship_ProjJournalTableEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjBegBalJournalTrans_CostSalesRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_beginningbalancecostsales");
  }
}
mixin(EntityCalls!("ProjectBeginningBalanceCostSaleEntity"));

version(test_model_portals) { unittest {
    assert(ProjectBeginningBalanceCostSaleEntity);
  
  auto entity = ProjectBeginningBalanceCostSaleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}