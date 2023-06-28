module models.projects.entities.crm.approval;

import models.projects;
@safe:

// Group of undeleted system users and undeleted teams. Approvals can be used to control access to specific objects.
class DPRJApproval : DEntity {
  mixin(EntityThis!("PRJApproval"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "projectApprovalId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": IntegerAttribute, // Status of the ApprovalsTable"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the ApprovalsTable"]),
        "statusCode_display": StringAttribute, //
        "approvedBy": UUIDAttribute, //Shows the name of the approver."]),
        "approvedOn": DatetimeAttribute, // Shows the date of the approval."]),
        "billingType": StringAttribute, // Billing type for the project approval line."]),
        "billingType_display": StringAttribute, //
        "bookableResource": StringAttribute, // Shows the resource that the entry is submitted for."]),
        "costPrice": StringAttribute, // Shows the cost price of the transaction."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "costPriceBase": StringAttribute, // Value of the Cost Price in base currency."]),
        "costQuantity": StringAttribute, // Shows the hours submitted for the transaction."]),
        "Date": DateAttribute, // Shows the date of the transaction."]),
        "entryType": StringAttribute, // Shows the entry type of the transaction."]),
        "entryType_display": StringAttribute, //
        "expenseCategory": StringAttribute, // Shows the expense category of the transaction."]),
        "expenseEntry": StringAttribute, // Expense Entry Id."]),
        "externalComments": StringAttribute, // Shows the external comments entered for the transaction."]),
        "hasReceipt": StringAttribute, // Shows whether the transaction has a receipt."]),
        "internalComments": StringAttribute, // Shows the internal comments entered for the transaction."]),
        "journalTransactiOn": DatetimeAttribute, // Shows whether the transaction was entered by a journal."]),
        "manager": StringAttribute, // Shows the manager of the person who submitted the transaction."]),
        "project": StringAttribute, // Shows the project for the transaction."]),
        "projectTask": StringAttribute, // Shows the project task for the transaction."]),
        "recordStage": StringAttribute, // Shows the stage of the record."]),
        "recordStage_display": StringAttribute, //
        "referenceExpenseId": UUIDAttribute, // Shows the reference ID for the expense entry."]),
        "referenceJournalLine": StringAttribute, // Shows the journal line ID for the journal transaction."]),
        "referenceTimeId": UUIDAttribute, // 
        "resourceCategory": StringAttribute, // Shows the role for the resource for this transaction."]),
        "salesPrice": StringAttribute, // Shows the sales price of the transaction."]),
        "salesPriceBase": StringAttribute, // Value of the Sales Price in base currency."]),
        "salesQuantity": StringAttribute, // Shows the billable hours for the transaction."]),
        "submittedBy": UUIDAttribute, //Resource that has submitted the entry for approval."]),
        "timeEntry": StringAttribute, // Time Entry Id."]),
        "transactionCategory": StringAttribute, // Shows the transaction category."]),
        "costAmount": StringAttribute, // Shows the cost amount of the transaction."]),
        "costAmountBase": StringAttribute, // Value of the Cost Amount in base currency."]),
        "salesAmount": StringAttribute, // Shows the sales amount of the transaction."]),
        "salesAmountBase": StringAttribute, // Value of the Sales Amount in base currency."]),
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