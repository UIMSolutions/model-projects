module models.projects.entities.cds.projects.project;

@safe:
import models.projects;

class DProjectCDSProjectEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSProjectEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectID": StringAttribute, //
        "customerAccount": StringAttribute, //
        "projectName": StringAttribute, //
        "projectGroup": StringAttribute, //
        "projectContractID": StringAttribute, //
        "projectType": StringAttribute, //
        "projectStatus": StringAttribute, //
        "projectedStartDate": StringAttribute, //
        "projectedEndDate": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "parentId": StringAttribute, //
        "description": StringAttribute, //
        "projectManagerPersonnelNumber": StringAttribute, //
        "sourceDataID": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "backingTable_ProjTableRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cds.projects.projects");
  }
}
mixin(EntityCalls!("ProjectCDSProjectEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSProjectEntity);
  
  auto entity = ProjectCDSProjectEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
