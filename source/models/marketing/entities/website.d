module models.marketing.entities.website;

@safe:
import models.marketing;

// 
class DMRKWebsite : DOOPEntity {
  mixin(OOPEntityThis!("MRKWebsite"));

  override void initialize() {
    super.initialize;

    this
      .addattributes([
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
        "websiteId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Website"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Website status reason"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "insightsPlaceholder": OOPStringAttribute.descriptions(["en":""]),
        "javascriptcode": OOPStringAttribute.descriptions(["en":""]),
        "remoteWebsiteID": OOPStringAttribute.descriptions(["en":"Unique ID for remote entity instances."]),
        "shouldBeRemoved": OOPStringAttribute.descriptions(["en":""]),
        "timeout": OOPStringAttribute.descriptions(["en":""]),
        "Url": OOPUrlAttribute.descriptions(["en":""]),
        "purpose": OOPStringAttribute.descriptions(["en":""]),
        "purpose_display": OOPStringAttribute.descriptions(["en":""]),
      ])
      .registerPath("marketing_website");
  }
}
mixin(OOPEntityCalls!("MRKWebsite")); 

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