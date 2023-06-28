module models.projects.entities.service_approval;

import models.projects;
@safe:

// Group of undeleted system users and undeleted teams. ProjectServiceApprovals can be used to control access to specific objects.
class DPRJServiceApproval : DEntity {
  mixin(EntityThis!("PRJServiceApproval"));
  
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
        "actualEnd": StringAttribute, // Actual end time of the activity."]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "isBilled": BooleanAttribute, // Information regarding whether the activity was billed as part of resolving a case."]),
        "activityTypeCode": IntegerAttribute, // Type of activity."]),
        "activityTypeCode_display": StringAttribute, //
        "stateCode": IntegerAttribute, // Status of the activity."]),
        "stateCode_display": StringAttribute, //
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity."]),
        "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes."]),
        "statusCode": IntegerAttribute, // Reason for the status of the activity."]),
        "statusCode_display": StringAttribute, //
        "actualStart": StringAttribute, // Actual start time of the activity."]),
        "priorityCode": IntegerAttribute, // Priority of the activity."]),
        "priorityCode_display": StringAttribute, //
        "regardingObjectId": UUIDAttribute, // Unique identifier of the object with which the activity is associated."]),
        "subject": StringAttribute, // Subject associated with the activity."]),
        "isWorkflowCreated": BooleanAttribute, // Information regarding whether the activity was created from a workflow rule."]),
        "scheduledStart": StringAttribute, // Scheduled start time of the activity."]),
        "instanceTypeCode": IntegerAttribute, // Type of instance of a recurring series."]),
        "instanceTypeCode_display": StringAttribute, //
        "seriesId": UUIDAttribute, // Shows the ID of the recurring series of an instance."]),
        "isRegularActivity": BooleanAttribute, // Information regarding whether the activity is a regular activity type or event type."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the activitypointer."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
        "leftVoiceMail": StringAttribute, // Left the voice mail"]),
        "community": StringAttribute, // Shows how contact about the social activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": StringAttribute, //
        "traversedPath": StringAttribute, // For internal use only."]),
        "isMapiPrivate": BooleanAttribute, // For internal use only."]),
        "exchangeWebLink": StringAttribute, // Shows the web link of Activity of type email."]),
        "exchangeItemId": UUIDAttribute, // The message id of activity which is returned from Exchange Server."]),
        "deliveryPriorityCode": IntegerAttribute, // Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttribute, //
        "sentOn": DatetimeAttribute, // Date and time when the activity was sent."]),
        "deliveryLastAttemptedOn": DatetimeAttribute, // Date and time when the delivery of the activity was last attempted."]),
        "senderMailboxId": UUIDAttribute, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "postponeActivityProcessingUntil": StringAttribute, // For internal use only."]),
        "processId": UUIDAttribute, // Unique identifier of the Process."]),
        "stageId": UUIDAttribute, // Unique identifier of the Stage."]),
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only."]),
        "SLAId": UUIDAttribute, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time."]),
        "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted."]),
        "serviceId": UUIDAttribute, // Unique identifier of an associated service."]),
        "from": StringAttribute, // Person who the activity is from."]),
        "to": StringAttribute, // Person who is the receiver of the activity."]),
        "CC": StringAttribute, // Carbon-copy (cc) recipients of the activity."]),
        "BCC": StringAttribute, // Blind Carbon-copy (bcc) recipients of the activity."]),
        "requiredAttendees": StringAttribute, // List of required attendees for the activity."]),
        "optionalAttendees": StringAttribute, // List of optional attendees for the activity."]),
        "organizer": StringAttribute, // Person who organized the activity."]),
        "resources": StringAttribute, // Users or facility/equipment that are required for the activity."]),
        "customers": StringAttribute, // Customer with which the activity is associated."]),
        "partners": StringAttribute, // Outsource vendor with which activity is associated."]),
        "approvalStatus": StringAttribute, // Shows the status of the approval."]),
        "approvalStatus_display": StringAttribute, //
        "characteristic": StringAttribute, // Skill for approval"])
      ])
      .registerPath("project_serviceapprovals");
  }
}
mixin(EntityCalls!("PRJServiceApproval"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJServiceApproval);

  auto entity = PRJServiceApproval;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}