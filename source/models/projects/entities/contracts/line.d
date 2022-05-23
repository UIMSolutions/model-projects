module models.projects.entities.contracts.line;

@safe:
import models.projects;

class DProjectContractLineEntity : DOOPEntity {
  mixin(EntityThis!("ProjectContractLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "changeOrderNumber": StringAttribute, //
        "contractLineId": StringAttribute, //
        "defaultLedgerDimension": StringAttribute, //
        "feeCategoryId": StringAttribute, //
        "feePercentage": StringAttribute, //
        "feeProjectId": StringAttribute, //
        "isIndirectCostIncluded": StringAttribute, //
        "description": StringAttribute, //
        "lineType": StringAttribute, //
        "billingMethod": StringAttribute, //
        "areHourTransactionsIncluded": StringAttribute, //
        "areExpenseTransactionsIncluded": StringAttribute, //
        "areFeeTransactionsIncluded": StringAttribute, //
        "areItemTransactionsIncluded": StringAttribute, //
        "lineAmount": StringAttribute, //
        "paidAmount": StringAttribute, //
        "budgetMethod": StringAttribute, //
        "projectContractId": StringAttribute, //
        "retainagePercentage": StringAttribute, //
        "customerRetentionTermId": StringAttribute, //
        "salesTaxGroupCode": StringAttribute, //
        "vatCommodityCode": StringAttribute, //
        "unitPrice": StringAttribute, //
        "quantity": StringAttribute, //
        "unitSymbol": StringAttribute, //
        "assessableValue": StringAttribute, //
        "maximumRetailPrice": StringAttribute, //
        "tcsGroupCode": StringAttribute, //
        "tdsGroupCode": StringAttribute, //
        "defaultLedgerDimensionDisplayValue": StringAttribute, //
        "lineSequenceNumber": StringAttribute, //
        "projInvoiceProjId": StringAttribute, //
        "lineProjectId": StringAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "backingTable_PSAContractLineItemsRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_contracts.lines");
  }
}
mixin(EntityCalls!("ProjectContractLineEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectContractLineEntity);
  
  auto entity = ProjectContractLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}