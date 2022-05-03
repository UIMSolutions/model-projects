module models.projects.entities.parameters.parameter;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectParameters can be used to control access to specific objects.
class DPRJParameter : DOOPEntity {
  mixin(EntityThis!("PRJParameter"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPAttributeLookup("aplProjectParameter_StateCode").descriptions(["en":""]),
        "statusCode": OOPAttributeLookup("aplProjectParameter_StatusCode").descriptions(["en":""]),
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "allowSkillUpdateByResource": StringAttributeClass, // Allow resources to update their skills via the Project Finder Mobile app."]),
        "defaultOrganizationalUnit": StringAttributeClass, // Select the default organizational unit that will be used for new resources."]),
        "defaultWorkTemplate": StringAttributeClass, // Select the default work template for new projects."]),
        "invoiceFrequency": StringAttributeClass, // Select the default frequency for generating invoices."]),
        "projectManagerRole": StringAttributeClass, // Shows the default role to be used when a project manager is added to the project team."]),
        "projectResourceRequirementsVisibleToRe": StringAttributeClass, // Select whether project resource requirements are visible to resources."]),
        "resourceAllocationMode": OOPAttributeLookup("aplProjectParameter_ResourceAllocationMode").descriptions(["en":""]),
        "teamMemberRole": StringAttributeClass, // Shows the default role to be used when a team member is added to the project team."]),
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