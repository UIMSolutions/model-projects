module models.projects.entities.teammembers.signup;

import models.projects;
@safe:

// Entity used to capture all resources that have applied for open position on projects.
class DPRJTeamMemberSignUp : DEntity {
  mixin(EntityThis!("PRJTeamMemberSignUp"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": IntegerAttribute, // Status of the Project Team Member Sign-Up"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Team Member Sign-Up"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "defaultDescription": StringAttribute, // Type a description of the entity."]),
        "bookableResource": StringAttribute, // Shows the name of the resource signing up for this project team."]),
        "membershipStatus": StringAttribute, // Select the membership status."]),
        "membershipStatus_display": StringAttribute, //
        "teamMembership": StringAttribute, // Shows the team membership for the person signing up for this project team."]),
      ])
      .registerPath("project_teammembersignups");
  }
}
mixin(EntityCalls!("PRJTeamMemberSignUp"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJTeamMemberSignUp);
  
  auto entity = PRJTeamMemberSignUp;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}