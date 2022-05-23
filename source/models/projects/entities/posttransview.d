module models.projects.entities.posttransview;

@safe:
import models.projects;

class DProjectPostTransViewEntity : DOOPEntity {
  mixin(EntityThis!("ProjectPostTransViewEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": StringAttribute, //
        "currencyId": StringAttribute, //
        "itemId": StringAttribute, //
        "linePropertyID": StringAttribute, //
        "projectId": StringAttribute, //
        "transactionType": StringAttribute, //
        "quantity": StringAttribute, //
        "resourceName": StringAttribute, //
        "totalCostAmount": StringAttribute, //
        "totalSalesAmount": StringAttribute, //
        "transactionOrigin": StringAttribute, //
        "transactionDate": StringAttribute, //
        "transactionId": StringAttribute, //
        "vendorAccount": StringAttribute, //
        "vendorName": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_period.lines");
  }
}
mixin(EntityCalls!("ProjectPostTransViewEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectPostTransViewEntity);
  
  auto entity = ProjectPostTransViewEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}