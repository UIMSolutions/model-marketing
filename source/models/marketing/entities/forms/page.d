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
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]), 
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]), 
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]), 
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]), 
        "ownerId": StringAttributeClass, // Owner Id"]), 
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]), 
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]), 
        "owningUser": StringAttributeClass, // Unique identifier of the user that owns the activity."]), 
        "owningTeam": StringAttributeClass, // Unique identifier for the team that owns the record."]), 
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]), 
        "UTCConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]), 
        "formpageId": StringAttributeClass, // Unique ID for entity instances."]), 
        "stateCode": StringAttributeClass, // Status of the form page"]), 
        "stateCode_display": StringAttributeClass, // 
        "statusCode": StringAttributeClass, // Form page status reason"]), 
        "statusCode_display": StringAttributeClass, // 
        "confirmationMessage": StringAttributeClass, // 
        "errorMessage": StringAttributeClass, // 
        "marketingFormId": StringAttributeClass, // Usage of a marketing form on a marketing page."]), 
        "limitExceededMessage": StringAttributeClass, // 
        "marketingPage": StringAttributeClass, // The marketing page contains a marketing form."]), 
        "webSite": StringAttributeClass, // Web site contains Marketing Form"]), 
        "redirectUrl": OOPUrlAttribute.descriptions(["en":""]), 
        "javascriptcode": StringAttributeClass, // 
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