module models.projects.entities.tasks.task;

@safe:
import models.projects;

// Tasks related to project.
class DPRJTask : DOOPEntity {
  mixin(OOPEntityThis!("PRJTask"));
  
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
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Task"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Task"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "projectTaskName": OOPStringAttribute.descriptions(["en":"Type the name of the custom entity."]),
        "actualCost": OOPStringAttribute.descriptions(["en":"Enter the value of the actual cost consumed based on work reported to be completed on the task."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Shows the currency associated with the entity."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the exchange rate for the currency associated with the entity with respect to the base currency."]),
        "actualCostBase": OOPStringAttribute.descriptions(["en":"Value of the Actual Cost in base currency."]),
        "actualDuration": OOPStringAttribute.descriptions(["en":"Shows the actual duration of the project task in days"]),
        "actualEffort": OOPStringAttribute.descriptions(["en":"Shows the hours submitted against the task."]),
        "actualEndDateTime": OOPAttributeDatetime.descriptions(["en":"Enter the actual end time of the project task."]),
        "actualSales": OOPStringAttribute.descriptions(["en":"Actual Sales Amount"]),
        "actualsalesBase": OOPStringAttribute.descriptions(["en":"Shows the value of the actual sales in the base currency."]),
        "actualStart": OOPStringAttribute.descriptions(["en":"Enter the actual start time of the project task."]),
        "aggregationDirection": OOPStringAttribute.descriptions(["en":"Shows whether the aggregation is happening upstream or downstream."]),
        "aggregationDirection_display": OOPStringAttribute.descriptions(["en":""]),
        "assignedResources": OOPStringAttribute.descriptions(["en":"Type the project team members that are assigned to task."]),
        "assignedTeamMembers": OOPStringAttribute.descriptions(["en":"Select the project team member that has been assigned to a task."]),
        "autoScheduling": OOPStringAttribute.descriptions(["en":"Shows whether auto scheduling was used for this task."]),
        "costEstimateContour": OOPStringAttribute.descriptions(["en":"The cost estimate contour for the task"]),
        "duration": OOPStringAttribute.descriptions(["en":"Shows the duration in days for the task."]),
        "effort": OOPStringAttribute.descriptions(["en":"Shows the effort hours required for the task."]),
        "effortContour": OOPStringAttribute.descriptions(["en":"The effort distribution"]),
        "effortEstimateAtComplete": OOPStringAttribute.descriptions(["en":"Shows the forecast of total effort to complete the task."]),
        "isLineTask": OOPAttributeBoolean.descriptions(["en":"Shows whether the task is a line task"]),
        "isMilestone": OOPAttributeBoolean.descriptions(["en":"Show whether this task is a milestone."]),
        "MSProjectClientId": OOPAttributeUUID.descriptions(["en":"The id of the project task in MS Project Client."]),
        "numberOfResources": OOPStringAttribute.descriptions(["en":"Shows the number of resources that are estimated for the task. This is not the number of resources assigned to the task."]),
        "parentTask": OOPStringAttribute.descriptions(["en":"Select the summary or parent task in the hierarchy that contains a child task."]),
        "plannedCost": OOPStringAttribute.descriptions(["en":"Enter the value of the cost the service provider will incur based on the estimated work and cost rates in the pricelist."]),
        "plannedCostBase": OOPStringAttribute.descriptions(["en":"Enter the value of cost estimated in base currency."]),
        "plannedSales": OOPStringAttribute.descriptions(["en":"Planned Sales Amount"]),
        "plannedSalesBase": OOPStringAttribute.descriptions(["en":"Shows the value of the planned sales in the base currency."]),
        "pluginProcessingData": OOPStringAttribute.descriptions(["en":"Processing data for the plugin pipeline"]),
        "progress": OOPStringAttribute.descriptions(["en":"Enter the percentage indicating work completed."]),
        "project": OOPStringAttribute.descriptions(["en":"Select the project name."]),
        "remainingCost": OOPStringAttribute.descriptions(["en":"Enter the cost left over that can be consumed for future work."]),
        "remainingCostBase": OOPStringAttribute.descriptions(["en":"Shows the value of the remaining cost in the base currency."]),
        "remainingHours": OOPStringAttribute.descriptions(["en":"Shows the hours remaining to complete the task."]),
        "remainingSales": OOPStringAttribute.descriptions(["en":"Remaining Sales Amount"]),
        "remainingSalesBase": OOPStringAttribute.descriptions(["en":"Shows the value of the remaining sales in the base currency."]),
        "requestedHours": OOPStringAttribute.descriptions(["en":"Shows the hours assigned by generic resource."]),
        "resourceCategory": OOPStringAttribute.descriptions(["en":"Select the resource role for the task."]),
        "resourceOrganizationalUnitId": OOPAttributeUUID.descriptions(["en":"Select the organizational unit of the resource who should perform the work."]),
        "resourceUtilization": OOPStringAttribute.descriptions(["en":"Shows the utilization units for a resource that is assigned to a project task"]),
        "salesEstimateContour": OOPStringAttribute.descriptions(["en":"The sales estimate contour"]),
        "scheduledDurationMinutes": OOPStringAttribute.descriptions(["en":"Shows the scheduled duration of the project task, specified in minutes."]),
        "dueDate": OOPAttributeDate.descriptions(["en":"Enter the scheduled end time of the project."]),
        "scheduledHours": OOPStringAttribute.descriptions(["en":"Shows the scheduled hours for the task."]),
        "scheduleStartDate": OOPAttributeDate.descriptions(["en":"Enter the scheduled start time of the project task."]),
        "scheduleVariance": OOPStringAttribute.descriptions(["en":"Shows the variance between the estimated work and the forecasted work based on the estimate at completion (EAC)."]),
        "skipUpdateEstimateLine": OOPStringAttribute.descriptions(["en":"Internal flag to avoid the update process on the estimate lines of the project task"]),
        "transactionCategory": OOPStringAttribute.descriptions(["en":"Select the transaction category for the task."]),
        "WBSId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the task in the work breakdown structure (WBS)."]),
        "processId": OOPAttributeUUID.descriptions(["en":"Contains the id of the process associated with the entity."]),
        "stageId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Stage."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "costAtCompleteEstimate": OOPStringAttribute.descriptions(["en":"Enter the forecast of the total cost to complete the task."]),
        "costAtCompleteEstimateBase": OOPStringAttribute.descriptions(["en":"Value of the Cost estimate at complete (EAC) in base currency."]),
        "costConsumptionPercentage": OOPAttributePercentage.descriptions(["en":"Enter the consumption of the total cost in percentage."]),
        "salesConsumptionPercentage": OOPAttributePercentage.descriptions(["en":"Shows the sales consumption percentage for this task."]),
        "salesEstimateAtComplete": OOPStringAttribute.descriptions(["en":"Shows the sales estimate at the completion of this task."]),
        "salesEstimateAtCompleteBase": OOPStringAttribute.descriptions(["en":"Value of the Sales Estimate At Complete (EAC) in base currency."]),
        "salesVariance": OOPStringAttribute.descriptions(["en":"Shows the sales variance for this task."]),
        "salesVarianceBase": OOPStringAttribute.descriptions(["en":"Shows the value of the sales variance in the base currency."]),
        "varianceOfCost": OOPStringAttribute.descriptions(["en":"Enter the variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC)."]),
        "varianceOfCostBase": OOPStringAttribute.descriptions(["en":"Shows the value of the cost variance in the base currency."]),
      ])
      .registerPath("project_tasks");
  }
}
mixin(OOPEntityCalls!("PRJTask"));

unittest {
  version(uim_entities) {
    assert(PRJTask);
  
  auto entity = PRJTask;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}