module models.projects.entities.xxx.TaxProjJournalTransTransTaxInformation;

@safe:
import models.projects;

class DProjectTaxJournalTransTaxInformationEntity : DOOPEntity {
  mixin(EntityThis!("ProjectTaxJournalTransTaxInformationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "JournalId": StringAttribute, //
        "LineNum": StringAttribute, //
        "Exempt": StringAttribute, //
        "VendorTaxInformation": StringAttribute, //
        "BankLocation": StringAttribute, //
        "BankTaxInformation": StringAttribute, //
        "CompanyLocation": StringAttribute, //
        "CompanyTaxInformation": StringAttribute, //
        "CSTSchedule": StringAttribute, //
        "CustomerLocation": StringAttribute, //
        "CustomerTaxInformation": StringAttribute, //
        "CustomsIECRegistrationNumber": StringAttribute, //
        "CustomsTariffCode": StringAttribute, //
        "CustomsTariffDirection": StringAttribute, //
        "Direction": StringAttribute, //
        "ExciseCENVATCreditAvailed": StringAttribute, //
        "ExciseConsignment": StringAttribute, //
        "ExciseDirectSettlement": StringAttribute, //
        "ExciseDisposalType": StringAttribute, //
        "ExciseDSA": StringAttribute, //
        "ExciseECCRegistrationNumber": StringAttribute, //
        "ExciseIsScrap": StringAttribute, //
        "ExciseRecordType": StringAttribute, //
        "ExciseTariffCodes": StringAttribute, //
        "ExciseType": StringAttribute, //
        "GSTINRegistrationNumber": StringAttribute, //
        "HSNCode": StringAttribute, //
        "InclTax": StringAttribute, //
        "ITCCategory": StringAttribute, //
        "NonBusinessUsagePercentage": StringAttribute, //
        "SalesTaxFormTypes": StringAttribute, //
        "SalesTaxRegistrationNumber": StringAttribute, //
        "ServiceAccountingCode": StringAttribute, //
        "ServiceCategory": StringAttribute, //
        "ServiceCode": StringAttribute, //
        "ServiceTaxConsignmentNoteNum": StringAttribute, //
        "ServiceTaxGTAServiceCategory": StringAttribute, //
        "ServiceTaxIsRecoverable": StringAttribute, //
        "ServiceTaxRegistrationNumber": StringAttribute, //
        "TANRegistrationNumber": StringAttribute, //
        "TaxID": StringAttribute, //
        "TaxInventVATItemId": StringAttribute, //
        "TaxWithholdAcknowledgementNumber": StringAttribute, //
        "TaxWithholdCountryRegionToRemittance": StringAttribute, //
        "TaxWithholdNatureOfAssessee": StringAttribute, //
        "TaxWithholdNatureOfRemittance": StringAttribute, //
        "TaxWithholdSoftwareDeclReceived": StringAttribute, //
        "Type": StringAttribute, //
        "VATCommodityCode": StringAttribute, //
        "VATGoodsType": StringAttribute, //
        "VATNonRecoverablePercent": StringAttribute, //
        "VATSchedule": StringAttribute, //
        "VATTINRegistrationNumber": StringAttribute, //
        "VendorLocation": StringAttribute, //
        "BackingTable_TransTaxInformationEntityRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_itemjournaltrans");
  }
}
mixin(EntityCalls!("ProjectTaxJournalTransTaxInformationEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectTaxJournalTransTaxInformationEntity);
  
  auto entity = ProjectTaxJournalTransTaxInformationEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}