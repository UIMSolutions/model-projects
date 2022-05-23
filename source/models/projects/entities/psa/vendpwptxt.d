module models.projects.entities.psa.vendpwptxt;

@safe:
import models.projects;

class DPSAVendPWPTxtEntity : DOOPEntity {
  mixin(EntityThis!("PSAVendPWPTxtEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "category": StringAttribute, //
        "customerAccount": StringAttribute, //
        "indirectCostComponentGroup": StringAttribute, //
        "ruleSearchKey": StringAttribute, //
        "projectID": StringAttribute, //
        "projectContractID": StringAttribute, //
        "resource": StringAttribute, //
        "effectiveFrom": StringAttribute, //
        "resourcePersonnelNumber": StringAttribute, //
        "backingTable_PSAComponentGroupAssignmentRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_pasvendpwptxts");
  }
}
mixin(EntityCalls!("PSAVendPWPTxtEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAVendPWPTxtEntity);
  
  auto entity = PSAVendPWPTxtEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}