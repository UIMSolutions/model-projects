module models.projects.entities.items.journals.table;

@safe:
import models.projects;

class DProjectItemJournalTableEntity : DOOPEntity {
  mixin(EntityThis!("ProjectItemJournalTableEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "blockUserGroupId": StringAttribute, //
        "isLinesDeletedAfterPosting": StringAttribute, //
        "description": StringAttribute, //
        "postingDetailLevel": StringAttribute, //
        "inventLocationId": StringAttribute, //
        "inventSiteId": StringAttribute, //
        "journalId": StringAttribute, //
        "journalName": StringAttribute, //
        "offsetAccount": StringAttribute, //
        "posted": StringAttribute, //
        "reservation": StringAttribute, //
        "offsetAccountDisplayValue": StringAttribute, //
        "relationship_OffsetAccountCombinationRelationshipId": StringAttribute, //
        "backingTable_InventJournalTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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