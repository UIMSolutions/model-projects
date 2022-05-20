module models.projects.entities.journals.name;

@safe:
import models.projects;

class DProjectJournalNameEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalNameEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Description": StringAttribute, //
        "DetailSummary": StringAttribute, //
        "Name": StringAttribute, //
        "JournalType": StringAttribute, //
        "Approve": StringAttribute, //
        "ShowStartOrEndTimes": StringAttribute, //
        "NewVoucherBy": StringAttribute, //
        "SetVoucherDateTo": StringAttribute, //
        "SelectionBy": StringAttribute, //
        "VoucherSeries": StringAttribute, //
        "NumberSequenceCode": StringAttribute, //
        "NumberSequenceScope": StringAttribute, //
        "NumberSequenceDataArea": StringAttribute, //
        "BackingTable_ProjJournalNameRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journalnames");
  }
}
mixin(EntityCalls!("ProjectJournalNameEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectJournalNameEntity);
  
  auto entity = ProjectJournalNameEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}