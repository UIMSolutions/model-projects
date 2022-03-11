module models.projects.entities.parameters.pricelist;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectParameterPriceLists can be used to control access to specific objects.
class DPRJParameterPriceList : DOOPEntity {
  mixin(OOPEntityThis!("PRJParameterPriceList"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Parameter Price List"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Parameter Price List"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "priceList": OOPStringAttribute.descriptions(["en":"Select the price list that is being associated to the project parameter record."]),
        "projectParameter": OOPStringAttribute.descriptions(["en":"Select the project parameter record that this price list linked to."]),
      ])
      .registerPath("project_parameterpricelists");
  }
}
mixin(OOPEntityCalls!("PRJParameterPriceList"));

unittest {
  version(uim_entities) {
    assert(PRJParameterPriceList);
  
  auto entity = PRJParameterPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}