module models.marketing.entities.email;

@safe:
import models.marketing;

// 
class DMarketingEmailEntity : DOOPEntity {
  mixin(EntityThis!("MarketingEmailEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Marketing Email"]),
        StatusCodeAttribute, // Marketing email status reason"]),
      ])
      .addValues([
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "marketingEmailId": UUIDAttribute, // Unique ID for entity instances."]),
        "automaticallyGeneratePlainText": StringAttribute, //
        "clickMap": StringAttribute, //
        "designerHTML": StringAttribute, // Clean email body: HTML with no CSS inlining and no compression"]),
        "emailBody": StringAttribute, // The body of the email"]),
        "fromEmail": StringAttribute, //
        "fromName": StringAttribute, //
        "fromUser": StringAttribute, //
        "insightsPlaceholder": StringAttribute, //
        "isTemplategalleryNeeded": BooleanAttribute, //
        "legalDesignation": StringAttribute, //
        "legalDesignation_display": StringAttribute, //
        "replyToEmail": StringAttribute, //
        "subject": StringAttribute, // The subject of the marketing email"]),
        "templateId": UUIDAttribute, // Template for the Email"]),
        "plainText": StringAttribute, //
        "to": StringAttribute, //
        "UICEntityId": UUIDAttribute, //
      ])
      .registerPath("marketing_emails");
  }
}
mixin(EntityCalls!("MarketingEmailEntity"));

unittest {
  version(test_model_crm) {
    assert(MarketingEmailEntity);
  
  auto entity = MarketingEmailEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}