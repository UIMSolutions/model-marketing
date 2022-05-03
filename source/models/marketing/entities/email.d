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
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "marketingEmailId": StringAttributeClass, // Unique ID for entity instances."]),
        "stateCode": StringAttributeClass, // Status of the Marketing Email"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Marketing email status reason"]),
        "statusCode_display": StringAttributeClass, //
        "automaticallyGeneratePlainText": StringAttributeClass, //
        "clickMap": StringAttributeClass, //
        "designerHTML": StringAttributeClass, // Clean email body: HTML with no CSS inlining and no compression"]),
        "emailBody": StringAttributeClass, // The body of the email"]),
        "fromEmail": StringAttributeClass, //
        "fromName": StringAttributeClass, //
        "fromUser": StringAttributeClass, //
        "insightsPlaceholder": StringAttributeClass, //
        "isTemplategalleryNeeded": BooleanAttributeClass, //
        "legalDesignation": StringAttributeClass, //
        "legalDesignation_display": StringAttributeClass, //
        "replyToEmail": StringAttributeClass, //
        "subject": StringAttributeClass, // The subject of the marketing email"]),
        "templateId": UUIDAttributeClass, // Template for the Email"]),
        "plainText": StringAttributeClass, //
        "to": StringAttributeClass, //
        "UICEntityId": UUIDAttributeClass, //
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