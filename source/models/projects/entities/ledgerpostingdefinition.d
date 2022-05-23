module models.projects.entities.ledgerpostingdefinition;

@safe:
import models.projects;

class DProjectLedgerPostingDefinitionEntity : DOOPEntity {
  mixin(EntityThis!("ProjectLedgerPostingDefinitionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "projectAccountType": StringAttribute, //
        "projectId": StringAttribute, //
        "projectGroup": StringAttribute, //
        "categoryId": StringAttribute, //
        "categoryGroup": StringAttribute, //
        "projFundingSource": StringAttribute, //
        "taxGroupId": StringAttribute, //
        "projectContractId": StringAttribute, //
        "fundingSourceId": StringAttribute, //
        "mainAccountIdDisplayValue": StringAttribute, //
        "mainAccountId": StringAttribute, //
        "projCode": StringAttribute, //
        "categoryCode": StringAttribute, //
        "projRelation": StringAttribute, //
        "projCategoryRelation": StringAttribute, //
        "borrowingLegalEntity": StringAttribute, //
        "lendingLegalEntity": StringAttribute, //
        "relationship_MainAccountIdCombinationRelationshipId": StringAttribute, //
        "backingTable_ProjPostingRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_journalnames");
  }
}
mixin(EntityCalls!("ProjectLedgerPostingDefinitionEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectLedgerPostingDefinitionEntity);
  
  auto entity = ProjectLedgerPostingDefinitionEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}