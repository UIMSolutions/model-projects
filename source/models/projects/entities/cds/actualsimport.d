module models.projects.entities.cds.actualsimport;


import models.projects;

@safe:
class DProjectCDSActualsImportEntity : DEntity {
  mixin(EntityThis!("ProjectCDSActualsImportEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "accountingDate": DateAttribute, //
        "actualId": UUIDAttribute, //
        "actualsImportId": UUIDAttribute, //
        "adjustmentStatus": StringAttribute, //
        "amount": StringAttribute, //
        "amountMST": StringAttribute, //
        "billingStatusId": UUIDAttribute, //
        "billingType": StringAttribute, //
        "contractId": UUIDAttribute, //
        "contractLine": StringAttribute, //
        "contractingUnit": StringAttribute, //
        "description": StringAttribute, //
        "documentDate": DateAttribute, //
        "endDate": DateAttribute, //
        "exchangeRateDate": DateAttribute, //
        "exchangeRate": StringAttribute, //
        "externalDescription": StringAttribute, //
        "externalReference": StringAttribute, //
        "invoiceId": UUIDAttribute, //
        "isJournalized": StringAttribute, //
        "owningBusinessId": UUIDAttribute, //
        "owningUser": StringAttribute, //
        "projectId": UUIDAttribute, //
        "quantity": StringAttribute, //
        "status": StringAttribute, //
        "statusReason": StringAttribute, //
        "startDate": DateAttribute, //
        "taskId": UUIDAttribute, //
        "transactionClassification": StringAttribute, //
        "transactionCategory": StringAttribute, //
        "transactionCurrencyId": UUIDAttribute, //
        "unitOfMeasure": StringAttribute, //
        "transType": StringAttribute, //
        "unitPrice": StringAttribute, //
        "unitPriceMST": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "resourceOperationUnitId": UUIDAttribute, //
        "voucher": StringAttribute, //
        "projectDataAreaId": UUIDAttribute, //
        "isDuplicate": StringAttribute, //
        "backingTable_ProjCDSActualsImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cdsactualsimports");
  }
}
mixin(EntityCalls!("ProjectCDSActualsImportEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSActualsImportEntity);
  
  auto entity = ProjectCDSActualsImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}