module models.marketing.entities.website;

@safe:
import models.marketing;

// 
class DMRKWebsite : DOOPEntity {
  mixin(EntityThis!("MRKWebsite"));

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
        "websiteId": StringAttributeClass, // Unique ID for entity instances."]),
        "stateCode": StringAttributeClass, // Status of the Website"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Website status reason"]),
        "statusCode_display": StringAttributeClass, //
        "insightsPlaceholder": StringAttributeClass, //
        "javascriptcode": StringAttributeClass, //
        "remoteWebsiteID": StringAttributeClass, // Unique ID for remote entity instances."]),
        "shouldBeRemoved": StringAttributeClass, //
        "timeout": StringAttributeClass, //
        "Url": OOPUrlAttribute.descriptions(["en":""]),
        "purpose": StringAttributeClass, //
        "purpose_display": StringAttributeClass, //
      ])
      .registerPath("marketing_website");
  }
}
mixin(EntityCalls!("MRKWebsite")); 

unittest {
  version(test_model_crm) {
    assert(MRKWebsite);
  
  auto entity = MRKWebsite;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}