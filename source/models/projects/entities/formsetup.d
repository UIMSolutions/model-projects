module models.projects.entities.formsetup;

@safe:
import models.projects;

class DProjectFormSetupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectFormSetupEntity"));

  override void initialize() {
    super.initialize;

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
        "backingTable_ProjFormletterParametersRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_formsetups");
  }
}
mixin(EntityCalls!("ProjectFormSetupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectFormSetupEntity);
  
  auto entity = ProjectFormSetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}