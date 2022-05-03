module models.projects.entities.tasks.task;

@safe:
import models.projects;

// Tasks related to project.
class DPRJTask : DOOPEntity {
  mixin(EntityThis!("PRJTask"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "stateCode": IntegerAttributeClass, // Status of the Project Task"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project Task"]),
        "statusCode_display": StringAttributeClass, //
        "projectTaskName": StringAttributeClass, // Type the name of the custom entity."]),
        "actualCost": StringAttributeClass, // Enter the value of the actual cost consumed based on work reported to be completed on the task."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCostBase": StringAttributeClass, // Value of the Actual Cost in base currency."]),
        "actualDuration": StringAttributeClass, // Shows the actual duration of the project task in days"]),
        "actualEffort": StringAttributeClass, // Shows the hours submitted against the task."]),
        "actualEndDateTime": DatetimeAttributeClass, // Enter the actual end time of the project task."]),
        "actualSales": StringAttributeClass, // Actual Sales Amount"]),
        "actualsalesBase": StringAttributeClass, // Shows the value of the actual sales in the base currency."]),
        "actualStart": StringAttributeClass, // Enter the actual start time of the project task."]),
        "aggregationDirection": StringAttributeClass, // Shows whether the aggregation is happening upstream or downstream."]),
        "aggregationDirection_display": StringAttributeClass, //
        "assignedResources": StringAttributeClass, // Type the project team members that are assigned to task."]),
        "assignedTeamMembers": StringAttributeClass, // Select the project team member that has been assigned to a task."]),
        "autoScheduling": StringAttributeClass, // Shows whether auto scheduling was used for this task."]),
        "costEstimateContour": StringAttributeClass, // The cost estimate contour for the task"]),
        "duration": StringAttributeClass, // Shows the duration in days for the task."]),
        "effort": StringAttributeClass, // Shows the effort hours required for the task."]),
        "effortContour": StringAttributeClass, // The effort distribution"]),
        "effortEstimateAtComplete": StringAttributeClass, // Shows the forecast of total effort to complete the task."]),
        "isLineTask": BooleanAttributeClass, // Shows whether the task is a line task"]),
        "isMilestone": BooleanAttributeClass, // Show whether this task is a milestone."]),
        "MSProjectClientId": UUIDAttributeClass, // The id of the project task in MS Project Client."]),
        "numberOfResources": StringAttributeClass, // Shows the number of resources that are estimated for the task. This is not the number of resources assigned to the task."]),
        "parentTask": StringAttributeClass, // Select the summary or parent task in the hierarchy that contains a child task."]),
        "plannedCost": StringAttributeClass, // Enter the value of the cost the service provider will incur based on the estimated work and cost rates in the pricelist."]),
        "plannedCostBase": StringAttributeClass, // Enter the value of cost estimated in base currency."]),
        "plannedSales": StringAttributeClass, // Planned Sales Amount"]),
        "plannedSalesBase": StringAttributeClass, // Shows the value of the planned sales in the base currency."]),
        "pluginProcessingData": StringAttributeClass, // Processing data for the plugin pipeline"]),
        "progress": StringAttributeClass, // Enter the percentage indicating work completed."]),
        "project": StringAttributeClass, // Select the project name."]),
        "remainingCost": StringAttributeClass, // Enter the cost left over that can be consumed for future work."]),
        "remainingCostBase": StringAttributeClass, // Shows the value of the remaining cost in the base currency."]),
        "remainingHours": StringAttributeClass, // Shows the hours remaining to complete the task."]),
        "remainingSales": StringAttributeClass, // Remaining Sales Amount"]),
        "remainingSalesBase": StringAttributeClass, // Shows the value of the remaining sales in the base currency."]),
        "requestedHours": StringAttributeClass, // Shows the hours assigned by generic resource."]),
        "resourceCategory": StringAttributeClass, // Select the resource role for the task."]),
        "resourceOrganizationalUnitId": UUIDAttributeClass, // Select the organizational unit of the resource who should perform the work."]),
        "resourceUtilization": StringAttributeClass, // Shows the utilization units for a resource that is assigned to a project task"]),
        "salesEstimateContour": StringAttributeClass, // The sales estimate contour"]),
        "scheduledDurationMinutes": StringAttributeClass, // Shows the scheduled duration of the project task, specified in minutes."]),
        "dueDate": DateAttributeClass, // Enter the scheduled end time of the project."]),
        "scheduledHours": StringAttributeClass, // Shows the scheduled hours for the task."]),
        "scheduleStartDate": DateAttributeClass, // Enter the scheduled start time of the project task."]),
        "scheduleVariance": StringAttributeClass, // Shows the variance between the estimated work and the forecasted work based on the estimate at completion (EAC)."]),
        "skipUpdateEstimateLine": StringAttributeClass, // Internal flag to avoid the update process on the estimate lines of the project task"]),
        "transactionCategory": StringAttributeClass, // Select the transaction category for the task."]),
        "WBSId": UUIDAttributeClass, // Shows the ID of the task in the work breakdown structure (WBS)."]),
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Unique identifier of the Stage."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "costAtCompleteEstimate": StringAttributeClass, // Enter the forecast of the total cost to complete the task."]),
        "costAtCompleteEstimateBase": StringAttributeClass, // Value of the Cost estimate at complete (EAC) in base currency."]),
        "costConsumptionPercentage": OOPAttributePercentage.descriptions(["en":"Enter the consumption of the total cost in percentage."]),
        "salesConsumptionPercentage": OOPAttributePercentage.descriptions(["en":"Shows the sales consumption percentage for this task."]),
        "salesEstimateAtComplete": StringAttributeClass, // Shows the sales estimate at the completion of this task."]),
        "salesEstimateAtCompleteBase": StringAttributeClass, // Value of the Sales Estimate At Complete (EAC) in base currency."]),
        "salesVariance": StringAttributeClass, // Shows the sales variance for this task."]),
        "salesVarianceBase": StringAttributeClass, // Shows the value of the sales variance in the base currency."]),
        "varianceOfCost": StringAttributeClass, // Enter the variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
        "varianceOfCostBase": StringAttributeClass, // Shows the value of the cost variance in the base currency."]),
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