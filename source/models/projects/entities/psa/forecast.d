module models.projects.entities.psa.forecast;

@safe:
import models.projects;

class DPSAForecastEntity : DOOPEntity {
  mixin(EntityThis!("PSAForecastEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "amountMst": StringAttribute, //
        "categoryId": StringAttribute, //
        "costSales": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "elimination": StringAttribute, //
        "employeeItemId": StringAttribute, //
        "ledgerDimension": StringAttribute, //
        "ledgerTransDate": StringAttribute, //
        "modelId": StringAttribute, //
        "paymentDate": StringAttribute, //
        "paymentStatus": StringAttribute, //
        "postingType": StringAttribute, //
        "projectFundingSource": StringAttribute, //
        "projectId": StringAttribute, //
        "projectTransDate": StringAttribute, //
        "projectTransType": StringAttribute, //
        "projectType": StringAttribute, //
        "quantity": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "subscriptionId": StringAttribute, //
        "transId": StringAttribute, //
        "voucher": StringAttribute, //
        "ledgerDimensionDisplayValue": StringAttribute, //
        "projectFundingSource_ContractId": StringAttribute, //
        "projectFundingSource_FundingSourceId": StringAttribute, //
        "projectTable_ProjId": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "plLaborCost": StringAttribute, //
        "plExpenseCost": StringAttribute, //
        "plLaborQty": StringAttribute, //
        "plMaterialCost": StringAttribute, //
        "plCostAccruedLoss": StringAttribute, //
        "plTotalCost": StringAttribute, //
        "wipLaborCost": StringAttribute, //
        "wipExpenseCost": StringAttribute, //
        "wipMaterialCost": StringAttribute, //
        "wipCostAccruedLoss": StringAttribute, //
        "wipTotalCost": StringAttribute, //
        "consumedLaborCost": StringAttribute, //
        "consumedLaborQty": StringAttribute, //
        "consumedExpenseCost": StringAttribute, //
        "consumedMaterialCost": StringAttribute, //
        "totalConsumption": StringAttribute, //
        "payrollAllocation": StringAttribute, //
        "laborInvoicedRevenue": StringAttribute, //
        "laborInvoicedQty": StringAttribute, //
        "expenseInvoicedRevenue": StringAttribute, //
        "materialInvoicedRevenue": StringAttribute, //
        "feeInvoicedRevenue": StringAttribute, //
        "onAccountPrePayment": StringAttribute, //
        "onAccountDeduction": StringAttribute, //
        "onAccountMilestone": StringAttribute, //
        "onAccountBegBal": StringAttribute, //
        "onAccountTotal": StringAttribute, //
        "plInvoicedRevenue": StringAttribute, //
        "totalInvoicedRevenue": StringAttribute, //
        "placcruedRevenueSalesValue": StringAttribute, //
        "placcruedRevenueSubscription": StringAttribute, //
        "placcruedRevenueProduction": StringAttribute, //
        "placcruedRevenueProfit": StringAttribute, //
        "plAccruedRevenueOnAcc": StringAttribute, //
        "plTotalAccruedRevenue": StringAttribute, //
        "wipSalesValue": StringAttribute, //
        "wipProduction": StringAttribute, //
        "wipProfit": StringAttribute, //
        "wipSubscription": StringAttribute, //
        "wipInvoicedOnAccount": StringAttribute, //
        "wipSalesTotal": StringAttribute, //
        "grossWIP": StringAttribute, //
        "netWIP": StringAttribute, //
        "plInvoicedRevenueOnAccount": StringAttribute, //
        "contractId": StringAttribute, //
        "plLaborCostWithoutNoNeverLedger": StringAttribute, //
        "plLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "consumedLaborCostWithoutNoNeverLedger": StringAttribute, //
        "consumedLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "plMaterialCostWithoutNeverLedger": StringAttribute, //
        "consumedMaterialCostWithoutNeverLedger": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "resourceId": StringAttribute, //
        "psaIndirectComponent": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "backingTable_ProjTransBudgetRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //

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