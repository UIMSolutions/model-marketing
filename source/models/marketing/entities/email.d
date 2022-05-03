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
        "createdOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPStringAttribute.descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPStringAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPStringAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUser": OOPStringAttribute.descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeam": OOPStringAttribute.descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "marketingEmailId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Marketing Email"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Marketing email status reason"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "automaticallyGeneratePlainText": OOPStringAttribute.descriptions(["en":""]),
        "clickMap": OOPStringAttribute.descriptions(["en":""]),
        "designerHTML": OOPStringAttribute.descriptions(["en":"Clean email body: HTML with no CSS inlining and no compression"]),
        "emailBody": OOPStringAttribute.descriptions(["en":"The body of the email"]),
        "fromEmail": OOPStringAttribute.descriptions(["en":""]),
        "fromName": OOPStringAttribute.descriptions(["en":""]),
        "fromUser": OOPStringAttribute.descriptions(["en":""]),
        "insightsPlaceholder": OOPStringAttribute.descriptions(["en":""]),
        "isTemplategalleryNeeded": OOPBooleanAttribute.descriptions(["en":""]),
        "legalDesignation": OOPStringAttribute.descriptions(["en":""]),
        "legalDesignation_display": OOPStringAttribute.descriptions(["en":""]),
        "replyToEmail": OOPStringAttribute.descriptions(["en":""]),
        "subject": OOPStringAttribute.descriptions(["en":"The subject of the marketing email"]),
        "templateId": OOPUUIDAttribute.descriptions(["en":"Template for the Email"]),
        "plainText": OOPStringAttribute.descriptions(["en":""]),
        "to": OOPStringAttribute.descriptions(["en":""]),
        "UICEntityId": OOPUUIDAttribute.descriptions(["en":""]),
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