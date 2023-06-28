module models.projects.entities.contract;

import models.projects;

@safe:
class DProjectContractEntity : DEntity {
  mixin(EntityThis!("ProjectContractEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "bankAccount": StringAttribute, //
        "centralBankPurposeCode": StringAttribute, //
        "purposeText": StringAttribute, //
        "name": StringAttribute, //
        "invoiceFrequency": StringAttribute, //
        "listCodeId": UUIDAttribute, //
        "minimumTimeIncrement": StringAttribute, //
        "invoicingName": StringAttribute, //
        "netPrice": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "lockContractSalesCurrency": StringAttribute, //
        "priceGroup": StringAttribute, //
        "contractDate": DateAttribute, //
        "contractLines": StringAttribute, //
        "progressInvoicing": StringAttribute, //
        "retainagePercent": StringAttribute, //
        "customerRetentionTermId": UUIDAttribute, //
        "salesResponsible": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "serviceOnDeliveryAddress": StringAttribute, //
        "defaultPostingLevel": StringAttribute, //
        "transactionCode": StringAttribute, //
        "salesResponsiblePersonnelNumber": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "backingTable_ProjInvoiceTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_contracts");
  }
}
mixin(EntityCalls!("ProjectContractEntity"));

version(test_model_portals) { unittest {
    assert(ProjectContractEntity);
  
  auto entity = ProjectContractEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}