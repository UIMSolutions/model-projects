module models.projects.entities.tasks.dependency;

import models.projects;
@safe:

// Dependency data between tasks.
class DPRJTaskDependency : DEntity {
  mixin(EntityThis!("PRJTaskDependency"));
  
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
        "projectTaskDependencyId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": IntegerAttribute, // Status of the Project Task Dependency"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Task Dependency"]),
        "statusCode_display": StringAttribute, //
        "linkType": StringAttribute, // Select the 'Finish to Start' type of dependency."]),
        "linkType_display": StringAttribute, //
        "predecessorTask": StringAttribute, // Select the task that other tasks are dependent on."]),
        "project": StringAttribute, // Select the project name."]),
        "successorTask": StringAttribute, // Select the task that has a dependency on another task."]),
      ])
      .registerPath("project_taskdependencies");
  }
}
mixin(EntityCalls!("PRJTaskDependency")); 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJTaskDependency);

  auto entity = PRJTaskDependency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}