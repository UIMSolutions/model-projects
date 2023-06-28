module models.projects.entities.psa.forecast;

import models.projects;

@safe:
class DPSAForecastEntity : DEntity {
  mixin(EntityThis!("PSAForecastEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "amountMst": StringAttribute, //
        "categoryId": UUIDAttribute, //
        "costSales": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "elimination": StringAttribute, //
        "employeeItemId": UUIDAttribute, //
        "ledgerDimension": StringAttribute, //
        "ledgerTransDate": DateAttribute, //
        "modelId": UUIDAttribute, //
        "paymentDate": DateAttribute, //
        "paymentStatus": StringAttribute, //
        "postingType": StringAttribute, //
        "projectFundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectTransDate": DateAttribute, //
        "projectTransType": StringAttribute, //
        "projectType": StringAttribute, //
        "quantity": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "subscriptionId": UUIDAttribute, //
        "transId": UUIDAttribute, //
        "voucher": StringAttribute, //
        "ledgerDimensionDisplayValue": StringAttribute, //
        "projectFundingSource_ContractId": UUIDAttribute, //
        "projectFundingSource_FundingSourceId": UUIDAttribute, //
        "projectTable_ProjId": UUIDAttribute, //
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
        "contractId": UUIDAttribute, //
        "plLaborCostWithoutNoNeverLedger": StringAttribute, //
        "plLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "consumedLaborCostWithoutNoNeverLedger": StringAttribute, //
        "consumedLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "plMaterialCostWithoutNeverLedger": StringAttribute, //
        "consumedMaterialCostWithoutNeverLedger": StringAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "resourceId": UUIDAttribute, //
        "psaIndirectComponent": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "backingTable_ProjTransBudgetRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //

     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAForecastEntity"));

version(test_model_portals) { unittest {
    assert(PSAForecastEntity);
  
  auto entity = PSAForecastEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}