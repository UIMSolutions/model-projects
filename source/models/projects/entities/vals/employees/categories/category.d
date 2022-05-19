module models.projects.entities.pma.vals.empls.categories.category;

@safe:
import models.projects;

class DProjectValEmplCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValEmplCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "GroupId": StringAttribute, //
        "Name": StringAttribute, //
        "BackingTable_ProjValEmplCategoryTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journalapprovals");
  }
}
mixin(EntityCalls!("ProjectValEmplCategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValEmplCategoryEntity);
  
  auto entity = ProjectValEmplCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}