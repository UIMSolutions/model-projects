module models.projects.entities.psa.actual;

@safe:
import models.projects;

class DPSAActualEntity : DOOPEntity {
  mixin(EntityThis!("PSAActualEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "amountMst": StringAttribute, //
        "categoryId": StringAttribute, //
        "costSales": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "emplItemId": StringAttribute, //
        "inventTransId": StringAttribute, //
        "ledgerDimension": StringAttribute, //
        "ledgerOrigin": StringAttribute, //
        "ledgerTransDate": StringAttribute, //
        "paymentDate": StringAttribute, //
        "paymentStatus": StringAttribute, //
        "postingType": StringAttribute, //
        "contractId": StringAttribute, //
        "projectId": StringAttribute, //
        "projectAdjustRefId": StringAttribute, //
        "projectFundingSource": StringAttribute, //
        "projectTransDate": StringAttribute, //
        "projectTransType": StringAttribute, //
        "projectType": StringAttribute, //
        "quantity": StringAttribute, //
        "subscriptionId": StringAttribute, //
        "transactionOrigin": StringAttribute, //
        "transId": StringAttribute, //
        "voucher": StringAttribute, //
        "resourceLegalEntity": StringAttribute, //
        "ledgerDimensionDisplayValue": StringAttribute, //
        "companyInfo_PartyNumber": StringAttribute, //
        "companyInfo_DataArea": StringAttribute, //
        "projectFundingSource_ContractId": StringAttribute, //
        "projectFundingSource_FundingSourceId": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "plLaborCost": StringAttribute, //
        "plExpenseCost": StringAttribute, //
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
        "plAccruedRevenueSalesValue": StringAttribute, //
        "plAccruedRevenueProduction": StringAttribute, //
        "plAccruedRevenueProfit": StringAttribute, //
        "plAccruedRevenueSubscription": StringAttribute, //
        "plAccruedRevenueOnAcc": StringAttribute, //
        "plTotalAccruedRevenue": StringAttribute, //
        "wipSalesValue": StringAttribute, //
        "wipProduction": StringAttribute, //
        "wipProfit": StringAttribute, //
        "WIPSubscription": StringAttribute, //
        "wipSalesTotal": StringAttribute, //
        "wipInvoicedOnAccount": StringAttribute, //
        "plAccruedRevenueSalesValueLabor": StringAttribute, //
        "plAccruedRevenueSalesValueExpense": StringAttribute, //
        "plAccruedRevenueSalesValueMaterial": StringAttribute, //
        "plAccruedRevenueSalesValueFee": StringAttribute, //
        "grossWIP": StringAttribute, //
        "netWIP": StringAttribute, //
        "plInvoicedRevenueOnAccount": StringAttribute, //
        "plLaborQty": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "plLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "plLaborCostWithoutNoNeverLedger": StringAttribute, //
        "consumedLaborCostWithoutNoNeverLedger": StringAttribute, //
        "consumedLaborQtyWithoutNoNeverLedger": StringAttribute, //
        "plMaterialCostWithoutNeverLedger": StringAttribute, //
        "consumedMaterialCostWithoutNeverLedger": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "backingTable_ProjTransPostingRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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