module models.projects.entities.invoices.proposals.hour;

@safe:
import models.projects;

class DProjectInvoiceProposalHourEntity : DOOPEntity {
  mixin(EntityThis!("ProjectInvoiceProposalHourEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "invoiceProposalId": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "itemSalesTaxGroup": StringAttribute, //
        "projectTransactionId": StringAttribute, //
        "description": StringAttribute, //
        "projectId": StringAttribute, //
        "projectDate": StringAttribute, //
        "projectLineProperty": StringAttribute, //
        "projectCategoryId": StringAttribute, //
        "quantity": StringAttribute, //
        "activityNumber": StringAttribute, //
        "resource": StringAttribute, //
        "resourceId": StringAttribute, //
        "salesPrice": StringAttribute, //
        "lineAmount": StringAttribute, //
        "lineNumber": StringAttribute, //
        "includedTaxPercentage": StringAttribute, //
        "backingTable_ProjProposalEmplRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_invoice.proposal.hours");
  }
}
mixin(EntityCalls!("ProjectInvoiceProposalHourEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectInvoiceProposalHourEntity);
  
  auto entity = ProjectInvoiceProposalHourEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}