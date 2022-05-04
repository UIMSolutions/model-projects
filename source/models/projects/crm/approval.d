module models.projects.entities.crm.approval;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. Approvals can be used to control access to specific objects.
class DPRJApproval : DOOPEntity {
  mixin(EntityThis!("PRJApproval"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "projectApprovalId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": IntegerAttributeClass, // Status of the ApprovalsTable"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the ApprovalsTable"]),
        "statusCode_display": StringAttributeClass, //
        "approvedBy": UUIDAttributeClass, //Shows the name of the approver."]),
        "approvedOn": DatetimeAttributeClass, // Shows the date of the approval."]),
        "billingType": StringAttributeClass, // Billing type for the project approval line."]),
        "billingType_display": StringAttributeClass, //
        "bookableResource": StringAttributeClass, // Shows the resource that the entry is submitted for."]),
        "costPrice": StringAttributeClass, // Shows the cost price of the transaction."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "costPriceBase": StringAttributeClass, // Value of the Cost Price in base currency."]),
        "costQuantity": StringAttributeClass, // Shows the hours submitted for the transaction."]),
        "date": StringAttributeClass, // Shows the date of the transaction."]),
        "entryType": StringAttributeClass, // Shows the entry type of the transaction."]),
        "entryType_display": StringAttributeClass, //
        "expenseCategory": StringAttributeClass, // Shows the expense category of the transaction."]),
        "expenseEntry": StringAttributeClass, // Expense Entry Id."]),
        "externalComments": StringAttributeClass, // Shows the external comments entered for the transaction."]),
        "hasReceipt": StringAttributeClass, // Shows whether the transaction has a receipt."]),
        "internalComments": StringAttributeClass, // Shows the internal comments entered for the transaction."]),
        "journalTransactiOn": DatetimeAttributeClass, // Shows whether the transaction was entered by a journal."]),
        "manager": StringAttributeClass, // Shows the manager of the person who submitted the transaction."]),
        "project": StringAttributeClass, // Shows the project for the transaction."]),
        "projectTask": StringAttributeClass, // Shows the project task for the transaction."]),
        "recordStage": StringAttributeClass, // Shows the stage of the record."]),
        "recordStage_display": StringAttributeClass, //
        "referenceExpenseId": UUIDAttributeClass, // Shows the reference ID for the expense entry."]),
        "referenceJournalLine": StringAttributeClass, // Shows the journal line ID for the journal transaction."]),
        "referenceTimeId": UUIDAttributeClass, // 
        "resourceCategory": StringAttributeClass, // Shows the role for the resource for this transaction."]),
        "salesPrice": StringAttributeClass, // Shows the sales price of the transaction."]),
        "salesPriceBase": StringAttributeClass, // Value of the Sales Price in base currency."]),
        "salesQuantity": StringAttributeClass, // Shows the billable hours for the transaction."]),
        "submittedBy": UUIDAttributeClass, //Resource that has submitted the entry for approval."]),
        "timeEntry": StringAttributeClass, // Time Entry Id."]),
        "transactionCategory": StringAttributeClass, // Shows the transaction category."]),
        "costAmount": StringAttributeClass, // Shows the cost amount of the transaction."]),
        "costAmountBase": StringAttributeClass, // Value of the Cost Amount in base currency."]),
        "salesAmount": StringAttributeClass, // Shows the sales amount of the transaction."]),
        "salesAmountBase": StringAttributeClass, // Value of the Sales Amount in base currency."]),
      ])
      .registerPath("project_approvals");
  }
}
mixin(EntityCalls!("PRJApproval"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJApproval);
  
  auto entity = PRJApproval;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}