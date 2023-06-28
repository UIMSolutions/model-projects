module models.projects.entities.invoices.proposals.hour;

import models.projects;

@safe:
class DProjectInvoiceProposalHourEntity : DEntity {
  mixin(EntityThis!("ProjectInvoiceProposalHourEntity"));

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
        "backingTable_ProjProposalEmplRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_invoice.proposal.hours");
  }
}
mixin(EntityCalls!("ProjectInvoiceProposalHourEntity"));

version(test_model_portals) { unittest {
    assert(ProjectInvoiceProposalHourEntity);
  
  auto entity = ProjectInvoiceProposalHourEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}