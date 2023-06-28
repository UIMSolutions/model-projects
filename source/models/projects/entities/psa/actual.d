module models.projects.entities.psa.actual;

import models.projects;

@safe:
class DPSAActualEntity : DEntity {
  mixin(EntityThis!("PSAActualEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "activityNumber": StringAttribute, //
        "amountMst": StringAttribute, //
        "categoryId": UUIDAttribute, //
        "costSales": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "emplItemId": UUIDAttribute, //
        "inventTransId": UUIDAttribute, //
        "ledgerDimension": StringAttribute, //
        "ledgerOrigin": StringAttribute, //
        "ledgerTransDate": DateAttribute, //
        "paymentDate": DateAttribute, //
        "paymentStatus": StringAttribute, //
        "postingType": StringAttribute, //
        "contractId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "projectAdjustRefId": UUIDAttribute, //
        "projectFundingSource": StringAttribute, //
        "projectTransDate": DateAttribute, //
        "projectTransType": StringAttribute, //
        "projectType": StringAttribute, //
        "quantity": StringAttribute, //
        "subscriptionId": UUIDAttribute, //
        "transactionOrigin": StringAttribute, //
        "transId": UUIDAttribute, //
        "voucher": StringAttribute, //
        "resourceLegalEntity": StringAttribute, //
        "ledgerDimensionDisplayValue": StringAttribute, //
        "companyInfo_PartyNumber": StringAttribute, //
        "companyInfo_DataArea": StringAttribute, //
        "projectFundingSource_ContractId": UUIDAttribute, //
        "projectFundingSource_FundingSourceId": UUIDAttribute, //
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
        "wipSubscription": StringAttribute, //
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
        "resourceId": UUIDAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "backingTable_ProjTransPostingRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAActualEntity"));

version(test_model_portals) { unittest {
    assert(PSAActualEntity);
  
  auto entity = PSAActualEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}