module models.projects.entities.expensejournals.line;

import models.projects;

@safe:
class DExpenseJournalLineEntity : DEntity {
  mixin(EntityThis!("ExpenseJournalLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "accountType": StringAttribute, //
        "currencyCode": StringAttribute, //
        "journalBatchNumber": StringAttribute, //
        "account": StringAttribute, //
        "lineNumber": StringAttribute, //
        "offsetAccountType": StringAttribute, //
        "offsetAccount": StringAttribute, //
        "offsetTransactionText": StringAttribute, //
        "quantity": StringAttribute, //
        "voucherDate": DateAttribute, //
        "text": StringAttribute, //
        "voucher": StringAttribute, //
        "accountDisplayValue": StringAttribute, //
        "offsetAccountDisplayValue": StringAttribute, //
        "resource": StringAttribute, //
        "delayTaxCalculation": StringAttribute, //
        "projectCostQuantity": StringAttribute, //
        "projectCategory": StringAttribute, //
        "projectCostPrice": StringAttribute, //
        "projectLineProperty": StringAttribute, //
        "projectId": UUIDAttribute, //
        "activityNumber": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "projectSalesCurrencyCode": StringAttribute, //
        "dimension": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "projectDate": DateAttribute, //
        "projectSalesPrice": StringAttribute, //
        "invoice": StringAttribute, //
        "dueDate": DateAttribute, //
        "payment": StringAttribute, //
        "paymentId": UUIDAttribute, //
        "taxExcemptNumber": StringAttribute, //
        "salesTaxCode": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "cashDiscount": StringAttribute, //
        "cashDiscountAmount": StringAttribute, //
        "cashDiscountDate": DateAttribute, //
        "purchaseOrder": StringAttribute, //
        "document": StringAttribute, //
        "documentDate": DateAttribute, //
        "paymentMethod": StringAttribute, //
        "paymentSpecification": StringAttribute, //
        "approver": StringAttribute, //
        "approvedBy": StringAttribute, //
        "postingProfile": StringAttribute, //
        "creditAmount": StringAttribute, //
        "debitAmount": StringAttribute, //
        "approved": StringAttribute, //
        "chineseVoucherTypeId": UUIDAttribute, //
        "chineseVoucherType": StringAttribute, //
        "chineseVoucher": StringAttribute, //
        "ledgerJournalTrans_Project": StringAttribute, //
        "projectTaxGroupSales": StringAttribute, //
        "projectTaxItemGroupSales": StringAttribute, //
        "projectPriceGroupId": UUIDAttribute, //
        "accountCompany": StringAttribute, //
        "offsetCompany": StringAttribute, //
        "isReversingEntry": StringAttribute, //
        "reversingDate": DateAttribute, //
        "salesTaxGroup": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "secondaryExchangeRate": StringAttribute, //
        "actualSalesTaxAmount": StringAttribute, //
        "transactionType": StringAttribute, //
        "offsetDefaultDimension": StringAttribute, //
        "offsetDefaultDimensionDisplayValue": StringAttribute, //
        "relationship_AccountCombinationRelationshipId": UUIDAttribute, //
        "relationship_ExpenseJournalHeaderEntityRelationshipId": UUIDAttribute, //
        "relationship_LegalEntityRelationshipId": UUIDAttribute, //
        "relationship_LedgerVoucherTypeEntityRelationshipId": UUIDAttribute, //
        "relationship_CurrencyRelationshipId": UUIDAttribute, //
        "relationship_LinePropertyRelationshipId": UUIDAttribute, //
        "relationship_DefaultDimensionRelationshipId": UUIDAttribute, //
        "relationship_OffsetDefaultDimensionRelationshipId": UUIDAttribute, //
        "relationship_OffsetAccountCombinationRelationshipId": UUIDAttribute, //
        "backingTable_LedgerJournalTransRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_expensejournallines");
  }
}
mixin(EntityCalls!("ExpenseJournalLineEntity"));

version(test_model_portals) { unittest {
    assert(ExpenseJournalLineEntity);
  
  auto entity = ExpenseJournalLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}