module models.marketing.entities.event_management.events.registration;

@safe:
import models.marketing;

// 
class DMRKEventRegistration : DOOPEntity {
  mixin(EntityThis!("MRKEventRegistration"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "eventRegistrationId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the Event Registration"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Event Registration"]),
        "statusCode_display": StringAttribute, //
        "name": StringAttribute, // The name of the custom entity."]),
        "area": StringAttribute, //
        "area_display": StringAttribute, //
        "companySize": StringAttribute, //
        "companySize_display": StringAttribute, //
        "contactId": UUIDAttribute, // "]),
        "eventId": UUIDAttribute, // Unique identifier for Event associated with Event Registration."]),
        "industry": StringAttribute, //
        "industry_display": StringAttribute, //
        "isCanceled": BooleanAttribute, //
        "memo": StringAttribute, //
        "primaryRole": StringAttribute, // Primary Role of the event attendee."]),
        "primaryRole_display": StringAttribute, //
        "publishingState": StringAttribute, // The publishing state of the event registration."]),
        "publishingState_display": StringAttribute, //
        "registeredBy": StringAttribute, // A lookup to the contact who created this event registration"]),
        "registrationNotificationSeen": StringAttribute, // Whether the registration creation notification has been seen or not"]),
        "registrationStatus": StringAttribute, //
        "syncedWithProvider": StringAttribute, // A flag that indicates that the registration was synced with provider"]),
        "syncedWithProvider_display": StringAttribute, //
        "timesCheckedIn": StringAttribute, // Hidden field. Number of Event Check-ins related to this ER.Used as partial aggregation for Check-in count of Event.Increasing and decreasing done by corresponding workflows."]),
        "webinarRegistrationID": StringAttribute, // Webinar ID of the Event Registration."]),
        "yearsInIndustry": StringAttribute, //
        "yearsInIndustry_display": StringAttribute, //
      ])
      .registerPath("marketing_eventregistrations");
  }
}
mixin(EntityCalls!("MRKEventRegistration")); 

unittest {
  version(test_model_crm) {
    assert(MRKEventRegistration);
  
  auto entity = MRKEventRegistration;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}

// ------------- JS Scripts

/* auto entity(string classname, string myApi) {  
  string result;
  
  result ~= jsClass(classname, [
    jsMethod("constructor", ["data"], "")
  ]);

  result ~= "async function fetchThemes(sessionId) {
  try {
    let response = await fetch(myApi, {
      method: \"POST\",
      body: JSON.stringify({ sessionId: sessionId }),
      headers: { \"Content-Type\": \"application/json\" },
    });
    let data = await response.json();
    return data.entities;
  } catch (error) {
    console.log(error);
  }
}";

  return result;
}

auto entities() {  
  return 
    jsLet([
      "unsortButtons":"[nameSort, displaySort]",
      "sortButtons":"[nameUp, nameDown, displayUp, displayDown]",
    ])~

  jsFetchEntities()~
  jsListEntities()~
  jsRenderEntities()~
  jsDoSelectEntities()~

  jsEvent("viewEntities", "'input'", "doPageEntities")~
  jsEvent("prevEntities", "'click'", "goPrevEntities")~
  jsEvent("nextEntities", "'click'", "goNextEntities")~

  jsEvent("btnClearSearch", "'click'", "clearSearch")~
  jsEvent("headDisplay", "'click'", "sortDisplay")~
  jsEvent("headName", "'click'", "sortName")~
  jsEvent("cbSelectAllEntities", "'click'", "doSelectEntities");

}

auto createEntities() {  
  return 
    jsCreateEntity();
}

auto readEntity() {  
  return 
    jsViewEntity();
}

auto updateEntity() {  
  return 
    jsEditEntity();
}

auto deleteEntity() {  
  return 
    jsDeleteEntity();
}

unittest {
  auto f = File("../../PUBLIC/js/apps/entities/applications/foundations/crm/solutions/portals/forums/thread_type.js", "w"); // open for writing
  f.write(
    jsLet(["myApi": "'/api/v1/thread_types'"])~
    entity("ThreadType")~ 
    entities()~
    createEntities()~
    updateEntity()~
    deleteEntity()
  );
}
 */