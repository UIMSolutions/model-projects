module models.projects.entities.price_list;

@safe:
import models.projects;

class DPRJPriceList : DOOPEntity {
  mixin(OOPEntityThis!("PRJPriceList"));
  
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
        "projectPriceListId": OOPAttributeUUID.descriptions(["en":"Unique identifier for entity instances"]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Status of the Project Price List"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Reason for the status of the Project Price List"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "priceList": OOPStringAttribute.descriptions(["en":"Shows the name of the project price list."]),
        "project": OOPStringAttribute.descriptions(["en":"Shows the project for the project price list."]),
      ])
      .registerPath("project_pricelists");
  }
}
mixin(OOPEntityCalls!("PRJPriceList"));

unittest {
  version(uim_entities) {
    assert(PRJPriceList);

  auto entity = PRJPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}