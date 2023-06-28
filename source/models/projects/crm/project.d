module models.projects.crm.project;

import models.projects;

@safe:
// Delivery entity in an engagement.
class DPRJProject : DEntity {
  mixin(EntityThis!("PRJProject"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfId": UUIDAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfId": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "projectId": UUIDAttribute, // Shows the entity instances."]),
        "stateCode": IntegerAttribute, // Status of the Project"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project"]),
        "statusCode_display": StringAttribute, //
        "subject": StringAttribute, // Type the name of the custom entity."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "actualDuratiOn": DatetimeAttribute, // Shows the actual duration of the project in minutes."]),
        "actualEnd": StringAttribute, // Enter the actual end time of the project."]),
        "actualExpenseCost": StringAttribute, // Shows the aggregate of actual expense cost on the project."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttribute, // Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualexpensecostBase": StringAttribute, // Value of the Actual Expense Cost in base currency."]),
        "actualHours": StringAttribute, // Shows the total actual hours of the project"]),
        "actualLaborCost": StringAttribute, // Shows the aggregate of actual labor cost on the project."]),
        "actuallaborcostBase": StringAttribute, // Value of the Actual Labor Cost in base currency."]),
        "actualSales": StringAttribute, // Shows the actual sales value."]),
        "actualsalesBase": StringAttribute, // Shows the value of the actual sales in the base currency."]),
        "actualStart": StringAttribute, // Enter the actual start time of the project."]),
        "bulkGenerationStatus": StringAttribute, // The status of the bulk generation operations running on the project entity. If no operation is running, the value is null."]),
        "bulkGenerationStatus_display": StringAttribute, //
        "calendarId": UUIDAttribute, // Id of the calendar for the project."]),
        "comments": StringAttribute, // Enter the comments that are used to describe the current project status."]),
        "contractOrganizationalUnitId": UUIDAttribute, // Select the organizational unit sponsoring the project."]),
        "customer": StringAttribute, // Enter the customer who the project is associated with."]),
        "disableCreateOfTeamMemberForProjectManager": StringAttribute, // This is an internal field, mainly used during import so that we don't create a team member record for the project manager."]),
        "effortestimateatcompleteEAC": StringAttribute, // Shows the total of actual hours and the remaining hours."]),
        "projectExchangeRate": StringAttribute, // Exchange rate for the currency associated with the project with respect to the base currency."]),
        "isLinkedToMSProjectClient": BooleanAttribute, // Specifies if the project is linked to a project in MS Project"]),
        "isTemplate": BooleanAttribute, // Shows if the project is a project template."]),
        "linkedDocumentUrl": UrlAttribute, // The URL for the linked document."]),
        "overallProjectStatus": StringAttribute, // Describes the project status."]),
        "overallProjectStatus_display": StringAttribute, //
        "estimatedExpenseCost": StringAttribute, // Shows the aggregate of the planned expense cost of all the associated tasks."]),
        "plannedexpensecostBase": StringAttribute, // Value of the Estimated Expense Cost in base currency."]),
        "estimatedHours": StringAttribute, // Shows the total estimate hours of the project."]),
        "estimatedLaborCost": StringAttribute, // Shows the aggregate of the planned labor cost of all the associated tasks."]),
        "plannedlaborcostBase": StringAttribute, // Value of the Estimated Labor Cost in base currency."]),
        "plannedSales": StringAttribute, // Shows the total planned sales."]),
        "plannedSalesBase": StringAttribute, // Shows the value of the planned sales in the base currency."]),
        "progress": StringAttribute, // Shows the actual hours divided by effort at estimate."]),
        "projectManager": StringAttribute, // Shows the project manager assigned to the project."]),
        "projectResourceRequirementsVisibleToResources": StringAttribute, // Indicates if the project resource requirements are visible to the resources assigned to the project."]),
        "projectTeamId": UUIDAttribute, //Select the Team associated with Project."]),
        "projectTemplate": StringAttribute, // Select the project template behind the project."]),
        "remainingCost": StringAttribute, // Shows the difference between the estimated cost and the actual cost."]),
        "remainingCostBase": StringAttribute, // Shows the value of the remaining cost in the base currency."]),
        "remainingHours": StringAttribute, // Shows the difference between the estimate at completion (EAC) and the actual hours."]),
        "remainingSales": StringAttribute, // Shows the difference between estimated sales and the actual sales."]),
        "remainingSalesBase": StringAttribute, // Shows the value of the remaining sales in the base currency."]),
        "salesOrderId": UUIDAttribute, // Shows the contract for this project."]),
        "scheduledDurationMinutes": StringAttribute, // Shows the scheduled duration of the project, specified in minutes."]),
        "estimatedFinishDate": DateAttribute, // Enter the scheduled end time of the project."]),
        "scheduleStartDate": DateAttribute, // Enter the scheduled start time of the project."]),
        "schedulePerformance": StringAttribute, // Describes the schedule performance of the project."]),
        "schedulePerformance_display": StringAttribute, //
        "scheduleVariance": StringAttribute, // Shows the difference between the planned effort and the estimate at completion (EAC)."]),
        "stageName": StringAttribute, // Shows the stage of the project (Deprecated in v3.0)."]),
        "statusUpdatedOn": DatetimeAttribute, // Shows the most recent update on a status field(comments or overall project status)."]),
        "totalActualCost": StringAttribute, // Shows the aggregated cost from actuals on the project."]),
        "totalActualCostBase": StringAttribute, // Shows the value of the total actual cost in the base currency."]),
        "totalPlannedCost": StringAttribute, // Shows the aggregate of the total planned cost of all the associated tasks."]),
        "totalPlannedCostBase": StringAttribute, // Shows the value of the total planned cost in the base currency."]),
        "wbsDuratiOn": DatetimeAttribute, // Shows the work breakdown structure (WBS) duration in days."]),
        "workHourTemplate": StringAttribute, // Select the work hour template used to create the project calendar."]),
        "costConsumptiOn": DatetimeAttribute, // Shows the actual cost divided by the estimated cost at completion."]),
        "costEstimateAtComplete": StringAttribute, // Sum of Actual Cost and Remaining cost"]),
        "costEstimateAtCompleteBase": StringAttribute, // Value of the Cost estimate at completion (EAC) in base currency."]),
        "costPerformence": StringAttribute, //
        "costPerformence_display": StringAttribute, //
        "costVariance": StringAttribute, // Variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
        "costVarianceBase": StringAttribute, // Shows the value of the cost variance in the base currency."]),
        "salesConsumptiOn": DatetimeAttribute, // Shows the actual sales divided by the estimated sales."]),
        "salesEstimateAtCompleteEAC": StringAttribute, // Shows the total of actual and remaining sales."]),
        "salesEstimateAtCompleteEACBase": StringAttribute, // Value of the Sales Estimate At Complete (EAC) in base currency."]),
        "salesVariance": StringAttribute, // Shows the difference between the planned sales and the sales estimate at completion (EAC)."]),
        "salesVarianceBase": StringAttribute, // Shows the value of the sales variance in the base currency."]),
        "teamSize": StringAttribute, // Shows the total number of team members assigned to this project"]),
        "teamsizeDate": DateAttribute, // Last Updated time of rollup field Team Size."]),
        "teamsizeState": StringAttribute, // State of rollup field Team Size."]),
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