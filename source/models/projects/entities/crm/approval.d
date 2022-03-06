module models.projects.entities.crm.approval;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. Approvals can be used to control access to specific objects.
class DPRJApproval : DOOPEntity {
  mixin(OOPEntityThis!("PRJApproval"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "projectApprovalId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the ApprovalsTable"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the ApprovalsTable"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "approvedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows the name of the approver."]),
        "approvedOn": OOPAttributeDatetime.descriptions(["en":"Shows the date of the approval."]),
        "billingType": OOPStringAttribute.descriptions(["en":"Billing type for the project approval line."]),
        "billingType_display": OOPStringAttribute.descriptions(["en":""]),
        "bookableResource": OOPStringAttribute.descriptions(["en":"Shows the resource that the entry is submitted for."]),
        "costPrice": OOPStringAttribute.descriptions(["en":"Shows the cost price of the transaction."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "costPriceBase": OOPStringAttribute.descriptions(["en":"Value of the Cost Price in base currency."]),
        "costQuantity": OOPStringAttribute.descriptions(["en":"Shows the hours submitted for the transaction."]),
        "date": OOPStringAttribute.descriptions(["en":"Shows the date of the transaction."]),
        "entryType": OOPStringAttribute.descriptions(["en":"Shows the entry type of the transaction."]),
        "entryType_display": OOPStringAttribute.descriptions(["en":""]),
        "expenseCategory": OOPStringAttribute.descriptions(["en":"Shows the expense category of the transaction."]),
        "expenseEntry": OOPStringAttribute.descriptions(["en":"Expense Entry Id."]),
        "externalComments": OOPStringAttribute.descriptions(["en":"Shows the external comments entered for the transaction."]),
        "hasReceipt": OOPStringAttribute.descriptions(["en":"Shows whether the transaction has a receipt."]),
        "internalComments": OOPStringAttribute.descriptions(["en":"Shows the internal comments entered for the transaction."]),
        "journalTransactiOn": OOPAttributeDatetime.descriptions(["en":"Shows whether the transaction was entered by a journal."]),
        "manager": OOPStringAttribute.descriptions(["en":"Shows the manager of the person who submitted the transaction."]),
        "project": OOPStringAttribute.descriptions(["en":"Shows the project for the transaction."]),
        "projectTask": OOPStringAttribute.descriptions(["en":"Shows the project task for the transaction."]),
        "recordStage": OOPStringAttribute.descriptions(["en":"Shows the stage of the record."]),
        "recordStage_display": OOPStringAttribute.descriptions(["en":""]),
        "referenceExpenseId": OOPAttributeUUID.descriptions(["en":"Shows the reference ID for the expense entry."]),
        "referenceJournalLine": OOPStringAttribute.descriptions(["en":"Shows the journal line ID for the journal transaction."]),
        "referenceTimeId": OOPAttributeUUID.descriptions(["en":""]),
        "resourceCategory": OOPStringAttribute.descriptions(["en":"Shows the role for the resource for this transaction."]),
        "salesPrice": OOPStringAttribute.descriptions(["en":"Shows the sales price of the transaction."]),
        "salesPriceBase": OOPStringAttribute.descriptions(["en":"Value of the Sales Price in base currency."]),
        "salesQuantity": OOPStringAttribute.descriptions(["en":"Shows the billable hours for the transaction."]),
        "submittedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Resource that has submitted the entry for approval."]),
        "timeEntry": OOPStringAttribute.descriptions(["en":"Time Entry Id."]),
        "transactionCategory": OOPStringAttribute.descriptions(["en":"Shows the transaction category."]),
        "costAmount": OOPStringAttribute.descriptions(["en":"Shows the cost amount of the transaction."]),
        "costAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Cost Amount in base currency."]),
        "salesAmount": OOPStringAttribute.descriptions(["en":"Shows the sales amount of the transaction."]),
        "salesAmountBase": OOPStringAttribute.descriptions(["en":"Value of the Sales Amount in base currency."]),
      ])
      .registerPath("project_approvals");
  }
}
mixin(OOPEntityCalls!("PRJApproval"));

unittest {
  version(uim_entities) {
    assert(PRJApproval);
  
  auto entity = PRJApproval;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}