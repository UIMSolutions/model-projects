module source.models.projects.entities.psa.componentgroupassignment;

@safe:
import models.projects;

class DPSAComponentectGroupAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("PSAComponentectGroupAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Category": StringAttribute, //
        "CustomerAccount": StringAttribute, //
        "IndirectCostComponentGroup": StringAttribute, //
        "RuleSearchKey": StringAttribute, //
        "ProjectID": StringAttribute, //
        "ProjectContractID": StringAttribute, //
        "Resource": StringAttribute, //
        "EffectiveFrom": StringAttribute, //
        "ResourcePersonnelNumber": StringAttribute, //
        "BackingTable_PSAComponentGroupAssignmentRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_psaactuals");
  }
}
mixin(EntityCalls!("PSAComponentectGroupAssignmentEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAComponentectGroupAssignmentEntity);
  
  auto entity = PSAComponentectGroupAssignmentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}