module models.projects.entities.journals.description;


@safe:
import models.projects;

class DProjectJournalDescriptionEntity : DOOPEntity {
  mixin(EntityThis!("ProjectJournalDescriptionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Identification": StringAttribute, //
        "SearchName": StringAttribute, //
        "Description": StringAttribute, //
        "backingTable_ProjJournalTxtRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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