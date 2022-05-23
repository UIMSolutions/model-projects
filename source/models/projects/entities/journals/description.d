module models.projects.entities.journals.description;


@safe:
import models.projects;

class DProjectJournalDescriptionEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalDescriptionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "identification": StringAttribute, //
        "searchName": StringAttribute, //
        "description": StringAttribute, //
        "backingTable_ProjJournalTxtRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_journaldescriptions");
  }
}
mixin(EntityCalls!("ProjectJournalDescriptionEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectJournalDescriptionEntity);
  
  auto entity = ProjectJournalDescriptionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}