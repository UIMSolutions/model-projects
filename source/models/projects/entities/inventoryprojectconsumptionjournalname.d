module models.projects.entities.inventoryprojectconsumptionjournalname;

@safe:
import models.projects;

class DProjectInventoryProjectConsumptionJournalNameEntity : DOOPEntity {
  mixin(EntityThis!("ProjectInventoryProjectConsumptionJournalNameEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "journalNameId": StringAttribute, //
        "defaultJournalDescription": StringAttribute, //
        "isPostingDeletingLinesByDefault": StringAttribute, //
        "defaultPrivateUserGroupId": StringAttribute, //
        "defaultPostingSummationLevel": StringAttribute, //
        "defaultInventoryReservationMethod": StringAttribute, //
        "defaultVoucherNumberAllocationRule": StringAttribute, //
        "defaultVoucherNumberSelectionRule": StringAttribute, //
        "defaultVoucherNumberSequenceRecId": StringAttribute, //
        "defaultVoucherNumberSequenceCode": StringAttribute, //
        "numberSequenceTable_NumberSequenceScope": StringAttribute, //
        "defaultVoucherNumberSequenceDataArea": StringAttribute, //
        "backingTable_InventJournalNameRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_inventoryprojectconsumptionjournalnames");
  }
}
mixin(EntityCalls!("ProjectInventoryProjectConsumptionJournalNameEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectInventoryProjectConsumptionJournalNameEntity);
  
  auto entity = ProjectInventoryProjectConsumptionJournalNameEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}