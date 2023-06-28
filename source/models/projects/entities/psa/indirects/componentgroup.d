module models.projects.entities.psa.indirects.componentgroup;

import models.projects;

@safe:
class DPSAIndirectComponentGroupEntity : DEntity {
  mixin(EntityThis!("PSAIndirectComponentGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "indirectCostComponentGroup": StringAttribute, //
        "indirectComponentGroupName": StringAttribute, //
        "backingTable_PSAIndirectComponentGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_psa.indirects.componentgroups");
  }
}
mixin(EntityCalls!("PSAIndirectComponentGroupEntity"));

version(test_model_portals) { unittest {
    assert(PSAIndirectComponentGroupEntity);
  
  auto entity = PSAIndirectComponentGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}