module models.projects.entities.resources.data;

import models.projects;

@safe:
class DProjectResourceDataEntity : DEntity {
  mixin(EntityThis!("ProjectResourceDataEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "resourceId": UUIDAttribute, 
        "type": StringAttribute, 
        "name": StringAttribute, 
        "worker": StringAttribute, 
        "personnelNumber": StringAttribute, 
        "vendId": UUIDAttribute, 
        "recordId": UUIDAttribute, 
        "resourceCompanyId": UUIDAttribute, 
        "backingTable_ResResourceIdentifierRelationshipId": UUIDAttribute, 
     ])
      .registerPath("projects_resources.data");
  }
}
mixin(EntityCalls!("ProjectResourceDataEntity"));

version(test_model_portals) { unittest {
    assert(ProjectResourceDataEntity);
  
  auto entity = ProjectResourceDataEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}