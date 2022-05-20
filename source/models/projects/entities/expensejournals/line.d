module models.projects.entities.expensejournals.line;

@safe:
import models.projects;

class DExpenseJournalLineEntity : DOOPEntity {
  mixin(EntityThis!("ExpenseJournalLineEntity"));

  override void initialize() {
    super.initialize;

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
        "voucherDate": StringAttribute, //
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
        "projId": StringAttribute, //
        "activityNumber": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "projectSalesCurrencyCode": StringAttribute, //
        "dimension": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "projectDate": StringAttribute, //
        "projectSalesPrice": StringAttribute, //
        "invoice": StringAttribute, //
        "dueDate": StringAttribute, //
        "payment": StringAttribute, //
        "paymentId": StringAttribute, //
        "taxExcemptNumber": StringAttribute, //
        "salesTaxCode": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "cashDiscount": StringAttribute, //
        "cashDiscountAmount": StringAttribute, //
        "cashDiscountDate": StringAttribute, //
        "purchaseOrder": StringAttribute, //
        "document": StringAttribute, //
        "documentDate": StringAttribute, //
        "paymentMethod": StringAttribute, //
        "paymentSpecification": StringAttribute, //
        "approver": StringAttribute, //
        "approvedBy": StringAttribute, //
        "postingProfile": StringAttribute, //
        "creditAmount": StringAttribute, //
        "debitAmount": StringAttribute, //
        "approved": StringAttribute, //
        "chineseVoucherTypeId": StringAttribute, //
        "chineseVoucherType": StringAttribute, //
        "chineseVoucher": StringAttribute, //
        "ledgerJournalTrans_Project": StringAttribute, //
        "projectTaxGroupSales": StringAttribute, //
        "projectTaxItemGroupSales": StringAttribute, //
        "projectPriceGroupID": StringAttribute, //
        "accountCompany": StringAttribute, //
        "offsetCompany": StringAttribute, //
        "isReversingEntry": StringAttribute, //
        "reversingDate": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "secondaryExchangeRate": StringAttribute, //
        "actualSalesTaxAmount": StringAttribute, //
        "transactionType": StringAttribute, //
        "offsetDefaultDimension": StringAttribute, //
        "offsetDefaultDimensionDisplayValue": StringAttribute, //
        "relationship_AccountCombinationRelationshipId": StringAttribute, //
        "relationship_ExpenseJournalHeaderEntityRelationshipId": StringAttribute, //
        "relationship_LegalEntityRelationshipId": StringAttribute, //
        "relationship_LedgerVoucherTypeEntityRelationshipId": StringAttribute, //
        "relationship_CurrencyRelationshipId": StringAttribute, //
        "relationship_LinePropertyRelationshipId": StringAttribute, //
        "relationship_DefaultDimensionRelationshipId": StringAttribute, //
        "relationship_OffsetDefaultDimensionRelationshipId": StringAttribute, //
        "relationship_OffsetAccountCombinationRelationshipId": StringAttribute, //
        "backingTable_LedgerJournalTransRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_expensejournallines");
  }
}
mixin(EntityCalls!("ExpenseJournalLineEntity"));

version(test_model_portals) {
  unittest {
    assert(ExpenseJournalLineEntity);
  
  auto entity = ExpenseJournalLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}