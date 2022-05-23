module models.projects.entities.hours.costprice;

@safe:
import models.projects;

class DProjectHourCostPriceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectHourCostPriceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": StringAttribute, //
        "costPrice": StringAttribute, //
        "effectiveLaborRate": StringAttribute, //
        "isResourceRate": StringAttribute, //
        "projectId": StringAttribute, //
        "customerAccount": StringAttribute, //
        "priceGroupId": StringAttribute, //
        "projectContractId": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "transDate": StringAttribute, //
        "resourceId": StringAttribute, //
        "resourceCategoryId": StringAttribute, //
        "resourceCompanyId": StringAttribute, //
        "backingTable_ProjHourCostPriceRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_hours.costprices");
  }
}
mixin(EntityCalls!("ProjectHourCostPriceEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectHourCostPriceEntity);
  
  auto entity = ProjectHourCostPriceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}