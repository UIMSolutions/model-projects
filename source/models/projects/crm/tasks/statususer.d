module models.projects.entities.tasks.statususer;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectTaskStatusUsers can be used to control access to specific objects.
class DPRJProjectTaskStatusUser : DOOPEntity {
  mixin(EntityThis!("PRJProjectTaskStatusUser"));
  
  override void initialize() {
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
        "projectTaskStatusUserId": UUIDAttribute, //Unique identifier for entity instances"]),
        "stateCode": IntegerAttribute, // Status of the Project Task Status User"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Task Status User"]),
        "statusCode_display": StringAttribute, //
        "bookableResource": StringAttribute, //
        "expectedCompletionDate": DateAttribute, // Shows the expected completion date of the task entered by the assigned resource."]),
        "expectedHoursToComplete": StringAttribute, // Shows the expected hours to complete the task entered by the assigned resource."]),
        "isCompleted": BooleanAttribute, // Shows if the task is completed."]),
        "percentComplete": StringAttribute, // Shows the reported percentage complete for the project task."]),
        "projectTaskId": UUIDAttribute, // Unique identifier for Project Task associated with Project Task Status User."]),
        "projectTaskStatusIndicator": StringAttribute, // Indicates the status of the project task reported by the user resource."]),
        "projectTaskStatusIndicator_display": StringAttribute, //
      ])
      .registerPath("project_taskstatususers");
  }
}
mixin(EntityCalls!("PRJProjectTaskStatusUser"));


version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJProjectTaskStatusUser);

  auto entity = PRJProjectTaskStatusUser;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}