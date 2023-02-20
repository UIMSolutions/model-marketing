module models.marketing.entities.website;

@safe:
import models.marketing;

// 
class DMarketingWebsiteEntity : DOOPEntity {
  mixin(EntityThis!("MarketingWebsiteEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Website"]),
        StatusCodeAttribute, // Website status reason"]),
        UrlAttribute, // "]),
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
        "websiteId": UUIDAttribute, // Unique ID for entity instances."]),
        "insightsPlaceholder": StringAttribute, //
        "javascriptcode": StringAttribute, //
        "remoteWebsiteID": StringAttribute, // Unique ID for remote entity instances."]),
        "shouldBeRemoved": StringAttribute, //
        "timeout": StringAttribute, //
        "purpose": StringAttribute, //
        "purpose_display": StringAttribute, //
      ])
      .registerPath("marketing_websites");
  }
}
mixin(EntityCalls!("MarketingWebsiteEntity")); 

unittest {
  version(test_model_crm) {
    assert(MarketingWebsiteEntity);
  
  auto entity = MarketingWebsiteEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}