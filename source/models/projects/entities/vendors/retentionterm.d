module models.projects.entities.vendors.retentionterm;

@safe:
import models.projects;

class DProjectVendorRetentionTermEntity : DOOPEntity {
  mixin(EntityThis!("ProjectVendorRetentionTermEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "LegalEntity": StringAttribute, //
        "DataArea": StringAttribute, //
        "NullableDataArea": StringAttribute, //
        "Person": StringAttribute, //
        "PartyNumber": StringAttribute, //
        "ProjectId": StringAttribute, //
        "ProjectName": StringAttribute, //
        "Role": StringAttribute, //
        "EndDate": StringAttribute, //
        "StartDate": StringAttribute, //
        "relationship_PersonRelationshipId": StringAttribute, //
        "relationship_ProjTableRelationshipId": StringAttribute, //
        "backingTable_HcmPersonProjectRoleRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_hcmpersonprojectroles");
  }
}
mixin(EntityCalls!("ProjectVendorRetentionTermEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectVendorRetentionTermEntity);
  
  auto entity = ProjectVendorRetentionTermEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}