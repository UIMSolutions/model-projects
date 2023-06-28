module models.projects.entities.contracts.line;

import models.projects;

@safe:
class DProjectContractLineEntity : DEntity {
  mixin(EntityThis!("ProjectContractLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "changeOrderNumber": StringAttribute, //
        "contractLineId": UUIDAttribute, //
        "defaultLedgerDimension": StringAttribute, //
        "feeCategoryId": UUIDAttribute, //
        "feePercentage": StringAttribute, //
        "feeProjectId": UUIDAttribute, //
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
        "projectContractId": UUIDAttribute, //
        "retainagePercentage": StringAttribute, //
        "customerRetentionTermId": UUIDAttribute, //
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
        "projInvoiceProjId": UUIDAttribute, //
        "lineProjectId": UUIDAttribute, //
        "relationship_DefaultDimensionDimensionSetRelationshipId": UUIDAttribute, //
        "backingTable_PSAContractLineItemsRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_contracts.lines");
  }
}
mixin(EntityCalls!("ProjectContractLineEntity"));

version(test_model_portals) { unittest {
    assert(ProjectContractLineEntity);
  
  auto entity = ProjectContractLineEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}