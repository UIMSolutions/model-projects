module models.projects.entities.beginningbalances.costsale;

@safe:
import models.projects;

class DProjectBeginningBalanceCostSaleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectBeginningBalanceCostSaleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "CostPrice": StringAttribute, //
        "DefaultDimension": StringAttribute, //
        "ItemId": StringAttribute, //
        "LineNumber": StringAttribute, //
        "LinePropertyId": StringAttribute, //
        "CanAccrueRevenue": StringAttribute, //
        "CategoryId": StringAttribute, //
        "ProjFundingSource": StringAttribute, //
        "ProjectId": StringAttribute, //
        "CostStatus": StringAttribute, //
        "SalesCurrency": StringAttribute, //
        "SalesTaxGroup": StringAttribute, //
        "ItemSalesTaxGroup": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "TransactionStatus": StringAttribute, //
        "TransactionType": StringAttribute, //
        "Quantity": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "VoucherDate": StringAttribute, //
        "Description": StringAttribute, //
        "Voucher": StringAttribute, //
        "ResourceRecId": StringAttribute, //
        "ResourceCategoryRecId": StringAttribute, //
        "FundingSourceId": StringAttribute, //
        "JournalId": StringAttribute, //
        "DefaultDimensionDisplayValue": StringAttribute, //
        "JournalDescription": StringAttribute, //
        "JournalDetailSummary": StringAttribute, //
        "JournalName": StringAttribute, //
        "JournalType": StringAttribute, //
        "VoucherChange": StringAttribute, //
        "VoucherDraw": StringAttribute, //
        "VoucherNumberSequenceTable": StringAttribute, //
        "ContractId": StringAttribute, //
        "Resource": StringAttribute, //
        "SalesAmount": StringAttribute, //
        "CostAmount": StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "Relationship_ProjectRelationshipId": StringAttribute, //
        "Relationship_ProjJournalTableEntityRelationshipId": StringAttribute, //
        "BackingTable_ProjBegBalJournalTrans_CostSalesRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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