module models.marketing.entities.page;

@safe:
import models.marketing;

// 
class DMRKPage : DOOPEntity {
  mixin(EntityThis!("MRKPage"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttributeClass, //Sequence number of the import that created this record."]),
        "ownerId": StringAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, //Unique identifier for the business unit that owns the record"]),
        "owningUser": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeam": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "versionNumber": IntegerAttributeClass, //Version Number"]),
        "marketingPageId": StringAttributeClass, // Unique ID for entity instances."]),
        "stateCode": StringAttributeClass, // Status of the marketing page"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Marketing page status reason"]),
        "statusCode_display": StringAttributeClass, //
        "content": StringAttributeClass, //
        "contentType": StringAttributeClass, //
        "contentType_display": StringAttributeClass, //
        "formPageMapping": StringAttributeClass, //
        "knownDomains": StringAttributeClass, //
        "fullPageUrl": UrlAttributeClass, // "]),
        "insightsPlaceholder": StringAttributeClass, //
        "marketingPageTemplate": StringAttributeClass, //
        "marketingWebsite": StringAttributeClass, //
        "marketType": StringAttributeClass, //
        "marketType_display": StringAttributeClass, //
        "optimizedFor": StringAttributeClass, //
        "optimizedFor_display": StringAttributeClass, //
        "partialUrl": UrlAttributeClass, // "]),
        "purpose": StringAttributeClass, //
        "purpose_display": StringAttributeClass, //
        "remoteWebsiteID": StringAttributeClass, // Unique ID for remote entity instances."]),
        "type": StringAttributeClass, //
        "type_display": StringAttributeClass, //
        "visualStyle": StringAttributeClass, //
        "visualStyle_display": StringAttributeClass, //
        "lastPublishedDate": DateAttributeClass, // Date and time when the marketing page was last published."]),
        "lastUnpublishedDate": DateAttributeClass, // Date and time when the marketing page was last unpublished."]),
        "pageTemplate": StringAttributeClass, //
        "webPage": StringAttributeClass, //
        "webTemplate": StringAttributeClass, //
        "portalswebsite": StringAttributeClass, //
        "pageLanguage": StringAttributeClass, //
        "containerPage": StringAttributeClass, //
      ])
      .registerPath("marketing_pages");
  }
}
mixin(EntityCalls!("MRKPage"));  

unittest {
  version(test_model_crm) {
    assert(MRKPage);
  
  auto entity = MRKPage;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}