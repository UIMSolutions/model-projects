module models.projects.entities.tasks.dependency;

@safe:
import models.projects;

// Dependency data between tasks.
class DPRJTaskDependency : DOOPEntity {
  mixin(EntityThis!("PRJTaskDependency"));
  
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
        "projectTaskDependencyId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Task Dependency"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Task Dependency"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "linkType": OOPStringAttribute.descriptions(["en":"Select the 'Finish to Start' type of dependency."]),
        "linkType_display": OOPStringAttribute.descriptions(["en":""]),
        "predecessorTask": OOPStringAttribute.descriptions(["en":"Select the task that other tasks are dependent on."]),
        "project": OOPStringAttribute.descriptions(["en":"Select the project name."]),
        "successorTask": OOPStringAttribute.descriptions(["en":"Select the task that has a dependency on another task."]),
      ])
      .registerPath("project_taskdependencies");
  }
}
mixin(EntityCalls!("PRJTaskDependency")); 

unittest {
  version(uim_entities) {
    assert(PRJTaskDependency);

  auto entity = PRJTaskDependency;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}