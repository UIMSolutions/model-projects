module models.projects.entities.resources.data;

@safe:
import models.projects;

class DProjectResourceDataEntity : DOOPEntity {
  mixin(EntityThis!("ProjectResourceDataEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "resourceId": StringAttribute, 
        "type": StringAttribute, 
        "name": StringAttribute, 
        "worker": StringAttribute, 
        "personnelNumber": StringAttribute, 
        "vendId": StringAttribute, 
        "recordId": StringAttribute, 
        "resourceCompanyId": StringAttribute, 
        "backingTable_ResResourceIdentifierRelationshipId": StringAttribute, 
     ])
      .registerPath("projects_resources.data");
  }
}
mixin(EntityCalls!("ProjectResourceDataEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectResourceDataEntity);
  
  auto entity = ProjectResourceDataEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}