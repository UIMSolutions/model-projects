module models.projects.entities.travels.projects.expenses.policies.group;

@safe:
import models.projects;

class DProjectTravelExpensePolicyGroupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectTravelExpensePolicyGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "GroupId": StringAttribute, //
        "Name": StringAttribute, //
        "BackingTable_ProjExpPolicyGroupsRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_travels.projects.expenses.policies.groups");
  }
}
mixin(EntityCalls!("ProjectTravelExpensePolicyGroupEntity"));

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