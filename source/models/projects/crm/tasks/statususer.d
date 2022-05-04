module models.projects.entities.tasks.statususer;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectTaskStatusUsers can be used to control access to specific objects.
class DPRJProjectTaskStatusUser : DOOPEntity {
  mixin(EntityThis!("PRJProjectTaskStatusUser"));
  
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
        "projectTaskStatusUserId": UUIDAttributeClass, //Unique identifier for entity instances"]),
        "stateCode": IntegerAttributeClass, // Status of the Project Task Status User"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project Task Status User"]),
        "statusCode_display": StringAttributeClass, //
        "bookableResource": StringAttributeClass, //
        "expectedCompletionDate": DateAttributeClass, // Shows the expected completion date of the task entered by the assigned resource."]),
        "expectedHoursToComplete": StringAttributeClass, // Shows the expected hours to complete the task entered by the assigned resource."]),
        "isCompleted": BooleanAttributeClass, // Shows if the task is completed."]),
        "percentComplete": StringAttributeClass, // Shows the reported percentage complete for the project task."]),
        "projectTaskId": UUIDAttributeClass, // Unique identifier for Project Task associated with Project Task Status User."]),
        "projectTaskStatusIndicator": StringAttributeClass, // Indicates the status of the project task reported by the user resource."]),
        "projectTaskStatusIndicator_display": StringAttributeClass, //
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