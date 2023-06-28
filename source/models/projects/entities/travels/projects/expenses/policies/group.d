module models.projects.entities.travels.expenses.policies.group;

import models.projects;

@safe:
class DProjectTravelExpensePolicyGroupEntity : DEntity {
  mixin(EntityThis!("ProjectTravelExpensePolicyGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "GroupId": UUIDAttribute, //
        "Name": StringAttribute, //
        "BackingTable_ProjExpPolicyGroupsRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_travels.projects.expenses.policies.groups");
  }
}
mixin(EntityCalls!("ProjectTravelExpensePolicyGroupEntity"));

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