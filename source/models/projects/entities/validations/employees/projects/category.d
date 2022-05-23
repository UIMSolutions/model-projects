module models.projects.entities.validations.projects.category;

@safe:
import models.projects;

class DProjectValidationProjectCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValidationProjectCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "groupId": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjValEmplCategoryTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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