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
        "versionNumber": IntegerAttribute, //Version Number"]),
        "marketingPageId": StringAttribute, // Unique ID for entity instances."]),
        "stateCode": StringAttribute, // Status of the marketing page"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Marketing page status reason"]),
        "statusCode_display": StringAttribute, //
        "content": StringAttribute, //
        "contentType": StringAttribute, //
        "contentType_display": StringAttribute, //
        "formPageMapping": StringAttribute, //
        "knownDomains": StringAttribute, //
        "fullPageUrl": UrlAttribute, // "]),
        "insightsPlaceholder": StringAttribute, //
        "marketingPageTemplate": StringAttribute, //
        "marketingWebsite": StringAttribute, //
        "marketType": StringAttribute, //
        "marketType_display": StringAttribute, //
        "optimizedFor": StringAttribute, //
        "optimizedFor_display": StringAttribute, //
        "partialUrl": UrlAttribute, // "]),
        "purpose": StringAttribute, //
        "purpose_display": StringAttribute, //
        "remoteWebsiteID": StringAttribute, // Unique ID for remote entity instances."]),
        "type": StringAttribute, //
        "type_display": StringAttribute, //
        "visualStyle": StringAttribute, //
        "visualStyle_display": StringAttribute, //
        "lastPublishedDate": DateAttribute, // Date and time when the marketing page was last published."]),
        "lastUnpublishedDate": DateAttribute, // Date and time when the marketing page was last unpublished."]),
        "pageTemplate": StringAttribute, //
        "webPage": StringAttribute, //
        "webTemplate": StringAttribute, //
        "portalswebsite": StringAttribute, //
        "pageLanguage": StringAttribute, //
        "containerPage": StringAttribute, //
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