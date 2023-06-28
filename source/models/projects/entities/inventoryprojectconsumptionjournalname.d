module models.projects.entities.inventoryprojectconsumptionjournalname;

import models.projects;

@safe:
class DProjectInventoryProjectConsumptionJournalNameEntity : DEntity {
  mixin(EntityThis!("ProjectInventoryProjectConsumptionJournalNameEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "journalNameId": UUIDAttribute, //
        "defaultJournalDescription": StringAttribute, //
        "isPostingDeletingLinesByDefault": StringAttribute, //
        "defaultPrivateUserGroupId": UUIDAttribute, //
        "defaultPostingSummationLevel": StringAttribute, //
        "defaultInventoryReservationMethod": StringAttribute, //
        "defaultVoucherNumberAllocationRule": StringAttribute, //
        "defaultVoucherNumberSelectionRule": StringAttribute, //
        "defaultVoucherNumberSequenceRecId": UUIDAttribute, //
        "defaultVoucherNumberSequenceCode": StringAttribute, //
        "numberSequenceTable_NumberSequenceScope": StringAttribute, //
        "defaultVoucherNumberSequenceDataArea": StringAttribute, //
        "backingTable_InventJournalNameRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_inventoryprojectconsumptionjournalnames");
  }
}
mixin(EntityCalls!("ProjectInventoryProjectConsumptionJournalNameEntity"));

version(test_model_portals) { unittest {
    assert(ProjectInventoryProjectConsumptionJournalNameEntity);
  
  auto entity = ProjectInventoryProjectConsumptionJournalNameEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}