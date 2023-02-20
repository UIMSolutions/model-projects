module models.projects.entities.cds.projects.project;

@safe:
import models.projects;

class DProjectCDSProjectEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSProjectEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "projectId": UUIDAttribute, //
        "customerAccount": StringAttribute, //
        "projectName": StringAttribute, //
        "projectGroup": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "projectType": StringAttribute, //
        "projectStatus": StringAttribute, //
        "projectedStartDate": StringAttribute, //
        "projectedEndDate": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "parentId": UUIDAttribute, //
        "description": StringAttribute, //
        "projectManagerPersonnelNumber": StringAttribute, //
        "sourceDataId": UUIDAttribute, //
        "defaultDimension": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "backingTable_ProjTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
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
