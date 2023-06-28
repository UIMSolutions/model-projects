module models.projects.entities.parameters.parameter;

import models.projects;
@safe:

// Group of undeleted system users and undeleted teams. ProjectParameters can be used to control access to specific objects.
class DPRJParameter : DEntity {
  mixin(EntityThis!("PRJParameter"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        StateCodeAttribute, //
        StatusCodeAttribute, //
      ])
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "allowSkillUpdateByResource": StringAttribute, // Allow resources to update their skills via the Project Finder Mobile app."]),
        "defaultOrganizationalUnit": StringAttribute, // Select the default organizational unit that will be used for new resources."]),
        "defaultWorkTemplate": StringAttribute, // Select the default work template for new projects."]),
        "invoiceFrequency": StringAttribute, // Select the default frequency for generating invoices."]),
        "projectManagerRole": StringAttribute, // Shows the default role to be used when a project manager is added to the project team."]),
        "projectResourceRequirementsVisibleToRe": StringAttribute, // Select whether project resource requirements are visible to resources."]),
        "resourceAllocationMode": StringAttribute, // OOPAttributeLookup("aplProjectParameter_ResourceAllocationMode").descriptions(["en":""]),
        "teamMemberRole": StringAttribute, // Shows the default role to be used when a team member is added to the project team."]),
      ])
      .registerPath("project_parameters");
  }
}
mixin(EntityCalls!("PRJParameter"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJParameter);
  
  auto entity = PRJParameter;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), "entities"~"/"~entity.entityClasses~"/"~entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}