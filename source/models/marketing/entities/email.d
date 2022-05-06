module models.marketing.entities.email;

@safe:
import models.marketing;

// 
class DMRKEmail : DOOPEntity {
  mixin(EntityThis!("MRKEmail"));

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
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "marketingEmailId": StringAttribute, // Unique ID for entity instances."]),
        "stateCode": StringAttribute, // Status of the Marketing Email"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Marketing email status reason"]),
        "statusCode_display": StringAttribute, //
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
mixin(EntityCalls!("MRKEmail"));

unittest {
  version(test_model_crm) {
    assert(MRKEmail);
  
  auto entity = MRKEmail;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}