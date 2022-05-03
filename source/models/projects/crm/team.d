module models.projects.entities.team;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectTeams can be used to control access to specific objects.
class DPRJTeam : DOOPEntity {
  mixin(EntityThis!("PRJTeam"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "projectTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": IntegerAttributeClass, // Shows the status of the project team."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project Team"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "positionName": OOPStringAttribute.descriptions(["en":"Type the name of the custom entity."]),
        "allocationMethod": OOPStringAttribute.descriptions(["en":"Shows the allocation method used to book resources on the project (full capacity, percentage, and so on)."]),
        "allocationMethod_display": OOPStringAttribute.descriptions(["en":""]),
        "assignedHours": OOPStringAttribute.descriptions(["en":"Type the total assigned hours for project team member."]),
        "billingType": OOPStringAttribute.descriptions(["en":"Select whether the team member is billable"]),
        "billingType_display": OOPStringAttribute.descriptions(["en":""]),
        "bookableResourceId": UUIDAttributeClass, // Shows the resource."]),
        "calendarId": UUIDAttributeClass, // Shows the calendar used for staffing this project team."]),
        "from": OOPStringAttribute.descriptions(["en":"Enter the resource team membership start date."]),
        "hardBookedHours": OOPStringAttribute.descriptions(["en":"Hard Booked Hours"]),
        "hours": OOPStringAttribute.descriptions(["en":"Duplicate for resource requirement"]),
        "hoursRequested": OOPStringAttribute.descriptions(["en":"Shows the number of hours required of this team member on the project."]),
        "membershipStatus": OOPStringAttribute.descriptions(["en":"Shows the membership status of this project team member."]),
        "membershipStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "MSProjectClientId": UUIDAttributeClass, // The id of the project team member in MS Project Client."]),
        "number": OOPStringAttribute.descriptions(["en":"Shows the number of resources requested."]),
        "resourcingUnit": OOPStringAttribute.descriptions(["en":"The organizational unit of the resource performing the work."]),
        "percentage": OOPAttributePercentage.descriptions(["en":"Duplicate for resource requirement"]),
        "project": OOPStringAttribute.descriptions(["en":"Select the project that this team members are part of."]),
        "projectApprover": OOPStringAttribute.descriptions(["en":"Select whether the team member can approve time and expenses."]),
        "requiredHours": OOPStringAttribute.descriptions(["en":"Required hours of team member from team member requirement"]),
        "resourceCategory": OOPStringAttribute.descriptions(["en":"Select the role this team member is playing in this team."]),
        "resourceRequirementId": UUIDAttributeClass, // Unique identifier for Resource Requirement associated with Project Team Member."]),
        "roleDescription": OOPStringAttribute.descriptions(["en":"Enter a description of the role for this team member."]),
        "softBookedHours": OOPStringAttribute.descriptions(["en":"Soft Booked Hours"]),
        "to": OOPStringAttribute.descriptions(["en":"Enter the end date of the resource membership in a team."]),
        "workTemplate": OOPStringAttribute.descriptions(["en":"Template to use for generic resource's schedule. Will be ignored if its a user or facility resource"]),
        "applicantCount": OOPStringAttribute.descriptions(["en":"Shows the number of applicants for this project team."]),
        "applicantCountDate": DateAttributeClass, // Last Updated time of rollup field Applicant count."]),
        "applicantCountState": OOPStringAttribute.descriptions(["en":"State of rollup field Applicant count."]),
        "applicantsAvailable": OOPStringAttribute.descriptions(["en":"Shows if there are applicants available for this project team."]),
      ])
      .registerPath("project_teams");
  }
}
mixin(EntityCalls!("PRJTeam"));

unittest {
  version(uim_entities) {
    assert(PRJTeam);

  auto entity = PRJTeam;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}