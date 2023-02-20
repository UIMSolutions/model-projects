module models.projects.entities.collaborationworkspacesetting;

@safe:
import models.projects;

class DProjectCollaborationWorkspaceSettingEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCollaborationWorkspaceSettingEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "isWorkspaceAutoCreatedForCost": BooleanAttribute, //
        "isWorkspaceAutoCreatedForInternal": BooleanAttribute, //
        "isWorkspaceAutoCreatedForInvestment": BooleanAttribute, //
        "isWorkspaceAutoCreated": BooleanAttribute, //
        "isWorkspaceAutoCreatedForTime": BooleanAttribute, //
        "isWorkspaceAutoCreatedForTimeMaterial": BooleanAttribute, //
        "businessArea": StringAttribute, //
        "isCreatingWorkspacePrompted": BooleanAttribute, //
        "isDeletingWorkspacePrompted": BooleanAttribute, //
        "workspaceHomePage": StringAttribute, //
        "sharePointVersion": StringAttribute, //
        "storeMSProjectFiles": StringAttribute, //
        "syncTaskLists": StringAttribute, //
        "template": StringAttribute, //
        "backingTable_CollabSiteParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_collaboration.workspace.settings");
  }
}
mixin(EntityCalls!("ProjectCollaborationWorkspaceSettingEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCollaborationWorkspaceSettingEntity);
  
  auto entity = ProjectCollaborationWorkspaceSettingEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}