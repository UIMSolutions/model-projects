module models.projects.entities.unpostedtransview;

import models.projects;

@safe:
class DProjectUnpostedTransViewEntity : DEntity {
  mixin(EntityThis!("ProjectUnpostedTransViewEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "ActivityNumber": StringAttribute, //
        "Amount": StringAttribute, //
        "CategoryId": UUIDAttribute, //
        "CostPrice": StringAttribute, //
        "CurrencyId": UUIDAttribute, //
        "dataAreaIdUnion": StringAttribute, //
        "ItemId": UUIDAttribute, //
        "LinePropertyId": UUIDAttribute, //
        "ProjectId": UUIDAttribute, //
        "Quantity": StringAttribute, //
        "ResourceName": StringAttribute, //
        "SalesPrice": StringAttribute, //
        "TransactionOrigin": StringAttribute, //
        "TransactionDataAreaId": UUIDAttribute, //
        "TransactionDate": DateAttribute, //
        "TransactionId": UUIDAttribute, //
        "TransactionType": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_unpostedtransviews");
  }
}
mixin(EntityCalls!("ProjectUnpostedTransViewEntity"));

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