module models.projects.entities.unpostedtransview;

@safe:
import models.projects;

class DProjectUnpostedTransViewEntity : DOOPEntity {
  mixin(EntityThis!("ProjectUnpostedTransViewEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "Amount": StringAttribute, //
        "CategoryId": StringAttribute, //
        "CostPrice": StringAttribute, //
        "CurrencyId": StringAttribute, //
        "dataAreaIdUnion": StringAttribute, //
        "ItemId": StringAttribute, //
        "LinePropertyId": StringAttribute, //
        "ProjectId": StringAttribute, //
        "Quantity": StringAttribute, //
        "ResourceName": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "TransactionOrigin": StringAttribute, //
        "TransactionDataAreaId": StringAttribute, //
        "TransactionDate": StringAttribute, //
        "TransactionId": StringAttribute, //
        "TransactionType": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_unpostedtransviews");
  }
}
mixin(EntityCalls!("ProjectUnpostedTransViewEntity"));

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