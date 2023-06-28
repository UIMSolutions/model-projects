module models.projects.entities.hcmpersonprojectrole;

import models.projects;

@safe:
class DHcmPersonProjectRoleEntity : DEntity {
  mixin(EntityThis!("HcmPersonProjectRoleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "legalEntity": StringAttribute, //
        "dataArea": StringAttribute, //
        "nullableDataArea": StringAttribute, //
        "person": StringAttribute, //
        "partyNumber": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "endDate": DateAttribute, //
        "startDate": DateAttribute, //
        "relationship_PersonRelationshipId": UUIDAttribute, //
        "relationship_ProjTableRelationshipId": UUIDAttribute, //
        "backingTable_HcmPersonProjectRoleRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_hcmpersonprojectroles");
  }
}
mixin(EntityCalls!("HcmPersonProjectRoleEntity"));

version(test_model_portals) { unittest {
    assert(HcmPersonProjectRoleEntity);
  
  auto entity = HcmPersonProjectRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}