module models.marketing.entities.forms.page;

@safe:
import models.marketing;

// 
  class DMRKFormPage : DOOPEntity {
  mixin(EntityThis!("MRKFormPage"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]), 
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]), 
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]), 
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]), 
        "ownerId": StringAttribute, // Owner Id"]), 
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]), 
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]), 
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]), 
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]), 
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]), 
        "UTCConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]), 
        "formpageId": StringAttribute, // Unique ID for entity instances."]), 
        "stateCode": StringAttribute, // Status of the form page"]), 
        "stateCode_display": StringAttribute, // 
        "statusCode": StringAttribute, // Form page status reason"]), 
        "statusCode_display": StringAttribute, // 
        "confirmationMessage": StringAttribute, // 
        "errorMessage": StringAttribute, // 
        "marketingFormId": StringAttribute, // Usage of a marketing form on a marketing page."]), 
        "limitExceededMessage": StringAttribute, // 
        "marketingPage": StringAttribute, // The marketing page contains a marketing form."]), 
        "webSite": StringAttribute, // Web site contains Marketing Form"]), 
        "redirectUrl": UrlAttribute, // "]), 
        "javascriptcode": StringAttribute, // 
      ])
      .registerPath("marketing_formpage");
  }
}
mixin(EntityCalls!("MRKFormPage"));

unittest {
  version(test_model_crm) {
    assert(MRKFormPage);
  
  auto entity = MRKFormPage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}