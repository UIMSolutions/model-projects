module models.projects.entities.hcmpersonprojectrole;

@safe:
import models.projects;

class DHcmPersonProjectRoleEntity : DOOPEntity {
  mixin(EntityThis!("HcmPersonProjectRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "LegalEntity": StringAttribute, //
        "DataArea": StringAttribute, //
        "NullableDataArea": StringAttribute, //
        "Person": StringAttribute, //
        "PartyNumber": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ProjectName": StringAttribute, //
        "Role": StringAttribute, //
        "EndDate": StringAttribute, //
        "StartDate": StringAttribute, //
        "Relationship_PersonRelationshipId": StringAttribute, //
        "Relationship_ProjTableRelationshipId": StringAttribute, //
        "BackingTable_HcmPersonProjectRoleRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_hcmpersonprojectroles");
  }
}
mixin(EntityCalls!("HcmPersonProjectRoleEntity"));

version(test_model_portals) {
  unittest {
    assert(HcmPersonProjectRoleEntity);
  
  auto entity = HcmPersonProjectRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}