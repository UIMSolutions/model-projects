module models.projects.entities.cds.projects.contract;

import models.projects;

@safe:
class DProjectCDSProjectContractEntity : DEntity {
  mixin(EntityThis!("ProjectCDSProjectContractEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectContractId": UUIDAttribute, //
        "customerAccount": StringAttribute, //
        "name": StringAttribute, //
        "currencyCode": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "paymentTerms": StringAttribute, //
        "customerReference": StringAttribute, //
        "sourceDataId": UUIDAttribute, //
        "addressValidFrom": StringAttribute, //
        "addressValidTo": StringAttribute, //
        "addressDescription": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressStreet": StringAttribute, //
        "addressLine1": StringAttribute, //
        "addressLine2": StringAttribute, //
        "addressState": StringAttribute, //
        "addressCountryRegionId": UUIDAttribute, //
        "invoiceLocation": StringAttribute, //entities.
        "partyNumber": StringAttribute, //
        "backingTable_ProjInvoiceTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.projects.contracts");
  }
}
mixin(EntityCalls!("ProjectCDSProjectContractEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSProjectContractEntity);
  
  auto entity = ProjectCDSProjectContractEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
