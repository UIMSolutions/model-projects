module models.projects.entities.grants.grant;

import models.projects;

@safe:
class DProjectGrantEntity : DEntity {
  mixin(EntityThis!("ProjectGrantEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "actualAwardDate": DateAttribute, //
        "actualExpirationDate": DateAttribute, //
        "actualStartDate": DateAttribute, //
        "applicationDueDate": DateAttribute, //
        "applicationSubmittedDate": DateAttribute, //
        "awardedAmount": StringAttribute, //
        "boardApprovalDate": DateAttribute, //
        "cfdaId": UUIDAttribute, //
        "custAccount": StringAttribute, //
        "estimatedAwardDate": DateAttribute, //
        "federalManDate": DateAttribute, //
        "grantApplicationId": UUIDAttribute, //
        "grantDescription": StringAttribute, //
        "grantId": UUIDAttribute, //
        "grantManagerWorker": StringAttribute, //
        "grantMatchingComments": StringAttribute, //
        "grantName": StringAttribute, //
        "grantParentId": UUIDAttribute, //
        "grantPurpose": StringAttribute, //
        "grantStatus": StringAttribute, //
        "matchingAmount": StringAttribute, //
        "matchingPercentage": StringAttribute, //
        "organizationUnitId": UUIDAttribute, //
        "passThrough": StringAttribute, //
        "projGrantMatching": StringAttribute, //
        "projGrantorType": StringAttribute, //
        "projGrantType": StringAttribute, //
        "projLocalTrackingId": UUIDAttribute, //
        "rejectionNotification": StringAttribute, //
        "renewalActionDate": DateAttribute, //
        "requestedAmount": StringAttribute, //
        "stateManDate": DateAttribute, //
        "subGrantor": StringAttribute, //
        "workerContact": StringAttribute, //
        "cfda": StringAttribute, //
        "grantorAgency": StringAttribute, //
        "grantManagerWorker_PersonnelNumber": StringAttribute, //
        "projGrantMatching_MatchingTypeCode": StringAttribute, //
        "projGrantorType_GrantorType": StringAttribute, //
        "projGrantType_GrantType": StringAttribute, //
        "workerContact_PersonnelNumber": StringAttribute, //
        "backingTable_ProjGrantRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_grants");
  }
}
mixin(EntityCalls!("ProjectGrantEntity"));

version(test_model_portals) { unittest {
    assert(ProjectGrantEntity);
  
  auto entity = ProjectGrantEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}