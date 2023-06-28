module models.projects.entities.formsetup;

import models.projects;

@safe:
class DProjectFormSetupEntity : DEntity {
  mixin(EntityThis!("ProjectFormSetupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "associatedPaymentAttachmentOnInvoice": StringAttribute, //
        "invoice": StringAttribute, //
        "packingSlip": StringAttribute, //
        "itemNumberInForms": StringAttribute, //
        "key": StringAttribute, //
        "printPackingSlipSpecificationsOnInvoice": StringAttribute, //
        "prePrintLevelInvoice": StringAttribute, //
        "printEuroAmount": StringAttribute, //
        "printTaxExemptNumberOnInvoice": StringAttribute, //
        "specifyIndexCalculation": StringAttribute, //
        "separateTaxExemptBalanceInForms": StringAttribute, //
        "salesTaxSpecification": StringAttribute, //
        "totalsFirstLastPage": StringAttribute, //
        "backingTable_ProjFormletterParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_formsetups");
  }
}
mixin(EntityCalls!("ProjectFormSetupEntity"));

version(test_model_portals) { unittest {
    assert(ProjectFormSetupEntity);
  
  auto entity = ProjectFormSetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}