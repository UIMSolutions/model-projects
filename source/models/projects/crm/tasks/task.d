module models.projects.entities.tasks.task;

import models.projects;
@safe:

// Tasks related to project.
class DPRJTask : DEntity {
  mixin(EntityThis!("PRJTask"));
  
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
        "stateCode": IntegerAttribute, // Status of the Project Task"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Task"]),
        "statusCode_display": StringAttribute, //
        "projectTaskName": StringAttribute, // Type the name of the custom entity."]),
        "actualCost": StringAttribute, // Enter the value of the actual cost consumed based on work reported to be completed on the task."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
        "exchangeRate": StringAttribute, // Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCostBase": StringAttribute, // Value of the Actual Cost in base currency."]),
        "actualDuration": StringAttribute, // Shows the actual duration of the project task in days"]),
        "actualEffort": StringAttribute, // Shows the hours submitted against the task."]),
        "actualEndDateTime": DatetimeAttribute, // Enter the actual end time of the project task."]),
        "actualSales": StringAttribute, // Actual Sales Amount"]),
        "actualsalesBase": StringAttribute, // Shows the value of the actual sales in the base currency."]),
        "actualStart": StringAttribute, // Enter the actual start time of the project task."]),
        "aggregationDirection": StringAttribute, // Shows whether the aggregation is happening upstream or downstream."]),
        "aggregationDirection_display": StringAttribute, //
        "assignedResources": StringAttribute, // Type the project team members that are assigned to task."]),
        "assignedTeamMembers": StringAttribute, // Select the project team member that has been assigned to a task."]),
        "autoScheduling": StringAttribute, // Shows whether auto scheduling was used for this task."]),
        "costEstimateContour": StringAttribute, // The cost estimate contour for the task"]),
        "duration": StringAttribute, // Shows the duration in days for the task."]),
        "effort": StringAttribute, // Shows the effort hours required for the task."]),
        "effortContour": StringAttribute, // The effort distribution"]),
        "effortEstimateAtComplete": StringAttribute, // Shows the forecast of total effort to complete the task."]),
        "isLineTask": BooleanAttribute, // Shows whether the task is a line task"]),
        "isMilestone": BooleanAttribute, // Show whether this task is a milestone."]),
        "MSProjectClientId": UUIDAttribute, // The id of the project task in MS Project Client."]),
        "numberOfResources": StringAttribute, // Shows the number of resources that are estimated for the task. This is not the number of resources assigned to the task."]),
        "parentTask": StringAttribute, // Select the summary or parent task in the hierarchy that contains a child task."]),
        "plannedCost": StringAttribute, // Enter the value of the cost the service provider will incur based on the estimated work and cost rates in the pricelist."]),
        "plannedCostBase": StringAttribute, // Enter the value of cost estimated in base currency."]),
        "plannedSales": StringAttribute, // Planned Sales Amount"]),
        "plannedSalesBase": StringAttribute, // Shows the value of the planned sales in the base currency."]),
        "pluginProcessingData": StringAttribute, // Processing data for the plugin pipeline"]),
        "progress": StringAttribute, // Enter the percentage indicating work completed."]),
        "project": StringAttribute, // Select the project name."]),
        "remainingCost": StringAttribute, // Enter the cost left over that can be consumed for future work."]),
        "remainingCostBase": StringAttribute, // Shows the value of the remaining cost in the base currency."]),
        "remainingHours": StringAttribute, // Shows the hours remaining to complete the task."]),
        "remainingSales": StringAttribute, // Remaining Sales Amount"]),
        "remainingSalesBase": StringAttribute, // Shows the value of the remaining sales in the base currency."]),
        "requestedHours": StringAttribute, // Shows the hours assigned by generic resource."]),
        "resourceCategory": StringAttribute, // Select the resource role for the task."]),
        "resourceOrganizationalUnitId": UUIDAttribute, // Select the organizational unit of the resource who should perform the work."]),
        "resourceUtilization": StringAttribute, // Shows the utilization units for a resource that is assigned to a project task"]),
        "salesEstimateContour": StringAttribute, // The sales estimate contour"]),
        "scheduledDurationMinutes": StringAttribute, // Shows the scheduled duration of the project task, specified in minutes."]),
        "dueDate": DateAttribute, // Enter the scheduled end time of the project."]),
        "scheduledHours": StringAttribute, // Shows the scheduled hours for the task."]),
        "scheduleStartDate": DateAttribute, // Enter the scheduled start time of the project task."]),
        "scheduleVariance": StringAttribute, // Shows the variance between the estimated work and the forecasted work based on the estimate at completion (EAC)."]),
        "skipUpdateEstimateLine": StringAttribute, // Internal flag to avoid the update process on the estimate lines of the project task"]),
        "transactionCategory": StringAttribute, // Select the transaction category for the task."]),
        "WBSId": UUIDAttribute, // Shows the ID of the task in the work breakdown structure (WBS)."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Unique identifier of the Stage."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "costAtCompleteEstimate": StringAttribute, // Enter the forecast of the total cost to complete the task."]),
        "costAtCompleteEstimateBase": StringAttribute, // Value of the Cost estimate at complete (EAC) in base currency."]),
        "costConsumptionPercentage": PercentageAttribute, // Enter the consumption of the total cost in percentage."]),
        "salesConsumptionPercentage": PercentageAttribute, // Shows the sales consumption percentage for this task."]),
        "salesEstimateAtComplete": StringAttribute, // Shows the sales estimate at the completion of this task."]),
        "salesEstimateAtCompleteBase": StringAttribute, // Value of the Sales Estimate At Complete (EAC) in base currency."]),
        "salesVariance": StringAttribute, // Shows the sales variance for this task."]),
        "salesVarianceBase": StringAttribute, // Shows the value of the sales variance in the base currency."]),
        "varianceOfCost": StringAttribute, // Enter the variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
        "varianceOfCostBase": StringAttribute, // Shows the value of the cost variance in the base currency."]),
      ])
      .registerPath("project_tasks");
  }
}
mixin(EntityCalls!("PRJTask"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJTask);
  
  auto entity = PRJTask;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}