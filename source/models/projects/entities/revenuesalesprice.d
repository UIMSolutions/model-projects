module models.projects.entities.revenuesalesprice;

import models.projects;

@safe:
class DProjectRevenueSalesPriceEntity : DEntity {
  mixin(EntityThis!("ProjectRevenueSalesPriceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "salesCurrency": StringAttribute, //
        "projectId": UUIDAttribute, //
        "priceGroup": StringAttribute, //
        "customerAccount": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "resource": StringAttribute, //
        "role": StringAttribute, //
        "salesPrice": StringAttribute, //
        "effectiveDate": DateAttribute, //
        "projValidFor": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjRevenueSalesPriceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_rrevenuesalesprices");
  }
}
mixin(EntityCalls!("ProjectRevenueSalesPriceEntity"));

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