module models.projects.entities.contract;

@safe:
import models.projects;

class DProjectContractEntity : DOOPEntity {
  mixin(EntityThis!("ProjectContractEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "bankAccount": StringAttribute, //
        "centralBankPurposeCode": StringAttribute, //
        "purposeText": StringAttribute, //
        "name": StringAttribute, //
        "invoiceFrequency": StringAttribute, //
        "listCodeId": StringAttribute, //
        "minimumTimeIncrement": StringAttribute, //
        "invoicingName": StringAttribute, //
        "netPrice": StringAttribute, //
        "projectContractID": StringAttribute, //
        "lockContractSalesCurrency": StringAttribute, //
        "priceGroup": StringAttribute, //
        "contractDate": StringAttribute, //
        "contractLines": StringAttribute, //
        "progressInvoicing": StringAttribute, //
        "retainagePercent": StringAttribute, //
        "customerRetentionTermId": StringAttribute, //
        "salesResponsible": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "serviceOnDeliveryAddress": StringAttribute, //
        "defaultPostingLevel": StringAttribute, //
        "transactionCode": StringAttribute, //
        "salesResponsiblePersonnelNumber": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "backingTable_ProjInvoiceTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_contracts");
  }
}
mixin(EntityCalls!("ProjectContractEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectContractEntity);
  
  auto entity = ProjectContractEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}