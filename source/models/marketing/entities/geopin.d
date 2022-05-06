module models.marketing.entities.geopin;

@safe:
import models.marketing;

// 
class DMRKGeoPin : DOOPEntity {
  mixin(EntityThis!("MRKGeoPin"));

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
          "geopinId": StringAttribute, // Unique ID for entity instances."]), 
          "stateCode": StringAttribute, // Status of the geo pin."]), 
          "stateCode_display": StringAttribute, // 
          "statusCode": StringAttribute, // Geo-pin status reason"]), 
          "statusCode_display": StringAttribute, // 
          "campaignGeoPinsId": StringAttribute, // Unique ID for the campaign associated with the geo pin."]), 
          "centerLatitude": StringAttribute, // 
          "centerLongitude": StringAttribute, // 
          "city": StringAttribute, // City"]), 
          "contactGeoPinsId": StringAttribute, // Unique ID for the contact associated with the geo pin."]), 
          "country": StringAttribute, // Country/Region"]), 
          "customerJourney": StringAttribute, // 
          "marketingformGeoPinsId": StringAttribute, // Unique ID for the marketing form associated with the geo pin."]), 
          "kpiEmailClickedCount": StringAttribute, // 
          "kpiEmailOpenedCount": StringAttribute, // 
          "kpiRedirectLinkClickedCount": StringAttribute, // 
          "kpiWebsiteClickedCount": StringAttribute, // 
          "kpiWebsiteVisitedCount": StringAttribute, // 
          "kpiFormSubmittedCount": StringAttribute, // 
          "leadGeoPinsId": StringAttribute, // Unique ID for the lead associated with the geo pin."]), 
          "marketingEmailGeoPinsId": StringAttribute, // Unique ID for the marketing email associated with the geo pin."]), 
          "marketingPageGeoPinsId": StringAttribute, // Unique ID for the marketing page associated with the geo pin."]), 
          "northwestLatitude": StringAttribute, // 
          "northwestLongitude": StringAttribute, // 
          "postalCode": StringAttribute, // Postal Code"]), 
          "redirectURLGeoPinsId": StringAttribute, // Unique ID for the redirect URL associated with the geo pin."]), 
          "requestBuilderService_mktgeopins": StringAttribute, // 
          "resultParserService_mktgeopins": StringAttribute, // 
          "serverIdMarketing": StringAttribute, // 
          "southeastLatitude": StringAttribute, // 
          "southeastLongitude": StringAttribute, // 
          "state": StringAttribute, // State"]), 
          "websiteGeoPinsId": StringAttribute, // Unique ID for the website associated with the geo pin."]), 
      ])
      .registerPath("marketing_geopins");
  }
}
mixin(EntityCalls!("MRKGeoPin")); 

unittest {
  version(test_model_crm) {
    assert(MRKGeoPin);
  
  auto entity = MRKGeoPin;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}