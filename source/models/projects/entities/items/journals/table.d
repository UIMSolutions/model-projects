module models.projects.entities.items.journals.table;

@safe:
import models.projects;

class DProjectItemJournalTableEntity : DOOPEntity {
  mixin(EntityThis!("ProjectItemJournalTableEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "blockUserGroupId": UUIDAttribute, //
        "isLinesDeletedAfterPosting": StringAttribute, //
        "description": StringAttribute, //
        "postingDetailLevel": StringAttribute, //
        "inventLocationId": UUIDAttribute, //
        "inventSiteId": UUIDAttribute, //
        "journalId": UUIDAttribute, //
        "journalName": StringAttribute, //
        "offsetAccount": StringAttribute, //
        "posted": StringAttribute, //
        "reservation": StringAttribute, //
        "offsetAccountDisplayValue": StringAttribute, //
        "relationship_OffsetAccountCombinationRelationshipId": UUIDAttribute, //
        "backingTable_InventJournalTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_itemjournaltables");
  }
}
mixin(EntityCalls!("ProjectItemJournalTableEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectItemJournalTableEntity);
  
  auto entity = ProjectItemJournalTableEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}