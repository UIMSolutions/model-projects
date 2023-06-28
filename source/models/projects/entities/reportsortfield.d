module models.projects.entities.reportsortfield;

import models.projects;

@safe:
class DProjectReportSortFieldEntity : DEntity {
  mixin(EntityThis!("ProjectReportSortFieldEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "Description": StringAttribute, //
        "SortCode": StringAttribute, //
        "SortingId": UUIDAttribute, //
        "BackingTable_ProjSortingRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_report.sort.fields");
  }
}
mixin(EntityCalls!("ProjectReportSortFieldEntity"));

version(test_model_portals) { unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}