module models.projects.entities.pma.vals.empls.categories.setup;

@safe:
import models.projects;

class DProjectValEmplCategorySetupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValEmplCategorySetupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CategoryId": StringAttribute, //
        "GroupId": StringAttribute, //
        "ProjId": StringAttribute, //
        "BackingTable_ProjValProjCategorySetUpRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_valemplcategorysetups");
  }
}
mixin(EntityCalls!("ProjectValEmplCategorySetupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValEmplCategorySetupEntity);
  
  auto entity = ProjectValEmplCategorySetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}