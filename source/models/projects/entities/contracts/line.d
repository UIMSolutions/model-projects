module models.projects.entities.contracts.line;

@safe:
import models.projects;

class DProjectContractLineEntity : DOOPEntity {
  mixin(EntityThis!("ProjectContractLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ChangeOrderNumber": StringAttribute, //
        "ContractLineId": StringAttribute, //
        "DefaultLedgerDimension": StringAttribute, //
        "FeeCategoryId": StringAttribute, //
        "FeePercentage": StringAttribute, //
        "FeeProjectId": StringAttribute, //
        "IsIndirectCostIncluded": StringAttribute, //
        "Description": StringAttribute, //
        "LineType": StringAttribute, //
        "BillingMethod": StringAttribute, //
        "AreHourTransactionsIncluded": StringAttribute, //
        "AreExpenseTransactionsIncluded": StringAttribute, //
        "AreFeeTransactionsIncluded": StringAttribute, //
        "AreItemTransactionsIncluded": StringAttribute, //
        "LineAmount": StringAttribute, //
        "PaidAmount": StringAttribute, //
        "BudgetMethod": StringAttribute, //
        "ProjectContractId": StringAttribute, //
        "RetainagePercentage": StringAttribute, //
        "CustomerRetentionTermId": StringAttribute, //
        "SalesTaxGroupCode": StringAttribute, //
        "VATCommodityCode": StringAttribute, //
        "UnitPrice": StringAttribute, //
        "Quantity": StringAttribute, //
        "UnitSymbol": StringAttribute, //
        "AssessableValue": StringAttribute, //
        "MaximumRetailPrice": StringAttribute, //
        "TCSGroupCode": StringAttribute, //
        "TDSGroupCode": StringAttribute, //
        "DefaultLedgerDimensionDisplayValue": StringAttribute, //
        "LineSequenceNumber": StringAttribute, //
        "ProjInvoiceProjId": StringAttribute, //
        "LineProjectId": StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId": StringAttribute, //
        "BackingTable_PSAContractLineItemsRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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