module models.projects.entities.taxes.tabletranstaxinformation;

import models.projects;

@safe:
class DProjectTaxTableTransTaxInformationEntity : DEntity {
  mixin(EntityThis!("ProjectTaxTableTransTaxInformationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectId": UUIDAttribute, //
        "bankLocation": StringAttribute, //
        "bankTaxInformation": StringAttribute, //
        "companyLocation": StringAttribute, //
        "companyTaxInformation": StringAttribute, //
        "cstSchedule": StringAttribute, //
        "customerLocation": StringAttribute, //
        "customerTaxInformation": StringAttribute, //
        "customsIECRegistrationNumber": StringAttribute, //
        "customsTariffCode": StringAttribute, //
        "customsTariffDirection": StringAttribute, //
        "direction": StringAttribute, //
        "exciseCENVATCreditAvailed": StringAttribute, //
        "exciseConsignment": StringAttribute, //
        "exciseDirectSettlement": StringAttribute, //
        "exciseDisposalType": StringAttribute, //
        "exciseDSA": StringAttribute, //
        "exciseECCRegistrationNumber": StringAttribute, //
        "exciseIsScrap": StringAttribute, //
        "exciseRecordType": StringAttribute, //
        "exciseTariffCodes": StringAttribute, //
        "exciseType": StringAttribute, //
        "exempt": StringAttribute, //
        "gstinRegistrationNumber": StringAttribute, //
        "hsnCode": StringAttribute, //
        "inclTax": StringAttribute, //
        "itcCategory": StringAttribute, //
        "nonBusinessUsagePercentage": StringAttribute, //
        "salesTaxFormTypes": StringAttribute, //
        "salesTaxRegistrationNumber": StringAttribute, //
        "serviceAccountingCode": StringAttribute, //
        "serviceCategory": StringAttribute, //
        "serviceCode": StringAttribute, //
        "serviceTaxConsignmentNoteNum": StringAttribute, //
        "serviceTaxGTAServiceCategory": StringAttribute, //
        "serviceTaxIsRecoverable": StringAttribute, //
        "serviceTaxRegistrationNumber": StringAttribute, //
        "tanRegistrationNumber": StringAttribute, //
        "taxId": UUIDAttribute, //
        "taxInventVATItemId": UUIDAttribute, //
        "taxWithholdAcknowledgementNumber": StringAttribute, //
        "taxWithholdCountryRegionToRemittance": StringAttribute, //
        "taxWithholdNatureOfAssessee": StringAttribute, //
        "taxWithholdNatureOfRemittance": StringAttribute, //
        "taxWithholdSoftwareDeclReceived": StringAttribute, //
        "type": StringAttribute, //
        "vatCommodityCode": StringAttribute, //
        "vatGoodsType": StringAttribute, //
        "vatNonRecoverablePercent": StringAttribute, //
        "vatSchedule": StringAttribute, //
        "vatTINRegistrationNumber": StringAttribute, //
        "vendorLocation": StringAttribute, //
        "vendorTaxInformation": StringAttribute, //
        "backingTable_TransTaxInformationEntityRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_taxes.tabletranstaxinformation");
  }
}
mixin(EntityCalls!("ProjectTaxTableTransTaxInformationEntity"));

version(test_model_portals) { unittest {
    assert(ProjectTaxTableTransTaxInformationEntity);
  
  auto entity = ProjectTaxTableTransTaxInformationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}