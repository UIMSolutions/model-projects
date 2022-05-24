module models.projects.entities.lines.propertysetup;

@safe:
import models.projects;

class DProjectLinePropertySetupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectLinePropertySetupEntity"));

  override void initialize() {
    super.initialize;

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