module models.projects.entities.invoices.proposals.expense;

@safe:
import models.projects;

class DProjectInvoiceProposalEntity : DOOPEntity {
  mixin(EntityThis!("ProjectInvoiceProposalEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "InvoiceProposalId": StringAttribute, //
        "SalesTaxGroup": StringAttribute, //
        "ItemSalesTaxGroup": StringAttribute, //
        "ProjectTransactionId": StringAttribute, //
        "Description": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ProjectDate": StringAttribute, //
        "ProjectLineProperty": StringAttribute, //
        "ProjectCategoryId": StringAttribute, //
        "Quantity": StringAttribute, //
        "ActivityNumber": StringAttribute, //
        "Resource": StringAttribute, //
        "ResourceId": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "LineAmount": StringAttribute, //
        "LineNumber": StringAttribute, //
        "IncludedTaxPercentage": StringAttribute, //
        "BackingTable_ProjProposalCostRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_invoiceproposals");
  }
}
mixin(EntityCalls!("ProjectInvoiceProposalEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectInvoiceProposalEntity);
  
  auto entity = ProjectInvoiceProposalEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}