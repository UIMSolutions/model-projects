module models.projects.entities.cds.contracts.linemilestoneimport;

@safe:
import models.projects;

class DProjectCDSContractLineMilestoneImportEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSContractLineMilestoneImportEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "transactionId": UUIDAttribute, //
        "contractLineRef": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "description": StringAttribute, //
        "currencyId": UUIDAttribute, //
        "amount": StringAttribute, //
        "backingTable_ProjCDSContractLineMilestoneImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cdscontractlinemilestoneimports");
  }
}
mixin(EntityCalls!("ProjectCDSContractLineMilestoneImportEntity"));

version(test_model_portals) { unittest {
    assert(ProjectCDSContractLineMilestoneImportEntity);
  
  auto entity = ProjectCDSContractLineMilestoneImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}