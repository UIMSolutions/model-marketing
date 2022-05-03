module models.marketing.entities.event_management.events.event;

@safe:
import models.marketing;

// Container to manage and plan marketing activities that take place at a specific venue or location.
class DMRKEvent : DOOPEntity {
  mixin(EntityThis!("MRKEvent"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": StringAttributeClass, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": OOPIntegerAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": StringAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": StringAttributeClass, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "eventId": UUIDAttributeClass, // Unique identifier for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the Event"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the Event"]),
        "statusCode_display": StringAttributeClass, //
        "processId": UUIDAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "entityImageId": UUIDAttributeClass, //
        "baseRecurrentEventID": StringAttributeClass, //
        "bookedFlightReservations": StringAttributeClass, // Flight reservations booking status"]),
        "bookedFlightReservations_display": StringAttributeClass, //
        "bookRooms": StringAttributeClass, //
        "bookRooms_display": StringAttributeClass, //
        "budgetAllocated": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Unique identifier of the currency associated with the entity."]),
        "exchangeRate": StringAttributeClass, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "budgetAllocatedBase": StringAttributeClass, // Value of the Budget Allocated in base currency."]),
        "cateringRequired": StringAttributeClass, //
        "cateringRequired_display": StringAttributeClass, //
        "checkInCount": StringAttributeClass, // Check-in count"]),
        "confirmedHotelChoices": StringAttributeClass, // Hotel choices confirmation status"]),
        "confirmedHotelChoices_display": StringAttributeClass, //
        "countdownInDays": StringAttributeClass, //
        "createMarketingCollateral": StringAttributeClass, //
        "createMarketingCollateral_display": StringAttributeClass, //
        "definePackagesandPricing": StringAttributeClass, //
        "definePackagesandPricing_display": StringAttributeClass, //
        "defineSessions": StringAttributeClass, //
        "defineSessions_display": StringAttributeClass, //
        "defineTeam": StringAttributeClass, //
        "defineTeam_display": StringAttributeClass, //
        "description": StringAttributeClass, //
        "developMarketingPlan": StringAttributeClass, //
        "developMarketingPlan_display": StringAttributeClass, //
        "earlyBirdCutOffDate": DateAttributeClass, // 
        "eventDebriefing": StringAttributeClass, //
        "eventDebriefing_display": StringAttributeClass, //
        "eventEndDate": DateAttributeClass, // 
        "eventFormat": StringAttributeClass, //
        "eventFormat_display": StringAttributeClass, //
        "eventStartDate": DateAttributeClass, // 
        "eventTimeZone": StringAttributeClass, //
        "eventTimeZoneName": StringAttributeClass, //
        "eventType": StringAttributeClass, //
        "eventType_display": StringAttributeClass, //
        "eventVenueCost": StringAttributeClass, //
        "eventVenueCostBase": StringAttributeClass, // Value of the Event Venue Cost in base currency."]),
        "expectedOutcome": StringAttributeClass, //
        "followUpOnLeads": StringAttributeClass, //
        "followUpOnLeads_display": StringAttributeClass, //
        "guestLogistics": StringAttributeClass, // Whether guest logistics are required or not."]),
        "guestLogistics_display": StringAttributeClass, //
        "identifySpeakers": StringAttributeClass, //
        "identifySpeakers_display": StringAttributeClass, //
        "identifySponsors": StringAttributeClass, //
        "identifySponsors_display": StringAttributeClass, //
        "isRecurringEvent": BooleanAttributeClass, //
        "isTemplate": BooleanAttributeClass, //
        "isTemplate_display": BooleanAttributeClass, //
        "language": StringAttributeClass, // The language of the webinar"]),
        "language_display": StringAttributeClass, //
        "makePaymentsDue": StringAttributeClass, //
        "makePaymentsDue_display": StringAttributeClass, //
        "manageRegistrationCount": StringAttributeClass, //
        "manageRegistrationCount_display": StringAttributeClass, //
        "maximumEventCapacity": StringAttributeClass, //
        "maxNumberOfRegistrations": StringAttributeClass, //
        "miscellaneousCosts": StringAttributeClass, //
        "miscellaneousCostsBase": StringAttributeClass, // Value of the Miscellaneous Costs in base currency."]),
        "notifyAuthoritiesOfEvent": StringAttributeClass, //
        "notifyAuthoritiesOfEvent_display": StringAttributeClass, //
        "planRegistration": StringAttributeClass, //
        "planRegistration_display": StringAttributeClass, //
        "presentationManagerUrl": OOPUrlAttribute.descriptions(["en":""]),
        "primaryGoal": StringAttributeClass, //
        "primaryGoal_display": StringAttributeClass, //
        "primaryVenue": StringAttributeClass, //
        "producer": StringAttributeClass, //
        "publicEventUrl": OOPUrlAttribute.descriptions(["en":""]),
        "publishStatus": StringAttributeClass, //
        "publishStatus_display": StringAttributeClass, //
        "readableEventID": StringAttributeClass, //
        "recurrencePattern": StringAttributeClass, //
        "recurrentEventStatus": StringAttributeClass, //
        "registrationCount": StringAttributeClass, // Registration count of the Event."]),
        "registrationsTarget": StringAttributeClass, //
        "requestSponsorship": StringAttributeClass, //
        "requestSponsorship_display": StringAttributeClass, //
        "revenueFromSponsorship": StringAttributeClass, //
        "revenueFromSponsorshipBase": StringAttributeClass, // Value of the Revenue from Sponsorship in base currency."]),
        "scheduleAirportPickups": StringAttributeClass, // Airport pickups scheduling status"]),
        "scheduleAirportPickups_display": StringAttributeClass, //
        "scheduleSessions": StringAttributeClass, //
        "scheduleSessions_display": StringAttributeClass, //
        "selectSpeakers": StringAttributeClass, //
        "selectSpeakers_display": StringAttributeClass, //
        "selectVendors": StringAttributeClass, //
        "selectVendors_display": StringAttributeClass, //
        "sendEventInvitation": StringAttributeClass, // Event invitation sending status"]),
        "sendEventInvitation_display": StringAttributeClass, //
        "sendMarketingMaterial": StringAttributeClass, //
        "sendMarketingMaterial_display": StringAttributeClass, //
        "sendPreEventReminders": StringAttributeClass, //
        "sendPreEventReminders_display": StringAttributeClass, //
        "sendThankYouEmails": StringAttributeClass, //
        "sendThankYouEmails_display": StringAttributeClass, //
        "showWaitlist": StringAttributeClass, //
        "targetRevenue": StringAttributeClass, //
        "targetRevenueBase": StringAttributeClass, // Value of the Target Revenue in base currency."]),
        "teamDebriefing": StringAttributeClass, //
        "teamDebriefing_display": StringAttributeClass, //
        "totalCostOfEventsActivities": StringAttributeClass, //
        "totalCostOfEventsActivitiesBase": StringAttributeClass, // Value of the Total Cost of Events Activities in base currency."]),
        "totalCostOfExternalMembers": StringAttributeClass, //
        "totalCostOfExternalMembersBase": StringAttributeClass, // Value of the Total cost of External Members in base currency."]),
        "totalRegistrationFee": StringAttributeClass, //
        "totalRegistrationFeeBase": StringAttributeClass, // Value of the Total Registration Fee in base currency."]),
        "totalRevenueFromTheEvent": StringAttributeClass, //
        "totalRevenueFromTheEventBase": StringAttributeClass, // Value of the Total Revenue from the event in base currency."]),
        "waitlistStartingPoint": StringAttributeClass, // Waitlist Starting Point"]),
        "waitlistthisEvent": StringAttributeClass, //
        "waitlistthisEvent_display": StringAttributeClass, //
        "webinarConfigurationId": UUIDAttributeClass, // Webinar Configuration"]),
        "webinarID": StringAttributeClass, // Webinar ID of the Event."]),
        "webinarNotificationSeen": StringAttributeClass, // Whether the webinar creation notification has been seen or not"]),
        "webinarOperation": StringAttributeClass, //
        "webinarStatus": StringAttributeClass, //
        "webinarStatusReason": StringAttributeClass, //
        "webinarType": StringAttributeClass, //
        "webinarUrl": OOPUrlAttribute.descriptions(["en":"URL of the webinar. This might be URL of external webinar provider."]),
        "sendSurveys": StringAttributeClass, //
        "sendSurveys_display": StringAttributeClass, //
        "eventURLspecified": StringAttributeClass, // Determines whether an event URL is specified."]),
        "sessionsCount": StringAttributeClass, // The number of sessions in this event"]),
        "sessionsCountDate": DateAttributeClass, // Last Updated time of rollup field Session count."]),
        "sessionsCountState": StringAttributeClass, // State of rollup field Session count."]),
        "allowAnonymousRegistrations": StringAttributeClass, //
        "portalBannerImage": StringAttributeClass, // The portal banner image."]),
        "eventUrl": OOPUrlAttribute.descriptions(["en":""])
      ])
      .registerPath("marketing_event");
  }
}
mixin(EntityCalls!("MRKEvent")); 

unittest {
  version(test_model_crm) {
    assert(MRKEvent);
  
  auto entity = MRKEvent;
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