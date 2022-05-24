module models.projects.entities.wbs.templates.template_;

@safe:
import models.projects;

class DProjectWBSTemplateEntity : DOOPEntity {
  mixin(EntityThis!("ProjectWBSTemplateEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "hierarchyId": StringAttribute, //
        "name": StringAttribute, //
        "description": StringAttribute, //
        "hierarchyType": StringAttribute, //
        "isActive": StringAttribute, //
        "isTemplate": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("projects_wbs.templates");
  }
}
mixin(EntityCalls!("ProjectWBSTemplateEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectWBSTemplateEntity);
  
  auto entity = ProjectWBSTemplateEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}