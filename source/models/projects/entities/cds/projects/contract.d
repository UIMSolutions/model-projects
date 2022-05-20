module models.projects.entities.cds.projects.contract;

@safe:
import models.projects;

class DProjectCDSProjectContractEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSProjectContractEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectContractID": StringAttribute, //
        "customerAccount": StringAttribute, //
        "name": StringAttribute, //
        "currencyCode": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "paymentTerms": StringAttribute, //
        "customerReference": StringAttribute, //
        "sourceDataID": StringAttribute, //
        "addressValidFrom": StringAttribute, //
        "addressValidTo": StringAttribute, //
        "addressDescription": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressStreet": StringAttribute, //
        "addressLine1": StringAttribute, //
        "addressLine2": StringAttribute, //
        "addressState": StringAttribute, //
        "addressCountryRegionId": StringAttribute, //
        "invoiceLocation": StringAttribute, //entities.
        "partyNumber": StringAttribute, //
        "backingTable_ProjInvoiceTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cds.projects.contracts");
  }
}
mixin(EntityCalls!("ProjectCDSProjectContractEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSProjectContractEntity);
  
  auto entity = ProjectCDSProjectContractEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
