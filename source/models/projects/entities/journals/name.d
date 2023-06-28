module models.projects.entities.journals.name;

import models.projects;

@safe:
class DProjectJournalNameEntity : DEntity {
  mixin(EntityThis!("ProjectJournalNameEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "detailSummary": StringAttribute, //
        "name": StringAttribute, //
        "journalType": StringAttribute, //
        "approve": StringAttribute, //
        "showStartOrEndTimes": StringAttribute, //
        "newVoucherBy": StringAttribute, //
        "setVoucherDateTo": StringAttribute, //
        "selectionBy": StringAttribute, //
        "voucherSeries": StringAttribute, //
        "numberSequenceCode": StringAttribute, //
        "numberSequenceScope": StringAttribute, //
        "numberSequenceDataArea": StringAttribute, //
        "backingTable_ProjJournalNameRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_journalnames");
  }
}
mixin(EntityCalls!("ProjectJournalNameEntity"));

version(test_model_portals) { unittest {
    assert(ProjectJournalNameEntity);
  
  auto entity = ProjectJournalNameEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}