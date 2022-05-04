module models.projects.entities.parameters.pricelist;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectParameterPriceLists can be used to control access to specific objects.
class DPRJParameterPriceList : DOOPEntity {
  mixin(EntityThis!("PRJParameterPriceList"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttributeClass, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttributeClass, // Unique identifier for the organization"]),
        "stateCode": IntegerAttributeClass, // Status of the Project Parameter Price List"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": IntegerAttributeClass, // Reason for the status of the Project Parameter Price List"]),
        "statusCode_display": StringAttributeClass, //
        "importSequenceNumber": NumberAttributeClass, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttributeClass, // Time zone code that was in use when the record was created."]),
        "priceList": StringAttributeClass, // Select the price list that is being associated to the project parameter record."]),
        "projectParameter": StringAttributeClass, // Select the project parameter record that this price list linked to."]),
      ])
      .registerPath("project_parameterpricelists");
  }
}
mixin(EntityCalls!("PRJParameterPriceList"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(PRJParameterPriceList);
  
  auto entity = PRJParameterPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}