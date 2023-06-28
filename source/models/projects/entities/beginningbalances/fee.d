module models.projects.entities.beginningbalances.fee;

import models.projects;

@safe:
class DProjectBeginningBalanceFeeEntity : DEntity {
  mixin(EntityThis!("ProjectBeginningBalanceFeeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "canAccrueRevenue": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "lineNumber": StringAttribute, //
        "linePropertyId": UUIDAttribute, //
        "categoryId": UUIDAttribute, //
        "projFundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "salesCurrency": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "projectDate": DateAttribute, //
        "transactionStatus": StringAttribute, //
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
        "relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectRelationshipId": UUIDAttribute, //
        "relationship_ProjJournalTableEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjBegBalJournalTrans_FeeRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_beginningbalancefees");
  }
}
mixin(EntityCalls!("ProjectBeginningBalanceFeeEntity"));

version(test_model_portals) { unittest {
    assert(ProjectBeginningBalanceFeeEntity);
  
  auto entity = ProjectBeginningBalanceFeeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}