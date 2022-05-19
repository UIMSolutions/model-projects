module source.models.projects.entities.psa.actual;

@safe:
import models.projects;

class DPSAActualEntity : DOOPEntity {
  mixin(EntityThis!("PSAActualEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "AmountMst": StringAttribute, //
        "CategoryId": StringAttribute, //
        "costSales": StringAttribute, //
        "DefaultDimension": StringAttribute, //
        "EmplItemId": StringAttribute, //
        "InventTransId": StringAttribute, //
        "LedgerDimension": StringAttribute, //
        "LedgerOrigin": StringAttribute, //
        "LedgerTransDate": StringAttribute, //
        "PaymentDate": StringAttribute, //
        "PaymentStatus": StringAttribute, //
        "PostingType": StringAttribute, //
        "ContractId": StringAttribute, //
        "ProjId": StringAttribute, //
        "ProjAdjustRefId": StringAttribute, //
        "ProjFundingSource": StringAttribute, //
        "ProjTransDate": StringAttribute, //
        "ProjTransType": StringAttribute, //
        "ProjType": StringAttribute, //
        "Qty": StringAttribute, //
        "SubscriptionId": StringAttribute, //
        "TransactionOrigin": StringAttribute, //
        "TransId": StringAttribute, //
        "Voucher": StringAttribute, //
        "ResourceLegalEntity": StringAttribute, //
        "LedgerDimensionDisplayValue": StringAttribute, //
        "CompanyInfo_PartyNumber": StringAttribute, //
        "CompanyInfo_DataArea": StringAttribute, //
        "ProjFundingSource_ContractId": StringAttribute, //
        "ProjFundingSource_FundingSourceId": StringAttribute, //
        "DefaultDimensionDisplayValue": StringAttribute, //
        "PLLaborCost": StringAttribute, //
        "PLExpenseCost": StringAttribute, //
        "PLMaterialCost": StringAttribute, //
        "PLCostAccruedLoss": StringAttribute, //
        "PLTotalCost": StringAttribute, //
        "WIPLaborCost": StringAttribute, //
        "WIPExpenseCost": StringAttribute, //
        "WIPMaterialCost": StringAttribute, //
        "WIPCostAccruedLoss": StringAttribute, //
        "WIPTotalCost": StringAttribute, //
        "ConsumedLaborCost": StringAttribute, //
        "ConsumedLaborQty": StringAttribute, //
        "ConsumedExpenseCost": StringAttribute, //
        "ConsumedMaterialCost": StringAttribute, //
        "totalConsumption": StringAttribute, //
        "PayrollAllocation": StringAttribute, //
        "LaborInvoicedRevenue": StringAttribute, //
        "LaborInvoicedQty": StringAttribute, //
        "ExpenseInvoicedRevenue": StringAttribute, //
        "MaterialInvoicedRevenue": StringAttribute, //
        "FeeInvoicedRevenue": StringAttribute, //
        "OnAccPrePayment": StringAttribute, //
        "OnAccDeduction": StringAttribute, //
        "OnAccMilestone": StringAttribute, //
        "OnAccBegBal": StringAttribute, //
        "OnAccTotal": StringAttribute, //
        "PLInvoicedRevenue": StringAttribute, //
        "totalInvoicedRevenue": StringAttribute, //
        "PLAccruedRevenueSalesValue": StringAttribute, //
        "PLAccruedRevenueProduction": StringAttribute, //
        "PLAccruedRevenueProfit": StringAttribute, //
        "PLAccruedRevenueSubscription": StringAttribute, //
        "PLAccruedRevenueOnAcc": StringAttribute, //
        "PLTotalAccruedRevenue": StringAttribute, //
        "WIPSalesValue": StringAttribute, //
        "WIPProduction": StringAttribute, //
        "WIPProfit": StringAttribute, //
        "WIPSubscription": StringAttribute, //
        "WIPSalesTotal": StringAttribute, //
        "WIPInvoicedOnAccount": StringAttribute, //
        "PLAccruedRevenueSalesValueLabor": StringAttribute, //
        "PLAccruedRevenueSalesValueExpense": StringAttribute, //
        "PLAccruedRevenueSalesValueMaterial": StringAttribute, //
        "PLAccruedRevenueSalesValueFee": StringAttribute, //
        "GrossWIP": StringAttribute, //
        "NetWIP": StringAttribute, //
        "PLInvoicedRevenueOnAccount": StringAttribute, //
        "PLLaborQty": StringAttribute, //
        "Resource": StringAttribute, //
        "ResourceCategory": StringAttribute, //
        "PLLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "PLLaborCostWithoutNoNeverLedger": StringAttribute, //
        "ConsumedLaborCostWithoutNoNeverLedger": StringAttribute, //
        "ConsumedLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "PLMaterialCostWithoutNeverLedger": StringAttribute, //
        "ConsumedMaterialCostWithoutNeverLedger": StringAttribute, //
        "ResourceId": StringAttribute, //
        "ResourceCompanyId": StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "BackingTable_ProjTransPostingRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAActualEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAActualEntity);
  
  auto entity = PSAActualEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}