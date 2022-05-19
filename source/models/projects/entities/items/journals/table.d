module models.projects.entities.pma.items.journals.table;

@safe:
import models.projects;

class DProjectItemJournalTableEntity : DOOPEntity {
  mixin(EntityThis!("ProjectItemJournalTableEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "BlockUserGroupId": StringAttribute, //
        "IsLinesDeletedAfterPosting": StringAttribute, //
        "Description": StringAttribute, //
        "PostingDetailLevel": StringAttribute, //
        "InventLocationId": StringAttribute, //
        "InventSiteId": StringAttribute, //
        "JournalId": StringAttribute, //
        "JournalName": StringAttribute, //
        "OffsetAccount": StringAttribute, //
        "Posted": StringAttribute, //
        "Reservation": StringAttribute, //
        "OffsetAccountDisplayValue": StringAttribute, //
        "Relationship_OffsetAccountCombinationRelationshipId": StringAttribute, //
        "BackingTable_InventJournalTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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