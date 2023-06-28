module models.projects.entities.psa.componentgroupassignment;

import models.projects;

@safe:
class DPSAComponentectGroupAssignmentEntity : DEntity {
  mixin(EntityThis!("PSAComponentectGroupAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "category": StringAttribute, //
        "customerAccount": StringAttribute, //
        "indirectCostComponentGroup": StringAttribute, //
        "ruleSearchKey": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "resource": StringAttribute, //
        "effectiveFrom": StringAttribute, //
        "resourcePersonnelNumber": StringAttribute, //
        "backingTable_PSAComponentGroupAssignmentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAComponentectGroupAssignmentEntity"));

version(test_model_portals) { unittest {
    assert(PSAComponentectGroupAssignmentEntity);
  
  auto entity = PSAComponentectGroupAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}