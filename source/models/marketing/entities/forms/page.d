module models.marketing.entities.forms.page;

@safe:
import models.marketing;

// 
  class DMarketingFormPageEntity : DOOPEntity {
  mixin(EntityThis!("MarketingFormPageEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]), 
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]), 
        OwnerIdAttribute, // Owner Id"]), 
        StateCodeAttribute, // Status of the form page"]), 
        StatusCodeAttribute, // Form page status reason"]), 
      ])
      .addValues([
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]), 
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]), 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]), 
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]), 
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]), 
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]), 
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]), 
        "UTCConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]), 
        "formpageId": UUIDAttribute, // Unique ID for entity instances."]), 
        "confirmationMessage": StringAttribute, // 
        "errorMessage": StringAttribute, // 
        "marketingFormId": UUIDAttribute, // Usage of a marketing form on a marketing page."]), 
        "limitExceededMessage": StringAttribute, // 
        "marketingPage": StringAttribute, // The marketing page contains a marketing form."]), 
        "webSite": StringAttribute, // Web site contains Marketing Form"]), 
        "redirectUrl": UrlAttribute, // "]), 
        "javascriptcode": StringAttribute, // 
      ])
      .registerPath("marketing_formpages");
  }
}
mixin(EntityCalls!("MarketingFormPageEntity"));

unittest {
  version(test_model_crm) {
    assert(MarketingFormPageEntity);
  
  auto entity = MarketingFormPageEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}