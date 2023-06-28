module models.projects.entities.invoices.proposals.proposal;


import models.projects;

@safe:
class DProjectInvoiceProposalEntity : DEntity {
  mixin(EntityThis!("ProjectInvoiceProposalEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "salesCurrency": StringAttribute, //
        "fundingSource": StringAttribute, //
        "invoiceDate": DateAttribute, //
        "invoice": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "invoiceProposalId": UUIDAttribute, //
        "invoiceHeaderText": StringAttribute, //
        "fundingSource_ContractId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "contractName": StringAttribute, //
        "invoiceFormat": StringAttribute, //
        "deliveryTransportBrand": StringAttribute, //
        "fiscalDocumentTypeRecId": UUIDAttribute, //
        "fiscalEstablishmentRecId": UUIDAttribute, //
        "billOfLadingFreightChargeTerms": StringAttribute, //
        "serviceFiscalInformationCode": StringAttribute, //
        "deliveryVehicleLicensePlateNumber": StringAttribute, //
        "deliveryVehicleLicensePlateState": StringAttribute, //
        "volumeQuantity": StringAttribute, //
        "volumeType": StringAttribute, //
        "fiscalDocumentTypeId": UUIDAttribute, //
        "fiscalEstablishmentId": UUIDAttribute, //
        "backingTable_ProjProposalJourRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_invoice.proposals");
  }
}
mixin(EntityCalls!("ProjectInvoiceProposalEntity"));

version(test_model_portals) { unittest {
    assert(ProjectInvoiceProposalEntity);
  
  auto entity = ProjectInvoiceProposalEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}