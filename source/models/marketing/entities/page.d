module models.marketing.entities.page;

@safe:
import models.marketing;

// 
class DMarketingPageEntity : DOOPEntity {
  mixin(EntityThis!("MarketingPageEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the marketing page"]),
        StatusCodeAttribute, // Marketing page status reason"]),
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
        "versionNumber": IntegerAttribute, //Version Number"]),
        "marketingPageId": StringAttribute, // Unique ID for entity instances."]),
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
mixin(EntityCalls!("MarketingPageEntity"));  

unittest {
  version(test_model_crm) {
    assert(MarketingPageEntity);
  
  auto entity = MarketingPageEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}