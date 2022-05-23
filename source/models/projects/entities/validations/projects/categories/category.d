module models.projects.entities.validations.projects.categories.category;

@safe:
import models.projects;

class DProjectValidationProjectCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValidationProjectCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "groupId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjValProjCategoryTableRelationshipId	": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_validations.projects.categories");
  }
}
mixin(EntityCalls!("ProjectValidationProjectCategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValidationProjectCategoryEntity);
  
  auto entity = ProjectValidationProjectCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}