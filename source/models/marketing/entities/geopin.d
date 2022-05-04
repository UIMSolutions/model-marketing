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
          "geopinId": StringAttributeClass, // Unique ID for entity instances."]), 
          "stateCode": StringAttributeClass, // Status of the geo pin."]), 
          "stateCode_display": StringAttributeClass, // 
          "statusCode": StringAttributeClass, // Geo-pin status reason"]), 
          "statusCode_display": StringAttributeClass, // 
          "campaignGeoPinsId": StringAttributeClass, // Unique ID for the campaign associated with the geo pin."]), 
          "centerLatitude": StringAttributeClass, // 
          "centerLongitude": StringAttributeClass, // 
          "city": StringAttributeClass, // City"]), 
          "contactGeoPinsId": StringAttributeClass, // Unique ID for the contact associated with the geo pin."]), 
          "country": StringAttributeClass, // Country/Region"]), 
          "customerJourney": StringAttributeClass, // 
          "marketingformGeoPinsId": StringAttributeClass, // Unique ID for the marketing form associated with the geo pin."]), 
          "kpiEmailClickedCount": StringAttributeClass, // 
          "kpiEmailOpenedCount": StringAttributeClass, // 
          "kpiRedirectLinkClickedCount": StringAttributeClass, // 
          "kpiWebsiteClickedCount": StringAttributeClass, // 
          "kpiWebsiteVisitedCount": StringAttributeClass, // 
          "kpiFormSubmittedCount": StringAttributeClass, // 
          "leadGeoPinsId": StringAttributeClass, // Unique ID for the lead associated with the geo pin."]), 
          "marketingEmailGeoPinsId": StringAttributeClass, // Unique ID for the marketing email associated with the geo pin."]), 
          "marketingPageGeoPinsId": StringAttributeClass, // Unique ID for the marketing page associated with the geo pin."]), 
          "northwestLatitude": StringAttributeClass, // 
          "northwestLongitude": StringAttributeClass, // 
          "postalCode": StringAttributeClass, // Postal Code"]), 
          "redirectURLGeoPinsId": StringAttributeClass, // Unique ID for the redirect URL associated with the geo pin."]), 
          "requestBuilderService_mktgeopins": StringAttributeClass, // 
          "resultParserService_mktgeopins": StringAttributeClass, // 
          "serverIdMarketing": StringAttributeClass, // 
          "southeastLatitude": StringAttributeClass, // 
          "southeastLongitude": StringAttributeClass, // 
          "state": StringAttributeClass, // State"]), 
          "websiteGeoPinsId": StringAttributeClass, // Unique ID for the website associated with the geo pin."]), 
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