module models.projects.entities.fundings.source;

@safe:
import models.projects;

class DProjectFundingSourceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectFundingSourceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "cashDiscount": StringAttribute, //
        "contactID": StringAttribute, //
        "projectContractID": StringAttribute, //
        "customerOrOrganization": StringAttribute, //
        "customerRequisition": StringAttribute, //
        "customerReference": StringAttribute, //
        "dimension": StringAttribute, //
        "dimensionAccount": StringAttribute, //
        "eInvoiceLineSpec": StringAttribute, //
        "fundingSourceId": StringAttribute, //
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
        "grantId": StringAttribute, //
        "retentionTermId": StringAttribute, //
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
        "invoiceLocationId": StringAttribute, //
        "invoiceLocation": StringAttribute, //
        "createDefaultFundingRule": StringAttribute, //
        "isPrimaryFundingSource": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "backingTable_ProjFundingSourceRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_costs.sales.sources");
  }
}
mixin(EntityCalls!("ProjectFundingSourceEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectFundingSourceEntity);
  
  auto entity = ProjectFundingSourceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}