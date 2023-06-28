module models.projects.entities.parameter;

import models.projects;

@safe:
class DProjectParameterEntity : DEntity {
  mixin(EntityThis!("ProjectParameterEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "itemLumpSumAllocationKey": StringAttribute, //
        "termsOfPaymentForHours": StringAttribute, //
        "actualCostAfterEstimateDate": DateAttribute, //
        "committedCostAfterEstimateDate": DateAttribute, //
        "committedCostUpToEstimateDate": DateAttribute, //
        "isAutoupdateField": StringAttribute, //
        "isBudgetControlOutsideTheProjectHierarchyAllowed": StringAttribute, //
        "isDateCorrectionsOnTimesheetsAllowed": StringAttribute, //
        "isEliminationWithoutPostingEstimatesAllowed": StringAttribute, //
        "canAlwaysCreateAdjustmentTransaction": StringAttribute, //
        "amountInMillions": StringAttribute, //
        "amountInThousands": StringAttribute, //
        "isActive": StringAttribute, //
        "userGroup": StringAttribute, //
        "isItemConsumption": StringAttribute, //
        "beginningBalances": StringAttribute, //
        "committedCost": StringAttribute, //
        "billingRuleFeeJournal": StringAttribute, //
        "defaultCategoryExpense": StringAttribute, //
        "defaultCostTemplate": StringAttribute, //
        "isCreateItemRequirement": StringAttribute, //
        "creditLineError": StringAttribute, //
        "setTheCostPriceAsTheSalesPriceByDefault": StringAttribute, //
        "defaultItemAllocationKey": StringAttribute, //
        "defaultCategory": StringAttribute, //
        "defaultSubprojectIDFormat": StringAttribute, //
        "displayTransactions": StringAttribute, //
        "defaultProjectType": StringAttribute, //
        "eliminated": StringAttribute, //
        "defaultCategoryHour": StringAttribute, //
        "defaultJournalNamesHour": StringAttribute, //
        "checkBudgetOnDocumentLineSave": StringAttribute, //
        "isIntercompanyResourceSchedulingAndTimesheetsEnabled": StringAttribute, //
        "isProcessingInvoiceProposalsInWorkflowEnabled": StringAttribute, //
        "estimated": StringAttribute, //
        "expenseDeleteReducedToZero": StringAttribute, //
        "expenseJournalNameId": UUIDAttribute, //
        "expenseLumpSumAllocationKey": StringAttribute, //
        "expenseReduceCostPriority1": StringAttribute, //
        "expenseReduceCostPriority2": StringAttribute, //
        "expenseReduceCostPriority3": StringAttribute, //
        "expenseReduceCostPriority4": StringAttribute, //
        "expenseReduceCostPriority5": StringAttribute, //
        "minimumRequirement": StringAttribute, //
        "generalBufferDays": StringAttribute, //
        "termsOfPaymentForExpenses": StringAttribute, //
        "termsOfPaymentForItems": StringAttribute, //
        "isAllocationSettingsLocked": StringAttribute, //
        "applyPrioritySettingsFirstOrLastInFundingAllocationOrder": StringAttribute, //
        "grossMarginDecimals": StringAttribute, //
        "grossMarginRatio": StringAttribute, //
        "hideActivity": StringAttribute, //
        "hideCategory": StringAttribute, //
        "hideExternalComments": StringAttribute, //
        "hideLineProperty": StringAttribute, //
        "hourDeleteReducedToZero": StringAttribute, //
        "hourQtyDecimals": StringAttribute, //
        "hourReduceCostPriority1": StringAttribute, //
        "hourReduceCostPriority2": StringAttribute, //
        "hourReduceCostPriority3": StringAttribute, //
        "hourReduceCostPriority4": StringAttribute, //
        "hourReduceCostPriority5": StringAttribute, //
        "hourReducedMinimumRequirement": StringAttribute, //
        "defaultJournalNameItem": StringAttribute, //
        "invoiced": StringAttribute, //
        "invoiceProposal": StringAttribute, //
        "defaultCategoryItem": StringAttribute, //
        "itemDeleteReducedToZero": StringAttribute, //
        "itemNeverLedgerConsum": StringAttribute, //
        "isItemNeverLedgerPL": StringAttribute, //
        "itemReduceCostPriority1": StringAttribute, //
        "itemReduceCostPriority2": StringAttribute, //
        "itemReduceCostPriority3": StringAttribute, //
        "itemReduceCostPriority4": StringAttribute, //
        "itemReduceCostPriority5": StringAttribute, //
        "itemMinimumRequirement": StringAttribute, //
        "Id": UUIDAttribute, //
        "accrueRevenue": StringAttribute, //
        "adjustment": StringAttribute, //
        "estimate": StringAttribute, //
        "invoice": StringAttribute, //
        "postCosts": StringAttribute, //
        "subscription": StringAttribute, //
        "approvedTimesheetPosting": StringAttribute, //
        "maximumNumberOfTimesheetsPerPeriod": StringAttribute, //
        "methodOfPayment": StringAttribute, //
        "minimumTimeIncrement": StringAttribute, //
        "missingTimesheetsEmailId": UUIDAttribute, //
        "forecastModel": StringAttribute, //
        "folderForMicrosoftProjectFiles": StringAttribute, //
        "saveMicrosoftProjectFilesTo": StringAttribute, //
        "isPaymentCriteria": StringAttribute, //
        "originalBudget": StringAttribute, //
        "defaultPostingLevel": StringAttribute, //
        "posted": StringAttribute, //
        "postingMethod": StringAttribute, //
        "transactionTypesControlled": StringAttribute, //
        "budgetControlInterval": StringAttribute, //
        "projectBudgetManagement": StringAttribute, //
        "budgetOverrunDefault": StringAttribute, //
        "negativeBudgetsToBeCarriedForwardAllowed": StringAttribute, //
        "isCarryForwardRemainingBudgets": StringAttribute, //
        "costControlMethods": StringAttribute, //
        "setSubproductionToConsumed": StringAttribute, //
        "promptForCustomerInformation": StringAttribute, //
        "promptForCustomerInformationOnProject": StringAttribute, //
        "remainingBudget": StringAttribute, //
        "isActivityExpenseForecastRequired": StringAttribute, //
        "isActivityExpenseJournalRequired": StringAttribute, //
        "isActivityHourForecastRequired": StringAttribute, //
        "isActivityHourJournalRequired": StringAttribute, //
        "isActivityItemForecastRequired": StringAttribute, //
        "isActivityItemJournalRequired": StringAttribute, //
        "isStartStopTimeRequired": StringAttribute, //
        "defaultCategoryFee": StringAttribute, //
        "defaultJournalNamesFee": StringAttribute, //
        "hasFinishedProjects": StringAttribute, //
        "hasInactiveCategories": StringAttribute, //
        "hasTerminatedWorkers": StringAttribute, //
        "isHourCostInConsumptionStatementIncluded": StringAttribute, //
        "isHourQuantityInConsumptionStatementIncluded": StringAttribute, //
        "isHourCostInProfitLossStatementIncluded": StringAttribute, //
        "isHourQuantityInProfitLossStatementIncluded": StringAttribute, //
        "calculationDateType": StringAttribute, //
        "salesTaxGroupMethod": StringAttribute, //
        "itemSalesTaxGroupMethod": StringAttribute, //
        "taxItemGroupOnAcc": StringAttribute, //
        "timesheetJournal": StringAttribute, //
        "allowTimeRangeOverlap": StringAttribute, //
        "hasTimeRegistration": StringAttribute, //
        "absenceProject": StringAttribute, //
        "isTimesheetAuditTrailRequired": StringAttribute, //
        "isFutureTimesheetEntriesBlocked": StringAttribute, //
        "allowTimesheetChangeReason": StringAttribute, //
        "requireTimesheetChangeReason": StringAttribute, //
        "validateAbsence": StringAttribute, //
        "totalEstimatePostingTolerance": StringAttribute, //
        "totalBudget": StringAttribute, //
        "expenseReport": StringAttribute, //
        "hourJournal": StringAttribute, //
        "itemJournal": StringAttribute, //
        "itemRequirement": StringAttribute, //
        "production": StringAttribute, //
        "purchaseOrder": StringAttribute, //
        "purchaseRequisition": StringAttribute, //
        "salesOrder": StringAttribute, //
        "timesheets": StringAttribute, //
        "travelRequisition": StringAttribute, //
        "vendorInvoice": StringAttribute, //
        "afterEliminationDate": DateAttribute, //
        "beforeEliminationDate": DateAttribute, //
        "useAdjustmentDateAsNewProjectDate": DateAttribute, //
        "useBudgetControl": StringAttribute, //
        "useFavorites": StringAttribute, //
        "utilizationRate": StringAttribute, //
        "validationWorkerCategory": StringAttribute, //
        "validationWorkerProject": StringAttribute, //
        "validationProjectCategory": StringAttribute, //
        "valueAddedDecimals": StringAttribute, //
        "valueAddedDisplay": StringAttribute, //
        "setVoucherDateTo": StringAttribute, //
        "dayWeekStarts": StringAttribute, //
        "automaticallySetAccountingDateToOpenLedgerPeriod": StringAttribute, //
        "categoryHierarchy": StringAttribute, //
        "categoryName": StringAttribute, //
        "categoryHierarchyName": StringAttribute, //
        "timeMaterialBillable": StringAttribute, //
        "timeMaterialEfficiency": StringAttribute, //
        "fixedPriceBillable": StringAttribute, //
        "fixedPriceEfficiency": StringAttribute, //
        "investmentBillable": StringAttribute, //
        "investmentEfficiency": StringAttribute, //
        "internalCostBillable": StringAttribute, //
        "internalCostEfficiency": StringAttribute, //
        "timeProjectsBillable": StringAttribute, //
        "timeProjectsEfficiency": StringAttribute, //
        "capacityPlanningPlannedOrder": StringAttribute, //
        "capacityPlanningProduction": StringAttribute, //
        "defaultWorkingCalendar": StringAttribute, //
        "isHourSchedulingEnabled": StringAttribute, //
        "enableCancelSettledProjectInvoice": StringAttribute, //
        "isEnableAlternativeAccountForCancellation": StringAttribute, //
        "authorizedSignatory": StringAttribute, //
        "designationOfSignatory": StringAttribute, //
        "enableCancelSettledDebitNote": StringAttribute, //
        "isInvoicePrintingByCategory": StringAttribute, //
        "isInvoicePrintingByTransactionText": StringAttribute, //
        "isInvoicePrintingByEmployee": StringAttribute, //
        "isInvoicePrintingByInvoiceType": StringAttribute, //
        "isInvoicePrintingByLineSpecific": StringAttribute, //
        "cfopSameState": StringAttribute, //
        "cfopOtherState": StringAttribute, //
        "cfopOutsideCountryRegion": StringAttribute, //
        "cfopIdSameState": StringAttribute, //
        "cfopIdOtherState": StringAttribute, //
        "cfopIdOutsideCountryRegion": StringAttribute, //
        "isSplitInvoiceBasedOnServiceCode": StringAttribute, //
        "NoOneTimeCustomersForProjectContracts": StringAttribute, //
        "GeneralBudgetReservation": StringAttribute, //
        "timeServiceEnableService": StringAttribute, //
        "timeServiceEnableDefaultLineProperty": StringAttribute, //
        "timeServiceVisibilityActivity": StringAttribute, //
        "timeServiceVisibilityCategory": StringAttribute, //
        "timeServiceVisibilityCustomer": StringAttribute, //
        "timeServiceVisibilityExternalComment": StringAttribute, //
        "timeServiceVisibilityInternalComment": StringAttribute, //
        "timeServiceVisibilityItemSalesTaxGroup": StringAttribute, //
        "timeServiceVisibilityLineProperty": StringAttribute, //
        "timeServiceVisibilitySalesTaxGroup": StringAttribute, //
        "allowSalesOrdersForMultipleFundingSources": StringAttribute, //
        "backingTable_ProjParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_linepropertysetups");
  }
}
mixin(EntityCalls!("ProjectParameterEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}