module models.projects.entities.pma.cds.actualsImport;


@safe:
import models.projects;

class DProjectCDSActualsImportEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSActualsImportEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AccountingDate": StringAttribute, //
        "ActualId": StringAttribute, //
        "ActualsImportId": StringAttribute, //
        "AdjustmentStatus": StringAttribute, //
        "Amount": StringAttribute, //
        "AmountMST": StringAttribute, //
        "BillingStatusId": StringAttribute, //
        "BillingType": StringAttribute, //
        "ContractId": StringAttribute, //
        "ContractLine": StringAttribute, //
        "ContractingUnit": StringAttribute, //
        "Description": StringAttribute, //
        "DocumentDate": StringAttribute, //
        "EndDate": StringAttribute, //
        "ExchangeRateDate": StringAttribute, //
        "ExchangeRate": StringAttribute, //
        "ExternalDescription": StringAttribute, //
        "ExternalReference": StringAttribute, //
        "InvoiceId": StringAttribute, //
        "IsJournalized": StringAttribute, //
        "OwningBusinessId": StringAttribute, //
        "OwningUser": StringAttribute, //
        "ProjectId": StringAttribute, //
        "Quantity": StringAttribute, //
        "Status": StringAttribute, //
        "StatusReason": StringAttribute, //
        "StartDate": StringAttribute, //
        "TaskId": StringAttribute, //
        "TransactionClassification": StringAttribute, //
        "TransactionCategory": StringAttribute, //
        "TransactionCurrencyId": StringAttribute, //
        "UnitOfMeasure": StringAttribute, //
        "TransType": StringAttribute, //
        "UnitPrice": StringAttribute, //
        "UnitPriceMST": StringAttribute, //
        "ResourceId": StringAttribute, //
        "ResourceOperationUnitId": StringAttribute, //
        "Voucher": StringAttribute, //
        "ProjectDataAreaId": StringAttribute, //
        "IsDuplicate": StringAttribute, //
        "BackingTable_ProjCDSActualsImportRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_cdsactualsimports");
  }
}
mixin(EntityCalls!("ProjectCDSActualsImportEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSActualsImportEntity);
  
  auto entity = ProjectCDSActualsImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}