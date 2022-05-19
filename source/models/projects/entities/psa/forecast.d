module models.projects.entities.psa.forecast;

@safe:
import models.projects;

class DPSAForecastEntity : DOOPEntity {
  mixin(EntityThis!("PSAForecastEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "AmountMst": StringAttribute, //
        "CategoryId": StringAttribute, //
        "costSales": StringAttribute, //
        "DefaultDimension": StringAttribute, //
        "Elimination": StringAttribute, //
        "EmplItemId": StringAttribute, //
        "LedgerDimension": StringAttribute, //
        "LedgerTransDate": StringAttribute, //
        "ModelId": StringAttribute, //
        "PaymentDate": StringAttribute, //
        "PaymentStatus": StringAttribute, //
        "PostingType": StringAttribute, //
        "ProjFundingSource": StringAttribute, //
        "ProjId": StringAttribute, //
        "ProjTransDate": StringAttribute, //
        "ProjTransType": StringAttribute, //
        "ProjType": StringAttribute, //
        "Qty": StringAttribute, //
        "Resource": StringAttribute, //
        "ResourceCategory": StringAttribute, //
        "SubscriptionId": StringAttribute, //
        "TransId": StringAttribute, //
        "Voucher": StringAttribute, //
        "LedgerDimensionDisplayValue": StringAttribute, //
        "ProjFundingSource_ContractId": StringAttribute, //
        "ProjFundingSource_FundingSourceId": StringAttribute, //
        "ProjTable_ProjId": StringAttribute, //
        "DefaultDimensionDisplayValue": StringAttribute, //
        "PLLaborCost": StringAttribute, //
        "PLExpenseCost": StringAttribute, //
        "PLLaborQty": StringAttribute, //
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
        "PLaccruedRevenueSalesValue": StringAttribute, //
        "PLaccruedRevenueSubscription": StringAttribute, //
        "PLaccruedRevenueProduction": StringAttribute, //
        "PLaccruedRevenueProfit": StringAttribute, //
        "PLAccruedRevenueOnAcc": StringAttribute, //
        "PLTotalAccruedRevenue": StringAttribute, //
        "WIPSalesValue": StringAttribute, //
        "WIPProduction": StringAttribute, //
        "WIPProfit": StringAttribute, //
        "WIPSubscription": StringAttribute, //
        "WIPInvoicedOnAccount": StringAttribute, //
        "WIPSalesTotal": StringAttribute, //
        "GrossWIP": StringAttribute, //
        "NetWIP": StringAttribute, //
        "PLInvoicedRevenueOnAccount": StringAttribute, //
        "ContractId": StringAttribute, //
        "PLLaborCostWithoutNoNeverLedger": StringAttribute, //
        "PLLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "ConsumedLaborCostWithoutNoNeverLedger": StringAttribute, //
        "ConsumedLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "PLMaterialCostWithoutNeverLedger": StringAttribute, //
        "ConsumedMaterialCostWithoutNeverLedger": StringAttribute, //
        "ResourceCompanyId": StringAttribute, //
        "ResourceId": StringAttribute, //
        "PSAIndirectComponent": StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "BackingTable_ProjTransBudgetRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //

     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAForecastEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAForecastEntity);
  
  auto entity = PSAForecastEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}