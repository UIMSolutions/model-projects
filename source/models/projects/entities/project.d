module models.projects.entities.project;

@safe:
import models.projects;

class DProjectEntity : DOOPEntity {
  mixin(EntityThis!("ProjectEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectId": StringAttribute, //
        "alternateProjectId": StringAttribute, //
        "bankDocumentType": StringAttribute, //
        "isCertifiedPayroll": StringAttribute, //
        "canVerifyCostAgainstRemainingForecast": StringAttribute, //
        "zakatContractAmendment": StringAttribute, //
        "zakatContractDate": StringAttribute, //
        "zakatContractPeriod": StringAttribute, //
        "zakatProjectValue": StringAttribute, //
        "dateOfCreation": StringAttribute, //
        "customerAccountNumber": StringAttribute, //
        "defaultLedgerDimension": StringAttribute, //
        "deliveryLocation": StringAttribute, //
        "deliveryName": StringAttribute, //
        "email": StringAttribute, //
        "actualEndDate": StringAttribute, //
        "extensionDate": StringAttribute, //
        "subprojectIdFormat": StringAttribute, //
        "isHeader": StringAttribute, //
        "jobIdentification": StringAttribute, //
        "projectName": StringAttribute, //
        "isOCIPWorkerCompensation": StringAttribute, //
        "isOCIPGeneralLiability": StringAttribute, //
        "parentProjectId": StringAttribute, //
        "transactionTypesControlled": StringAttribute, //
        "budgetControlInterval": StringAttribute, //
        "projectBudgetManagement": StringAttribute, //
        "budgetOverrunDefault": StringAttribute, //
        "allowNegativeBudgetsToBeCarriedForward": StringAttribute, //
        "canCarryForwardRemainingBudgets": StringAttribute, //
        "projectedEndDate": StringAttribute, //
        "projectedStartDate": StringAttribute, //
        "projectGroupId": StringAttribute, //
        "projectContractId": StringAttribute, //
        "ledgerPostingSortPriority": StringAttribute, //
        "linePropertySearchPriority": StringAttribute, //
        "salesPriceGroupId": StringAttribute, //
        "schedulingCalendarId": StringAttribute, //
        "scheduleDurationInDays": StringAttribute, //
        "totalPlannedEffortInHours": StringAttribute, //
        "scheduleEndDate": StringAttribute, //
        "isResourceCalendarIgnored": StringAttribute, //
        "scheduleStartDate": StringAttribute, //
        "isActivityRequiredForExpenseForecast": StringAttribute, //
        "isActivityRequiredForExpenseTransaction": StringAttribute, //
        "isActivityRequiredForHourForecast": StringAttribute, //
        "isActivityRequiredForHourTransaction": StringAttribute, //
        "isActivityRequiredForItemForecast": StringAttribute, //
        "isActivityRequiredForItemTransaction": StringAttribute, //
        "actualStartDate": StringAttribute, //
        "projectStage": StringAttribute, //
        "zakatSubject": StringAttribute, //
        "salesTaxGroupId": StringAttribute, //
        "isProjectTemplate": StringAttribute, //
        "postingLevel": StringAttribute, //
        "canUseAlternateProjectBudget": StringAttribute, //
        "isBudgetControlEnabled": StringAttribute, //
        "csProjectCategoryValidationEnabled": StringAttribute, //
        "estimateProjectId": StringAttribute, //
        "architectRecId": StringAttribute, //
        "projectManagerRecId": StringAttribute, //
        "projectControllerRecId": StringAttribute, //
        "salesManagerRecId": StringAttribute, //
        "description": StringAttribute, //
        "isTemplateApplied": StringAttribute, //
        "deliveryAddressLocationId": StringAttribute, //
        "architectPersonnelNumber": StringAttribute, //
        "projectControllerPersonnelNumber": StringAttribute, //
        "projectManagerPersonnelNumber": StringAttribute, //
        "salesManagerPersonnelNumber": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "sortingField1": StringAttribute, //
        "sortingField2": StringAttribute, //
        "sortingField3": StringAttribute, //
        "integrationSourceDataId": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "backingTable_ProjTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_projects");
  }
}
mixin(EntityCalls!("ProjectEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectEntity);
  
  auto entity = ProjectEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}