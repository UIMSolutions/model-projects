module models.projects.entities.revenuesalesprice;

@safe:
import models.projects;

class DProjectRevenueSalesPriceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectRevenueSalesPriceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "projectID": StringAttribute, //
        "priceGroup": StringAttribute, //
        "customerAccount": StringAttribute, //
        "projectContractID": StringAttribute, //
        "resource": StringAttribute, //
        "role": StringAttribute, //
        "salesPrice": StringAttribute, //
        "effectiveDate": StringAttribute, //
        "projValidFor": StringAttribute, //
        "resourceId": StringAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": StringAttribute, //
        "backingTable_ProjRevenueSalesPriceRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_rrevenuesalesprices");
  }
}
mixin(EntityCalls!("ProjectRevenueSalesPriceEntity"));

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