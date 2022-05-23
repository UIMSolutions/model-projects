module models.projects.entities.transfers.price;

module models.projects.entities.task;

@safe:
import models.projects;

class DProjectTransferPriceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectTransferPriceEntity"));

  override void initialize() {
    super.initialize;

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
        "effectiveDate": StringAttribute, //
        "pricing": StringAttribute, //
        "transactionType": StringAttribute, //
        "resourceId": StringAttribute, //
        "projectId": StringAttribute, //
        "categoryId": StringAttribute, //
        "projectContractId": StringAttribute, //
        "roleId": StringAttribute, //
        "relationship_ResourceRelationshipId": StringAttribute, //
        "relationship_CurrencyRelationshipId": StringAttribute, //
        "relationship_ResourceRoleRelationshipId": StringAttribute, //
        "backingTable_ProjTransferPriceRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_transfers.prices");
  }
}
mixin(EntityCalls!("ProjectTransferPriceEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}