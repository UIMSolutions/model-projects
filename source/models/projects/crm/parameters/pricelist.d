module models.projects.entities.parameters.pricelist;

import models.projects;
@safe:

// Group of undeleted system users and undeleted teams. ProjectParameterPriceLists can be used to control access to specific objects.
class DPRJParameterPriceList : DEntity {
  mixin(EntityThis!("PRJParameterPriceList"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": IntegerAttribute, // Status of the Project Parameter Price List"]),
        "stateCode_display": StringAttribute, //
        "statusCode": IntegerAttribute, // Reason for the status of the Project Parameter Price List"]),
        "statusCode_display": StringAttribute, //
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "priceList": StringAttribute, // Select the price list that is being associated to the project parameter record."]),
        "projectParameter": StringAttribute, // Select the project parameter record that this price list linked to."]),
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