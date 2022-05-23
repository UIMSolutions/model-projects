module models.projects.entities.validations.employees.categories.category;

@safe:
import models.projects;

class DProjectValidationEmployeeCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValidationEmployeeCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "groupId": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjValEmplCategoryTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("projects_validations.employees.categories.categories");
  }
}
mixin(EntityCalls!("ProjectValidationEmployeeCategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValidationEmployeeCategoryEntity);
  
  auto entity = ProjectValidationEmployeeCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}