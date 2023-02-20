module models.projects.entities.contracts.header;

@safe:
import models.projects;

class DProjectContractHeaderEntity : DOOPEntity {
  mixin(EntityThis!("ProjectContractHeaderEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "bankAccountId": UUIDAttribute, //
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
        "customerPostingProfileId": UUIDAttribute, //
        "netPrice": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "isContractSalesCurrencyCodeLocked": StringAttribute, //
        "priceCustomerGroupCode": StringAttribute, //
        "salesResponsibleRecId": UUIDAttribute, //
        "salesTaxGroupCode": StringAttribute, //
        "isServiceDeliveryAddressBased": StringAttribute, //
        "intrastatTransactionCode": StringAttribute, //
        "salesResponsiblePersonnelNumber": StringAttribute, //
        "integrationSourceDataId": UUIDAttribute, //
        "defaultLedgerDimensionDisplayValue": StringAttribute, //
        "customerAccountNumber": StringAttribute, //
        "backingTable_ProjInvoiceTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
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