module models.projects.entities.expensejournals.line;

@safe:
import models.projects;

class DExpenseJournalLineEntity : DOOPEntity {
  mixin(EntityThis!("ExpenseJournalLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AccountType": StringAttribute, //
        "CurrencyCode": StringAttribute, //
        "JournalBatchNumber": StringAttribute, //
        "Account": StringAttribute, //
        "LineNumber": StringAttribute, //
        "OffsetAccountType": StringAttribute, //
        "OffsetAccount": StringAttribute, //
        "OffsetTransactionText": StringAttribute, //
        "Quantity": StringAttribute, //
        "VoucherDate": StringAttribute, //
        "Text": StringAttribute, //
        "Voucher": StringAttribute, //
        "AccountDisplayValue": StringAttribute, //
        "OffsetAccountDisplayValue": StringAttribute, //
        "Resource": StringAttribute, //
        "DelayTaxCalculation": StringAttribute, //
        "ProjectCostQuantity": StringAttribute, //
        "ProjectCategory": StringAttribute, //
        "ProjectCostPrice": StringAttribute, //
        "ProjectLineProperty": StringAttribute, //
        "ProjId": StringAttribute, //
        "ActivityNumber": StringAttribute, //
        "ResourceId": StringAttribute, //
        "ResourceCompanyId": StringAttribute, //
        "ProjectSalesCurrencyCode": StringAttribute, //
        "Dimension": StringAttribute, //
        "DimensionDisplayValue": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "ProjectSalesPrice": StringAttribute, //
        "Invoice": StringAttribute, //
        "DueDate": StringAttribute, //
        "Payment": StringAttribute, //
        "PaymentId": StringAttribute, //
        "TaxExcemptNumber": StringAttribute, //
        "SalesTaxCode": StringAttribute, //
        "ItemSalesTaxGroup": StringAttribute, //
        "CashDiscount": StringAttribute, //
        "CashDiscountAmount": StringAttribute, //
        "CashDiscountDate": StringAttribute, //
        "PurchaseOrder": StringAttribute, //
        "Document": StringAttribute, //
        "DocumentDate": StringAttribute, //
        "PaymentMethod": StringAttribute, //
        "PaymentSpecification": StringAttribute, //
        "Approver": StringAttribute, //
        "ApprovedBy": StringAttribute, //
        "PostingProfile": StringAttribute, //
        "CreditAmount": StringAttribute, //
        "DebitAmount": StringAttribute, //
        "Approved": StringAttribute, //
        "ChineseVoucherTypeId": StringAttribute, //
        "ChineseVoucherType": StringAttribute, //
        "ChineseVoucher": StringAttribute, //
        "LedgerJournalTrans_Project": StringAttribute, //
        "ProjectTaxGroupSales": StringAttribute, //
        "ProjectTaxItemGroupSales": StringAttribute, //
        "ProjectPriceGroupID": StringAttribute, //
        "AccountCompany": StringAttribute, //
        "OffsetCompany": StringAttribute, //
        "IsReversingEntry": StringAttribute, //
        "ReversingDate": StringAttribute, //
        "SalesTaxGroup": StringAttribute, //
        "ExchangeRate": StringAttribute, //
        "SecondaryExchangeRate": StringAttribute, //
        "ActualSalesTaxAmount": StringAttribute, //
        "TransactionType": StringAttribute, //
        "OffsetDefaultDimension": StringAttribute, //
        "OffsetDefaultDimensionDisplayValue": StringAttribute, //
        "Relationship_AccountCombinationRelationshipId": StringAttribute, //
        "Relationship_ExpenseJournalHeaderEntityRelationshipId": StringAttribute, //
        "Relationship_LegalEntityRelationshipId": StringAttribute, //
        "Relationship_LedgerVoucherTypeEntityRelationshipId": StringAttribute, //
        "Relationship_CurrencyRelationshipId": StringAttribute, //
        "Relationship_LinePropertyRelationshipId": StringAttribute, //
        "Relationship_DefaultDimensionRelationshipId": StringAttribute, //
        "Relationship_OffsetDefaultDimensionRelationshipId": StringAttribute, //
        "Relationship_OffsetAccountCombinationRelationshipId": StringAttribute, //
        "BackingTable_LedgerJournalTransRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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