module models.projects.entities.lines.property;

import models.projects;

@safe:
class DProjectLinePropertyEntity : DEntity {
  mixin(EntityThis!("ProjectLinePropertyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "costPercentage": StringAttribute, //
        "addToEfficientHours": StringAttribute, //
        "linePropertyId": UUIDAttribute, //
        "name": StringAttribute, //
        "addToNormBillable": StringAttribute, //
        "addToNormEfficiency": StringAttribute, //
        "printZeroSalesPriceOnInvoice": StringAttribute, //
        "printZeroSalesPriceOnQuotation": StringAttribute, //
        "salesPercentage": StringAttribute, //
        "enableAccrueRevenue": StringAttribute, //
        "enabledCapitalizeCost": StringAttribute, //
        "isChargeable": StringAttribute, //
        "backingTable_ProjLinePropertyRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_line.properties");
  }
}
mixin(EntityCalls!("ProjectLinePropertyEntity"));

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