module models.projects.entities.teammembers.signup;

@safe:
import models.projects;

// Entity used to capture all resources that have applied for open position on projects.
class DPRJTeamMemberSignUp : DOOPEntity {
  mixin(OOPEntityThis!("PRJTeamMemberSignUp"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Team Member Sign-Up"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Team Member Sign-Up"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "defaultDescription": OOPStringAttribute.descriptions(["en":"Type a description of the entity."]),
        "bookableResource": OOPStringAttribute.descriptions(["en":"Shows the name of the resource signing up for this project team."]),
        "membershipStatus": OOPStringAttribute.descriptions(["en":"Select the membership status."]),
        "membershipStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "teamMembership": OOPStringAttribute.descriptions(["en":"Shows the team membership for the person signing up for this project team."]),
      ])
      .registerPath("project_teammembersignups");
  }
}
mixin(OOPEntityCalls!("PRJTeamMemberSignUp"));

unittest {
  version(uim_entities) {
    assert(PRJTeamMemberSignUp);
  
  auto entity = PRJTeamMemberSignUp;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}