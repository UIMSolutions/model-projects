module models.projects.entities.lines.propertysetup;

import models.projects;

@safe:
class DProjectLinePropertySetupEntity : DEntity {
  mixin(EntityThis!("ProjectLinePropertySetupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "categoryCode": StringAttribute, //
        "categoryRelation": StringAttribute, //
        "linePropertyId": UUIDAttribute, //
        "projectCode": StringAttribute, //
        "projectRelation": StringAttribute, //
        "isDebitNoteSetupEnabled": StringAttribute, //
        "backingTable_ProjLinePropertySetupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_linepropertysetups");
  }
}
mixin(EntityCalls!("ProjectLinePropertySetupEntity"));

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