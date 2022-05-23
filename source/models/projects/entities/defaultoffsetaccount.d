module models.projects.entities.defaultoffsetaccount;

@safe:
import models.projects;

class DProjectDefaultOffsetAccountEntity : DOOPEntity {
  mixin(EntityThis!("ProjectDefaultOffsetAccountEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "offsetAccount": StringAttribute, // 
        "category": StringAttribute, // 
        "projectId": UUIDAttribute, // 
        "offsetAccountType": StringAttribute, // 
        "resource": StringAttribute, // 
        "offsetAccountDisplayValue": StringAttribute, // 
        "resourcePersonnelNumber": StringAttribute, // 
        "relationship_OffsetAccountCombinationRelationshipId": UUIDAttribute, // 
        "relationship_ProjectRelationshipId": UUIDAttribute, // 
        "backingTable_ProjDefaultOffsetSetupRelationshipId": UUIDAttribute, // 
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, // 
     ])
      .registerPath("projects_default.offset.accounts");
  }
}
mixin(EntityCalls!("ProjectDefaultOffsetAccountEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectDefaultOffsetAccountEntity);
  
  auto entity = ProjectDefaultOffsetAccountEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}