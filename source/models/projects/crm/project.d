module models.projects.entities.project;

@safe:
import models.projects;

// Delivery entity in an engagement.
class DPRJProject : DOOPEntity {
  mixin(EntityThis!("PRJProject"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfId": UUIDAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfId": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "projectId": UUIDAttributeClass, // Shows the entity instances."]),
        "stateCode": IntegerAttributeClass, // Status of the Project"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project"]),
        "statusCode_display": StringAttributeClass, //
        "subject": StringAttributeClass, // Type the name of the custom entity."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "actualDuratiOn": DatetimeAttributeClass, // Shows the actual duration of the project in minutes."]),
        "actualEnd": StringAttributeClass, // Enter the actual end time of the project."]),
        "actualExpenseCost": StringAttributeClass, // Shows the aggregate of actual expense cost on the project."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualexpensecostBase": StringAttributeClass, // Value of the Actual Expense Cost in base currency."]),
        "actualHours": StringAttributeClass, // Shows the total actual hours of the project"]),
        "actualLaborCost": StringAttributeClass, // Shows the aggregate of actual labor cost on the project."]),
        "actuallaborcostBase": StringAttributeClass, // Value of the Actual Labor Cost in base currency."]),
        "actualSales": StringAttributeClass, // Shows the actual sales value."]),
        "actualsalesBase": StringAttributeClass, // Shows the value of the actual sales in the base currency."]),
        "actualStart": StringAttributeClass, // Enter the actual start time of the project."]),
        "bulkGenerationStatus": StringAttributeClass, // The status of the bulk generation operations running on the project entity. If no operation is running, the value is null."]),
        "bulkGenerationStatus_display": StringAttributeClass, //
        "calendarId": UUIDAttributeClass, // Id of the calendar for the project."]),
        "comments": StringAttributeClass, // Enter the comments that are used to describe the current project status."]),
        "contractOrganizationalUnitId": UUIDAttributeClass, // Select the organizational unit sponsoring the project."]),
        "customer": StringAttributeClass, // Enter the customer who the project is associated with."]),
        "disableCreateOfTeamMemberForProjectManager": StringAttributeClass, // This is an internal field, mainly used during import so that we don't create a team member record for the project manager."]),
        "effortestimateatcompleteEAC": StringAttributeClass, // Shows the total of actual hours and the remaining hours."]),
        "projectExchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the project with respect to the base currency."]),
        "isLinkedToMSProjectClient": BooleanAttributeClass, // Specifies if the project is linked to a project in MS Project"]),
        "isTemplate": BooleanAttributeClass, // Shows if the project is a project template."]),
        "linkedDocumentUrl": UrlAttributeClass, // The URL for the linked document."]),
        "overallProjectStatus": StringAttributeClass, // Describes the project status."]),
        "overallProjectStatus_display": StringAttributeClass, //
        "estimatedExpenseCost": StringAttributeClass, // Shows the aggregate of the planned expense cost of all the associated tasks."]),
        "plannedexpensecostBase": StringAttributeClass, // Value of the Estimated Expense Cost in base currency."]),
        "estimatedHours": StringAttributeClass, // Shows the total estimate hours of the project."]),
        "estimatedLaborCost": StringAttributeClass, // Shows the aggregate of the planned labor cost of all the associated tasks."]),
        "plannedlaborcostBase": StringAttributeClass, // Value of the Estimated Labor Cost in base currency."]),
        "plannedSales": StringAttributeClass, // Shows the total planned sales."]),
        "plannedSalesBase": StringAttributeClass, // Shows the value of the planned sales in the base currency."]),
        "progress": StringAttributeClass, // Shows the actual hours divided by effort at estimate."]),
        "projectManager": StringAttributeClass, // Shows the project manager assigned to the project."]),
        "projectResourceRequirementsVisibleToResources": StringAttributeClass, // Indicates if the project resource requirements are visible to the resources assigned to the project."]),
        "projectTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Select the Team associated with Project."]),
        "projectTemplate": StringAttributeClass, // Select the project template behind the project."]),
        "remainingCost": StringAttributeClass, // Shows the difference between the estimated cost and the actual cost."]),
        "remainingCostBase": StringAttributeClass, // Shows the value of the remaining cost in the base currency."]),
        "remainingHours": StringAttributeClass, // Shows the difference between the estimate at completion (EAC) and the actual hours."]),
        "remainingSales": StringAttributeClass, // Shows the difference between estimated sales and the actual sales."]),
        "remainingSalesBase": StringAttributeClass, // Shows the value of the remaining sales in the base currency."]),
        "salesOrderId": UUIDAttributeClass, // Shows the contract for this project."]),
        "scheduledDurationMinutes": StringAttributeClass, // Shows the scheduled duration of the project, specified in minutes."]),
        "estimatedFinishDate": DateAttributeClass, // Enter the scheduled end time of the project."]),
        "scheduleStartDate": DateAttributeClass, // Enter the scheduled start time of the project."]),
        "schedulePerformance": StringAttributeClass, // Describes the schedule performance of the project."]),
        "schedulePerformance_display": StringAttributeClass, //
        "scheduleVariance": StringAttributeClass, // Shows the difference between the planned effort and the estimate at completion (EAC)."]),
        "stageName": StringAttributeClass, // Shows the stage of the project (Deprecated in v3.0)."]),
        "statusUpdatedOn": DatetimeAttributeClass, // Shows the most recent update on a status field(comments or overall project status)."]),
        "totalActualCost": StringAttributeClass, // Shows the aggregated cost from actuals on the project."]),
        "totalActualCostBase": StringAttributeClass, // Shows the value of the total actual cost in the base currency."]),
        "totalPlannedCost": StringAttributeClass, // Shows the aggregate of the total planned cost of all the associated tasks."]),
        "totalPlannedCostBase": StringAttributeClass, // Shows the value of the total planned cost in the base currency."]),
        "wbsDuratiOn": DatetimeAttributeClass, // Shows the work breakdown structure (WBS) duration in days."]),
        "workHourTemplate": StringAttributeClass, // Select the work hour template used to create the project calendar."]),
        "costConsumptiOn": DatetimeAttributeClass, // Shows the actual cost divided by the estimated cost at completion."]),
        "costEstimateAtComplete": StringAttributeClass, // Sum of Actual Cost and Remaining cost"]),
        "costEstimateAtCompleteBase": StringAttributeClass, // Value of the Cost estimate at completion (EAC) in base currency."]),
        "costPerformence": StringAttributeClass, //
        "costPerformence_display": StringAttributeClass, //
        "costVariance": StringAttributeClass, // Variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
        "costVarianceBase": StringAttributeClass, // Shows the value of the cost variance in the base currency."]),
        "salesConsumptiOn": DatetimeAttributeClass, // Shows the actual sales divided by the estimated sales."]),
        "salesEstimateAtCompleteEAC": StringAttributeClass, // Shows the total of actual and remaining sales."]),
        "salesEstimateAtCompleteEACBase": StringAttributeClass, // Value of the Sales Estimate At Complete (EAC) in base currency."]),
        "salesVariance": StringAttributeClass, // Shows the difference between the planned sales and the sales estimate at completion (EAC)."]),
        "salesVarianceBase": StringAttributeClass, // Shows the value of the sales variance in the base currency."]),
        "teamSize": StringAttributeClass, // Shows the total number of team members assigned to this project"]),
        "teamsizeDate": DateAttributeClass, // Last Updated time of rollup field Team Size."]),
        "teamsizeState": StringAttributeClass, // State of rollup field Team Size."]),
      ])
      .registerPath("project_projects");
  }
}
mixin(EntityCalls!("PRJProject"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJProject);
  
  auto entity = PRJProject;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}