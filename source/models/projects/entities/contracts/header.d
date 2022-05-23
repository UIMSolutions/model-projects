module models.projects.entities.contracts.header;

@safe:
import models.projects;

class DProjectContractHeaderEntity : DOOPEntity {
  mixin(EntityThis!("ProjectContractHeaderEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "bankAccountId": StringAttribute, //
        "centralBankPurposeCode": StringAttribute, //
        "centralBankPurposeText": StringAttribute, //
        "cashDiscountCode": StringAttribute, //
        "salesCurrencyCode": StringAttribute, //
        "customerRequisitionNumber": StringAttribute, //
        "customersOrderReference": StringAttribute, //
        "defaultLedgerDimension": StringAttribute, //
        "name": StringAttribute, //
        "eInvoiceDimensionAccountCode": StringAttribute, //
        "isEInvoiceDimensionAccountCodeSpecifiedPerLine": StringAttribute, //
        "invoiceFrequency": StringAttribute, //
        "giroTypeProjInvoice": StringAttribute, //
        "individualBufferDays": StringAttribute, //
        "intrastatAdditionalValue": StringAttribute, //
        "listCode": StringAttribute, //
        "termsOfPayment": StringAttribute, //
        "paymentScheduleName": StringAttribute, //
        "customerPostingProfileId": StringAttribute, //
        "netPrice": StringAttribute, //
        "projectContractId": StringAttribute, //
        "isContractSalesCurrencyCodeLocked": StringAttribute, //
        "priceCustomerGroupCode": StringAttribute, //
        "salesResponsibleRecId": StringAttribute, //
        "salesTaxGroupCode": StringAttribute, //
        "isServiceDeliveryAddressBased": StringAttribute, //
        "intrastatTransactionCode": StringAttribute, //
        "salesResponsiblePersonnelNumber": StringAttribute, //
        "integrationSourceDataId": StringAttribute, //
        "defaultLedgerDimensionDisplayValue": StringAttribute, //
        "customerAccountNumber": StringAttribute, //
        "backingTable_ProjInvoiceTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_contracts.headers");
  }
}
mixin(EntityCalls!("ProjectContractHeaderEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectContractHeaderEntity);
  
  auto entity = ProjectContractHeaderEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}