module models.projects.entities.statustyperule;

@safe:
import models.projects;

class DProjectStatusTypeRuleEntity : DOOPEntity {
  mixin(EntityThis!("ProjectStatusTypeRuleEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "ProjStatus": StringAttribute, //
        "ProjStatusRule": StringAttribute, //
        "ProjType": StringAttribute, //
        "BackingTable_ProjStatusTypeRuleRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_statustyperules");
  }
}
mixin(EntityCalls!("ProjectStatusTypeRuleEntity"));

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

