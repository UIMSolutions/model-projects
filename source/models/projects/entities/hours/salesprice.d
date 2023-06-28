module models.projects.entities.hours.salesprice;

import models.projects;

@safe:
class DProjectHourSalesPriceEntity : DEntity {
  mixin(EntityThis!("ProjectHourSalesPriceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "CategoryId": UUIDAttribute, //
        "CurrencyId": UUIDAttribute, //
        "ProjectId": UUIDAttribute, //
        "PriceGroup": StringAttribute, //
        "SalesPriceModel": StringAttribute, //
        "SalesPricing": StringAttribute, //
        "ValidFor": StringAttribute, //
        "CustomerAccount": StringAttribute, //
        "ProjectContractId": UUIDAttribute, //
        "Resource": StringAttribute, //
        "TransDate": DateAttribute, //
        "EndDate": DateAttribute, //
        "ResourceId": UUIDAttribute, //
        "ResourceCategoryId": UUIDAttribute, //
        "ResourceCompanyId": UUIDAttribute, //
        "BackingTable_ProjHourSalesPriceRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_grants");
  }
}
mixin(EntityCalls!("ProjectHourSalesPriceEntity"));

version(test_model_portals) { unittest {
    assert(ProjectHourSalesPriceEntity);
  
  auto entity = ProjectHourSalesPriceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}