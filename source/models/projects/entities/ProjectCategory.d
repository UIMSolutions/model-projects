module models.projects.entities.category;

@safe:
import models.projects;

class DCategoryEntity : DOOPEntity {
  mixin(EntityThis!("CategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CategoryId": StringAttribute, //
        "CategoryName": StringAttribute, //
        "SharedCategory": StringAttribute, //
        "UseInExpense": StringAttribute, //
        "UseInProduction": StringAttribute, //
        "UseInProject": StringAttribute, //
        "SharedCategoryId": StringAttribute, //
        "Relationship_SharedCategoryRelationshipId": StringAttribute, //
        "BackingTable_CategoryTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_categories");
  }
}
mixin(EntityCalls!("CategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(TMSAccessorialChargeMasterEntity);
  
  auto entity = TMSAccessorialChargeMasterEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}