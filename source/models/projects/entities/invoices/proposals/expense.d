module models.projects.entities.invoices.proposals.expense;

import models.projects;

@safe:
class DProjectInvoiceProposalExpenseEntity : DEntity {
  mixin(EntityThis!("ProjectInvoiceProposalExpenseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "invoiceProposalId": UUIDAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "projectTransactionId": UUIDAttribute, //
        "description": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectDate": DateAttribute, //
        "projectLineProperty": StringAttribute, //
        "projectCategoryId": UUIDAttribute, //
        "quantity": StringAttribute, //
        "activityNumber": StringAttribute, //
        "resource": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "salesPrice": StringAttribute, //
        "lineAmount": StringAttribute, //
        "lineNumber": StringAttribute, //
        "includedTaxPercentage": StringAttribute, //
        "backingTable_ProjProposalCostRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_invoiceproposals");
  }
}
mixin(EntityCalls!("ProjectInvoiceProposalExpenseEntity"));

version(test_model_portals) { unittest {
    assert(ProjectInvoiceProposalExpenseEntity);
  
  auto entity = ProjectInvoiceProposalExpenseEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}