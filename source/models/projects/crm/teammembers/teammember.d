module models.projects.entities.teammembers.teammember;

@safe:
import models.projects;

class DPRJTeamMember : DOOPEntity {
  mixin(EntityThis!("DPRJTeamMember"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "projectTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": IntegerAttributeClass, // Shows the status of the project team."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project Team"]),
        "statusCode_display": StringAttributeClass, //
        "positionName": StringAttributeClass, // Type the name of the custom entity."]),
        "allocationMethod": StringAttributeClass, // Shows the allocation method used to book resources on the project (full capacity, percentage, and so on)."]),
        "allocationMethod_display": StringAttributeClass, //
        "assignedHours": StringAttributeClass, // Type the total assigned hours for project team member."]),
        "billingType": StringAttributeClass, // Select whether the team member is billable"]),
        "billingType_display": StringAttributeClass, //
        "bookableResourceId": UUIDAttributeClass, // Shows the resource."]),
        "calendarId": UUIDAttributeClass, // Shows the calendar used for staffing this project team."]),
        "from": StringAttributeClass, // Enter the resource team membership start date."]),
        "hardBookedHours": StringAttributeClass, // Hard Booked Hours"]),
        "hours": StringAttributeClass, // Duplicate for resource requirement"]),
        "hoursRequested": StringAttributeClass, // Shows the number of hours required of this team member on the project."]),
        "membershipStatus": StringAttributeClass, // Shows the membership status of this project team member."]),
        "membershipStatus_display": StringAttributeClass, //
        "MSProjectClientId": UUIDAttributeClass, // The id of the project team member in MS Project Client."]),
        "number": StringAttributeClass, // Shows the number of resources requested."]),
        "resourcingUnit": StringAttributeClass, // The organizational unit of the resource performing the work."]),
        "percentage": OOPAttributePercentage.descriptions(["en":"Duplicate for resource requirement"]),
        "project": StringAttributeClass, // Select the project that this team members are part of."]),
        "projectApprover": StringAttributeClass, // Select whether the team member can approve time and expenses."]),
        "requiredHours": StringAttributeClass, // Required hours of team member from team member requirement"]),
        "resourceCategory": StringAttributeClass, // Select the role this team member is playing in this team."]),
        "resourceRequirementId": UUIDAttributeClass, // Unique identifier for Resource Requirement associated with Project Team Member."]),
        "roleDescription": StringAttributeClass, // Enter a description of the role for this team member."]),
        "softBookedHours": StringAttributeClass, // Soft Booked Hours"]),
        "to": StringAttributeClass, // Enter the end date of the resource membership in a team."]),
        "workTemplate": StringAttributeClass, // Template to use for generic resource's schedule. Will be ignored if its a user or facility resource"]),
        "applicantCount": StringAttributeClass, // Shows the number of applicants for this project team."]),
        "applicantCountDate": DateAttributeClass, // Last Updated time of rollup field Applicant count."]),
        "applicantCountState": StringAttributeClass, // State of rollup field Applicant count."]),
        "applicantsAvailable": StringAttributeClass, // Shows if there are applicants available for this project team."]),
      ])
      .registerPath("project_teammembers");
  }
}
mixin(EntityCalls!("DPRJTeamMember"));


version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJTeamMember);
  
  auto entity = PRJTeamMember;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}