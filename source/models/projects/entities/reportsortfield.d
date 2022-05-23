module models.projects.entities.reportsortfield;

@safe:
import models.projects;

class DProjectReportSortFieldEntity : DOOPEntity {
  mixin(EntityThis!("ProjectReportSortFieldEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Description": StringAttribute, //
        "SortCode": StringAttribute, //
        "SortingId": StringAttribute, //
        "BackingTable_ProjSortingRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_report.sort.fields");
  }
}
mixin(EntityCalls!("ProjectReportSortFieldEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}