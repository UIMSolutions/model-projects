module models.projects.entities.tasks.statususer;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectTaskStatusUsers can be used to control access to specific objects.
class DPRJProjectTaskStatusUser : DOOPEntity {
  mixin(EntityThis!("PRJProjectTaskStatusUser"));
  
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
        "projectTaskStatusUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Task Status User"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Task Status User"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "bookableResource": OOPStringAttribute.descriptions(["en":""]),
        "expectedCompletionDate": OOPAttributeDate.descriptions(["en":"Shows the expected completion date of the task entered by the assigned resource."]),
        "expectedHoursToComplete": OOPStringAttribute.descriptions(["en":"Shows the expected hours to complete the task entered by the assigned resource."]),
        "isCompleted": OOPAttributeBoolean.descriptions(["en":"Shows if the task is completed."]),
        "percentComplete": OOPStringAttribute.descriptions(["en":"Shows the reported percentage complete for the project task."]),
        "projectTaskId": OOPAttributeUUID.descriptions(["en":"Unique identifier for Project Task associated with Project Task Status User."]),
        "projectTaskStatusIndicator": OOPStringAttribute.descriptions(["en":"Indicates the status of the project task reported by the user resource."]),
        "projectTaskStatusIndicator_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("project_taskstatususers");
  }
}
mixin(EntityCalls!("PRJProjectTaskStatusUser"));


unittest {
  version(uim_entities) {
    assert(PRJProjectTaskStatusUser);

  auto entity = PRJProjectTaskStatusUser;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}