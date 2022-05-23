module models.projects.entities.linepropertysetup;

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
        "linePropertyId": StringAttribute, //
        "projectCode": StringAttribute, //
        "projectRelation": StringAttribute, //
        "isDebitNoteSetupEnabled": StringAttribute, //
        "backingTable_ProjLinePropertySetupRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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