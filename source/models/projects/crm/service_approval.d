module models.projects.entities.service_approval;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectServiceApprovals can be used to control access to specific objects.
class DPRJServiceApproval : DOOPEntity {
  mixin(EntityThis!("PRJServiceApproval"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, //Unique identifier for the user that owns the record."]),
        "owningTeamId": UUIDAttributeClass, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "actualEnd": StringAttributeClass, // Actual end time of the activity."]),
        "activityId": UUIDAttributeClass, // aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "isBilled": BooleanAttributeClass, // Information regarding whether the activity was billed as part of resolving a case."]),
        "activityTypeCode": IntegerAttributeClass, // Type of activity."]),
        "activityTypeCode_display": StringAttributeClass, //
        "stateCode": IntegerAttributeClass, // Status of the activity."]),
        "stateCode_display": StringAttributeClass, //
        "scheduledEnd": StringAttributeClass, // Scheduled end time of the activity."]),
        "scheduledDurationMinutes": StringAttributeClass, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttributeClass, // Actual duration of the activity in minutes."]),
        "statusCode": IntegerAttributeClass, // Reason for the status of the activity."]),
        "statusCode_display": StringAttributeClass, //
        "actualStart": StringAttributeClass, // Actual start time of the activity."]),
        "priorityCode": IntegerAttributeClass, // Priority of the activity."]),
        "priorityCode_display": StringAttributeClass, //
        "regardingObjectId": UUIDAttributeClass, // Unique identifier of the object with which the activity is associated."]),
        "subject": StringAttributeClass, // Subject associated with the activity."]),
        "isWorkflowCreated": BooleanAttributeClass, // Information regarding whether the activity was created from a workflow rule."]),
        "scheduledStart": StringAttributeClass, // Scheduled start time of the activity."]),
        "instanceTypeCode": IntegerAttributeClass, // Type of instance of a recurring series."]),
        "instanceTypeCode_display": StringAttributeClass, //
        "seriesId": UUIDAttributeClass, // Shows the ID of the recurring series of an instance."]),
        "isRegularActivity": BooleanAttributeClass, // Information regarding whether the activity is a regular activity type or event type."]),
        "transactionCurrencyId": CurrencyIdAttributeClass, // Unique identifier of the currency associated with the activitypointer."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
        "leftVoiceMail": StringAttributeClass, // Left the voice mail"]),
        "community": StringAttributeClass, // Shows how contact about the social activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": StringAttributeClass, //
        "traversedPath": StringAttributeClass, // For internal use only."]),
        "isMapiPrivate": BooleanAttributeClass, // For internal use only."]),
        "exchangeWebLink": StringAttributeClass, // Shows the web link of Activity of type email."]),
        "exchangeItemId": UUIDAttributeClass, // The message id of activity which is returned from Exchange Server."]),
        "deliveryPriorityCode": IntegerAttributeClass, // Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttributeClass, //
        "sentOn": DatetimeAttributeClass, // Date and time when the activity was sent."]),
        "deliveryLastAttemptedOn": DatetimeAttributeClass, // Date and time when the delivery of the activity was last attempted."]),
        "senderMailboxId": UUIDAttributeClass, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "postponeActivityProcessingUntil": StringAttributeClass, // For internal use only."]),
        "processId": UUIDAttributeClass, // Unique identifier of the Process."]),
        "stageId": UUIDAttributeClass, // Unique identifier of the Stage."]),
        "activityAdditionalParams": StringAttributeClass, // Additional information provided by the external application as JSON. For internal use only."]),
        "SLAId": UUIDAttributeClass, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date and time stamp of the last on hold time."]),
        "sortDate": DateAttributeClass, // Shows the date and time by which the activities are sorted."]),
        "serviceId": UUIDAttributeClass, // Unique identifier of an associated service."]),
        "from": StringAttributeClass, // Person who the activity is from."]),
        "to": StringAttributeClass, // Person who is the receiver of the activity."]),
        "CC": StringAttributeClass, // Carbon-copy (cc) recipients of the activity."]),
        "BCC": StringAttributeClass, // Blind Carbon-copy (bcc) recipients of the activity."]),
        "requiredAttendees": StringAttributeClass, // List of required attendees for the activity."]),
        "optionalAttendees": StringAttributeClass, // List of optional attendees for the activity."]),
        "organizer": StringAttributeClass, // Person who organized the activity."]),
        "resources": StringAttributeClass, // Users or facility/equipment that are required for the activity."]),
        "customers": StringAttributeClass, // Customer with which the activity is associated."]),
        "partners": StringAttributeClass, // Outsource vendor with which activity is associated."]),
        "approvalStatus": StringAttributeClass, // Shows the status of the approval."]),
        "approvalStatus_display": StringAttributeClass, //
        "characteristic": StringAttributeClass, // Skill for approval"])
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