module models.projects.entities.pma.beginningbalances.onacc;

@safe:
import models.projects;

class DProjectBeginningBalanceOnAccEntity : DOOPEntity {
  mixin(EntityThis!("ProjectBeginningBalanceOnAccEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "JournalId": StringAttribute, //
        "JournalName": StringAttribute, //
        "JournalDescription": StringAttribute, //
        "JournalType": StringAttribute, //
        "JournalDetailSummary": StringAttribute, //
        "LineNumber": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "Description": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "SalesCurrency": StringAttribute, //
        "Revenue": StringAttribute, //
        "ContractId": StringAttribute, //
        "SalesTaxGroup": StringAttribute, //
        "ItemSalesTaxGroup": StringAttribute, //
        "DefaultDimensionDisplayValue": StringAttribute, //
        "Voucher": StringAttribute, //
        "VoucherDate": StringAttribute, //
        "VoucherNumberSequenceTable": StringAttribute, //
        "FundingSourceId": StringAttribute, //
        "VoucherChange": StringAttribute, //
        "VoucherDraw": StringAttribute, //
        "DefaultDimension": StringAttribute, //
        "ProjFundingSource": StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "Relationship_ProjectRelationshipId": StringAttribute, //
        "Relationship_ProjJournalTableEntityRelationshipId": StringAttribute, //
        "BackingTable_ProjBegBalJournalTrans_OnAccRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_beginningbalanceonacc");
  }
}
mixin(EntityCalls!("ProjectBeginningBalanceOnAccEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectBeginningBalanceOnAccEntity);
  
  auto entity = ProjectBeginningBalanceOnAccEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}