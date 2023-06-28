module models.projects.entities.fundings.source;

import models.projects;

@safe:
class DProjectFundingSourceEntity : DEntity {
  mixin(EntityThis!("ProjectFundingSourceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "cashDiscount": StringAttribute, //
        "contactId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "customerOrOrganization": StringAttribute, //
        "customerRequisition": StringAttribute, //
        "customerReference": StringAttribute, //
        "dimension": StringAttribute, //
        "dimensionAccount": StringAttribute, //
        "eInvoiceLineSpec": StringAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "fundingType": StringAttribute, //
        "associatedPaymentAttachmentOnTheProjectInvoice": StringAttribute, //
        "individualBufferDays": StringAttribute, //
        "invoiceName": StringAttribute, //
        "language": StringAttribute, //
        "numberSequenceGroup": StringAttribute, //
        "name": StringAttribute, //
        "paymentSchedule": StringAttribute, //
        "termsOfPayment": StringAttribute, //
        "postingProfile": StringAttribute, //
        "projectGrant": StringAttribute, //
        "customerPaymentRetentionTerms": StringAttribute, //
        "invoiceFormat": StringAttribute, //
        "vatReportDateCode": StringAttribute, //
        "partyNumber": StringAttribute, //
        "grantId": UUIDAttribute, //
        "retentionTermId": UUIDAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "addressTimeZone": StringAttribute, //
        "addressDescription": StringAttribute, //
        "addressCountry": StringAttribute, //
        "addressCountryISOCode": StringAttribute, //
        "addressState": StringAttribute, //
        "addressCounty": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressStreet": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLatitude": StringAttribute, //
        "addressLongitude": StringAttribute, //
        "addressValidTo": StringAttribute, //
        "addressValidFrom": StringAttribute, //
        "invoiceLocationId": UUIDAttribute, //
        "invoiceLocation": StringAttribute, //
        "createDefaultFundingRule": StringAttribute, //
        "isPrimaryFundingSource": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "backingTable_ProjFundingSourceRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
    .registerPath("projects_costs.sales.sources");
  }
}
mixin(EntityCalls!("ProjectFundingSourceEntity"));

version(test_model_portals) { unittest {
    assert(ProjectFundingSourceEntity);
  
  auto entity = ProjectFundingSourceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}