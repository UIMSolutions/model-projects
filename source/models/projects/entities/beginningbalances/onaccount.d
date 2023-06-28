module models.projects.entities.beginningbalances.onaccount;

import models.projects;

@safe:
class DProjectBeginningBalanceOnAccountEntity : DEntity {
  mixin(EntityThis!("ProjectBeginningBalanceOnAccountEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "journalId": UUIDAttribute, //
        "journalName": StringAttribute, //
        "journalDescription": StringAttribute, //
        "journalType": StringAttribute, //
        "journalDetailSummary": StringAttribute, //
        "lineNumber": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectDate": DateAttribute, //
        "description": StringAttribute, //
        "salesPrice": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "revenue": StringAttribute, //
        "contractId": UUIDAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "voucher": StringAttribute, //
        "voucherDate": DateAttribute, //
        "voucherNumberSequenceTable": StringAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "voucherChange": StringAttribute, //
        "voucherDraw": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "projFundingSource": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectRelationshipId": UUIDAttribute, //
        "relationship_ProjJournalTableEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjBegBalJournalTrans_OnAccRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_beginningbalanceonaccounts");
  }
}
mixin(EntityCalls!("ProjectBeginningBalanceOnAccountEntity"));

version(test_model_portals) { unittest {
    assert(ProjectBeginningBalanceOnAccountEntity);
  
  auto entity = ProjectBeginningBalanceOnAccountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}