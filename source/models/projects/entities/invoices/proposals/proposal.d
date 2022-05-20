module models.projects.entities.invoices.proposals.proposal;


@safe:
import models.projects;

class DProjectInvoiceProposalEntity : DOOPEntity {
  mixin(EntityThis!("ProjectInvoiceProposalEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "SalesCurrency": StringAttribute, //
        "FundingSource": StringAttribute, //
        "InvoiceDate": StringAttribute, //
        "Invoice": StringAttribute, //
        "ProjectContractId": StringAttribute, //
        "InvoiceProposalId": StringAttribute, //
        "InvoiceHeaderText": StringAttribute, //
        "FundingSource_ContractId": StringAttribute, //
        "FundingSourceId": StringAttribute, //
        "ContractName": StringAttribute, //
        "InvoiceFormat": StringAttribute, //
        "DeliveryTransportBrand": StringAttribute, //
        "FiscalDocumentTypeRecId": StringAttribute, //
        "FiscalEstablishmentRecId": StringAttribute, //
        "BillOfLadingFreightChargeTerms": StringAttribute, //
        "ServiceFiscalInformationCode": StringAttribute, //
        "DeliveryVehicleLicensePlateNumber": StringAttribute, //
        "DeliveryVehicleLicensePlateState": StringAttribute, //
        "VolumeQuantity": StringAttribute, //
        "VolumeType": StringAttribute, //
        "FiscalDocumentTypeId": StringAttribute, //
        "FiscalEstablishmentId": StringAttribute, //
        "backingTable_ProjProposalJourRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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