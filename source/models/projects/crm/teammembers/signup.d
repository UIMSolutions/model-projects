module models.projects.entities.teammembers.signup;

@safe:
import models.projects;

// Entity used to capture all resources that have applied for open position on projects.
class DPRJTeamMemberSignUp : DOOPEntity {
  mixin(EntityThis!("PRJTeamMemberSignUp"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttributeClass, // Unique identifier for the organization"]),
        "stateCode": IntegerAttributeClass, // Status of the Project Team Member Sign-Up"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project Team Member Sign-Up"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "defaultDescription": StringAttributeClass, // Type a description of the entity."]),
        "bookableResource": StringAttributeClass, // Shows the name of the resource signing up for this project team."]),
        "membershipStatus": StringAttributeClass, // Select the membership status."]),
        "membershipStatus_display": StringAttributeClass, //
        "teamMembership": StringAttributeClass, // Shows the team membership for the person signing up for this project team."]),
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