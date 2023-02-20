module models.projects.entities.project;

@safe:
import models.projects;

class DProjectEntity : DOOPEntity {
  mixin(EntityThis!("ProjectEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectId": UUIDAttribute, //
        "alternateProjectId": UUIDAttribute, //
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
        "parentProjectId": UUIDAttribute, //
        "transactionTypesControlled": StringAttribute, //
        "budgetControlInterval": StringAttribute, //
        "projectBudgetManagement": StringAttribute, //
        "budgetOverrunDefault": StringAttribute, //
        "allowNegativeBudgetsToBeCarriedForward": StringAttribute, //
        "canCarryForwardRemainingBudgets": StringAttribute, //
        "projectedEndDate": StringAttribute, //
        "projectedStartDate": StringAttribute, //
        "projectGroupId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "ledgerPostingSortPriority": StringAttribute, //
        "linePropertySearchPriority": StringAttribute, //
        "salesPriceGroupId": UUIDAttribute, //
        "schedulingCalendarId": UUIDAttribute, //
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
        "salesTaxGroupId": UUIDAttribute, //
        "isProjectTemplate": StringAttribute, //
        "postingLevel": StringAttribute, //
        "canUseAlternateProjectBudget": StringAttribute, //
        "isBudgetControlEnabled": StringAttribute, //
        "csProjectCategoryValidationEnabled": StringAttribute, //
        "estimateProjectId": UUIDAttribute, //
        "architectRecId": UUIDAttribute, //
        "projectManagerRecId": UUIDAttribute, //
        "projectControllerRecId": UUIDAttribute, //
        "salesManagerRecId": UUIDAttribute, //
        "description": StringAttribute, //
        "isTemplateApplied": StringAttribute, //
        "deliveryAddressLocationId": UUIDAttribute, //
        "architectPersonnelNumber": StringAttribute, //
        "projectControllerPersonnelNumber": StringAttribute, //
        "projectManagerPersonnelNumber": StringAttribute, //
        "salesManagerPersonnelNumber": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "sortingField1": StringAttribute, //
        "sortingField2": StringAttribute, //
        "sortingField3": StringAttribute, //
        "integrationSourceDataId": UUIDAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "backingTable_ProjTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_projects");
  }
}
mixin(EntityCalls!("ProjectEntity"));

version(test_model_portals) { unittest {
    assert(ProjectEntity);
  
  auto entity = ProjectEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}