module models.projects.entities.cds.transactionrelationshipimport;

import models.projects;

@safe:
class DProjectCDSTransactionRelationshipImportEntity : DEntity {
  mixin(EntityThis!("ProjectCDSTransactionRelationshipImportEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "connectionId": UUIDAttribute, //
        "transaction1Id": UUIDAttribute, //
        "transaction1Role": StringAttribute, //
        "transaction1Type": StringAttribute, //
        "transaction2Id": UUIDAttribute, //
        "transaction2Role": StringAttribute, //
        "transaction2Type": StringAttribute, //
        "backingTable_ProjCDSTransactionRelationshipImportRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.transaction.relationship.imports");
  }
}
mixin(EntityCalls!("ProjectCDSTransactionRelationshipImportEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSTransactionRelationshipImportEntity);
  
  auto entity = ProjectCDSTransactionRelationshipImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}
