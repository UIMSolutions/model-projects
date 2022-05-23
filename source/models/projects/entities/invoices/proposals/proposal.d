module models.projects.entities.invoices.proposals.proposal;


@safe:
import models.projects;

class DProjectInvoiceProposalEntity : DOOPEntity {
  mixin(EntityThis!("ProjectInvoiceProposalEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "salesCurrency": StringAttribute, //
        "fundingSource": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "invoice": StringAttribute, //
        "projectContractId": StringAttribute, //
        "invoiceProposalId": StringAttribute, //
        "invoiceHeaderText": StringAttribute, //
        "fundingSource_ContractId": StringAttribute, //
        "fundingSourceId": StringAttribute, //
        "contractName": StringAttribute, //
        "invoiceFormat": StringAttribute, //
        "deliveryTransportBrand": StringAttribute, //
        "fiscalDocumentTypeRecId": StringAttribute, //
        "fiscalEstablishmentRecId": StringAttribute, //
        "billOfLadingFreightChargeTerms": StringAttribute, //
        "serviceFiscalInformationCode": StringAttribute, //
        "deliveryVehicleLicensePlateNumber": StringAttribute, //
        "deliveryVehicleLicensePlateState": StringAttribute, //
        "volumeQuantity": StringAttribute, //
        "volumeType": StringAttribute, //
        "fiscalDocumentTypeId": StringAttribute, //
        "fiscalEstablishmentId": StringAttribute, //
        "backingTable_ProjProposalJourRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_invoice.proposals");
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