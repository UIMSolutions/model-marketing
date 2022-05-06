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
        "websiteId": StringAttribute, // Unique ID for entity instances."]),
        "stateCode": StringAttribute, // Status of the Website"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Website status reason"]),
        "statusCode_display": StringAttribute, //
        "insightsPlaceholder": StringAttribute, //
        "javascriptcode": StringAttribute, //
        "remoteWebsiteID": StringAttribute, // Unique ID for remote entity instances."]),
        "shouldBeRemoved": StringAttribute, //
        "timeout": StringAttribute, //
        "Url": UrlAttribute, // "]),
        "purpose": StringAttribute, //
        "purpose_display": StringAttribute, //
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