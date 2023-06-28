module models.projects.entities.ledgerpostingdefinition;

import models.projects;

@safe:
class DProjectLedgerPostingDefinitionEntity : DEntity {
  mixin(EntityThis!("ProjectLedgerPostingDefinitionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "projectAccountType": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectGroup": StringAttribute, //
        "categoryId": UUIDAttribute, //
        "categoryGroup": StringAttribute, //
        "projFundingSource": StringAttribute, //
        "taxGroupId": UUIDAttribute, //
        "projectContractId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "mainAccountIdDisplayValue": StringAttribute, //
        "mainAccountId": UUIDAttribute, //
        "projCode": StringAttribute, //
        "categoryCode": StringAttribute, //
        "projRelation": StringAttribute, //
        "projCategoryRelation": StringAttribute, //
        "borrowingLegalEntity": StringAttribute, //
        "lendingLegalEntity": StringAttribute, //
        "relationship_MainAccountIdCombinationRelationshipId": UUIDAttribute, //
        "backingTable_ProjPostingRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_journalnames");
  }
}
mixin(EntityCalls!("ProjectLedgerPostingDefinitionEntity"));

version(test_model_portals) { unittest {
    assert(ProjectLedgerPostingDefinitionEntity);
  
  auto entity = ProjectLedgerPostingDefinitionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}