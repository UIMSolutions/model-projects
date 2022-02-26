module models.projects.entities.service_approval;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectServiceApprovals can be used to control access to specific objects.
class DPRJServiceApproval : DOOPEntity {
  mixin(OOPEntityThis!("PRJServiceApproval"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for the user that owns the record."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "actualEnd": OOPStringAttribute.descriptions(["en":"Actual end time of the activity."]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "isBilled": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was billed as part of resolving a case."]),
        "activityTypeCode": OOPAttributeInteger.descriptions(["en":"Type of activity."]),
        "activityTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the activity."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "scheduledEnd": OOPStringAttribute.descriptions(["en":"Scheduled end time of the activity."]),
        "scheduledDurationMinutes": OOPStringAttribute.descriptions(["en":"Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": OOPStringAttribute.descriptions(["en":"Actual duration of the activity in minutes."]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the activity."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "actualStart": OOPStringAttribute.descriptions(["en":"Actual start time of the activity."]),
        "priorityCode": OOPAttributeInteger.descriptions(["en":"Priority of the activity."]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "regardingObjectId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the object with which the activity is associated."]),
        "subject": OOPStringAttribute.descriptions(["en":"Subject associated with the activity."]),
        "isWorkflowCreated": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was created from a workflow rule."]),
        "scheduledStart": OOPStringAttribute.descriptions(["en":"Scheduled start time of the activity."]),
        "instanceTypeCode": OOPAttributeInteger.descriptions(["en":"Type of instance of a recurring series."]),
        "instanceTypeCode_display": OOPStringAttribute.descriptions(["en":""]),
        "seriesId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the recurring series of an instance."]),
        "isRegularActivity": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity is a regular activity type or event type."]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the activitypointer."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
        "leftVoiceMail": OOPStringAttribute.descriptions(["en":"Left the voice mail"]),
        "community": OOPStringAttribute.descriptions(["en":"Shows how contact about the social activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": OOPStringAttribute.descriptions(["en":""]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "isMapiPrivate": OOPAttributeBoolean.descriptions(["en":"For internal use only."]),
        "exchangeWebLink": OOPStringAttribute.descriptions(["en":"Shows the web link of Activity of type email."]),
        "exchangeItemId": OOPAttributeUUID.descriptions(["en":"The message id of activity which is returned from Exchange Server."]),
        "deliveryPriorityCode": OOPAttributeInteger.descriptions(["en":"Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "sentOn": OOPAttributeDatetime.descriptions(["en":"Date and time when the activity was sent."]),
        "deliveryLastAttemptedOn": OOPAttributeDatetime.descriptions(["en":"Date and time when the delivery of the activity was last attempted."]),
        "senderMailboxId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the mailbox associated with the sender of the email message."]),
        "postponeActivityProcessingUntil": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "processId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Process."]),
        "stageId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the Stage."]),
        "activityAdditionalParams": OOPStringAttribute.descriptions(["en":"Additional information provided by the external application as JSON. For internal use only."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date and time stamp of the last on hold time."]),
        "sortDate": OOPAttributeDate.descriptions(["en":"Shows the date and time by which the activities are sorted."]),
        "serviceId": OOPAttributeUUID.descriptions(["en":"Unique identifier of an associated service."]),
        "from": OOPStringAttribute.descriptions(["en":"Person who the activity is from."]),
        "to": OOPStringAttribute.descriptions(["en":"Person who is the receiver of the activity."]),
        "CC": OOPStringAttribute.descriptions(["en":"Carbon-copy (cc) recipients of the activity."]),
        "BCC": OOPStringAttribute.descriptions(["en":"Blind Carbon-copy (bcc) recipients of the activity."]),
        "requiredAttendees": OOPStringAttribute.descriptions(["en":"List of required attendees for the activity."]),
        "optionalAttendees": OOPStringAttribute.descriptions(["en":"List of optional attendees for the activity."]),
        "organizer": OOPStringAttribute.descriptions(["en":"Person who organized the activity."]),
        "resources": OOPStringAttribute.descriptions(["en":"Users or facility/equipment that are required for the activity."]),
        "customers": OOPStringAttribute.descriptions(["en":"Customer with which the activity is associated."]),
        "partners": OOPStringAttribute.descriptions(["en":"Outsource vendor with which activity is associated."]),
        "approvalStatus": OOPStringAttribute.descriptions(["en":"Shows the status of the approval."]),
        "approvalStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "characteristic": OOPStringAttribute.descriptions(["en":"Skill for approval"])
      ])
      .registerPath("project_serviceapprovals");
  }
}
mixin(OOPEntityCalls!("PRJServiceApproval"));

unittest {
  version(uim_entities) {
    assert(PRJServiceApproval);

  auto entity = PRJServiceApproval;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}