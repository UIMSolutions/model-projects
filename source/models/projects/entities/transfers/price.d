module models.projects.entities.transfers.price;

import models.projects;

@safe:
class DProjectTransferPriceEntity : DEntity {
  mixin(EntityThis!("ProjectTransferPriceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "salesCurrency": StringAttribute, //
        "transferPriceModel": StringAttribute, //
        "projCategory": StringAttribute, //
        "borrowingLegalEntity": StringAttribute, //
        "projInvoiceTable": StringAttribute, //
        "projTable": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "effectiveDate": DateAttribute, //
        "pricing": StringAttribute, //
        "transactionType": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "categoryId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "roleId": UUIDAttribute, //
        "relationship_ResourceRelationshipId": UUIDAttribute, //
        "relationship_CurrencyRelationshipId": UUIDAttribute, //
        "relationship_ResourceRoleRelationshipId": UUIDAttribute, //
        "backingTable_ProjTransferPriceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_transfers.prices");
  }
}
mixin(EntityCalls!("ProjectTransferPriceEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}