module models.projects.entities.teammembers.teammember;

import models.projects;

@safe:
class DPRJTeamMember : DEntity {
  mixin(EntityThis!("PRJTeamMember"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "projectTeamId": UUIDAttribute, //Unique identifier for entity instances"]),
        "stateCode": IntegerAttribute, // Shows the status of the project team."]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Team"]),
        "statusCode_display": StringAttribute, //
        "positionName": StringAttribute, // Type the name of the custom entity."]),
        "allocationMethod": StringAttribute, // Shows the allocation method used to book resources on the project (full capacity, percentage, and so on)."]),
        "allocationMethod_display": StringAttribute, //
        "assignedHours": StringAttribute, // Type the total assigned hours for project team member."]),
        "billingType": StringAttribute, // Select whether the team member is billable"]),
        "billingType_display": StringAttribute, //
        "bookableResourceId": UUIDAttribute, // Shows the resource."]),
        "calendarId": UUIDAttribute, // Shows the calendar used for staffing this project team."]),
        "from": StringAttribute, // Enter the resource team membership start date."]),
        "hardBookedHours": StringAttribute, // Hard Booked Hours"]),
        "hours": StringAttribute, // Duplicate for resource requirement"]),
        "hoursRequested": StringAttribute, // Shows the number of hours required of this team member on the project."]),
        "membershipStatus": StringAttribute, // Shows the membership status of this project team member."]),
        "membershipStatus_display": StringAttribute, //
        "MSProjectClientId": UUIDAttribute, // The id of the project team member in MS Project Client."]),
        "number": StringAttribute, // Shows the number of resources requested."]),
        "resourcingUnit": StringAttribute, // The organizational unit of the resource performing the work."]),
        "percentage": PercentageAttribute, // Duplicate for resource requirement"]),
        "project": StringAttribute, // Select the project that this team members are part of."]),
        "projectApprover": StringAttribute, // Select whether the team member can approve time and expenses."]),
        "requiredHours": StringAttribute, // Required hours of team member from team member requirement"]),
        "resourceCategory": StringAttribute, // Select the role this team member is playing in this team."]),
        "resourceRequirementId": UUIDAttribute, // Unique identifier for Resource Requirement associated with Project Team Member."]),
        "roleDescription": StringAttribute, // Enter a description of the role for this team member."]),
        "softBookedHours": StringAttribute, // Soft Booked Hours"]),
        "to": StringAttribute, // Enter the end date of the resource membership in a team."]),
        "workTemplate": StringAttribute, // Template to use for generic resource's schedule. Will be ignored if its a user or facility resource"]),
        "applicantCount": StringAttribute, // Shows the number of applicants for this project team."]),
        "applicantCountDate": DateAttribute, // Last Updated time of rollup field Applicant count."]),
        "applicantCountState": StringAttribute, // State of rollup field Applicant count."]),
        "applicantsAvailable": StringAttribute, // Shows if there are applicants available for this project team."]),
      ])
      .registerPath("project_teammembers");
  }
}
mixin(EntityCalls!("PRJTeamMember"));


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