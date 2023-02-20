module models.marketing.entities.event_management.events.event;

@safe:
import models.marketing;

// Container to manage and plan marketing activities that take place at a specific venue or location.
class DMRKEvent : DOOPEntity {
  mixin(EntityThis!("MRKEvent"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": IntegerAttribute, //Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": IntegerAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "eventId": UUIDAttribute, // Unique identifier for entity instances"]),
        "stateCode": StringAttribute, // Status of the Event"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the Event"]),
        "statusCode_display": StringAttribute, //
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "entityImageId": UUIDAttribute, //
        "baseRecurrentEventID": StringAttribute, //
        "bookedFlightReservations": StringAttribute, // Flight reservations booking status"]),
        "bookedFlightReservations_display": StringAttribute, //
        "bookRooms": StringAttribute, //
        "bookRooms_display": StringAttribute, //
        "budgetAllocated": StringAttribute, //
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
        "budgetAllocatedBase": StringAttribute, // Value of the Budget Allocated in base currency."]),
        "cateringRequired": StringAttribute, //
        "cateringRequired_display": StringAttribute, //
        "checkInCount": StringAttribute, // Check-in count"]),
        "confirmedHotelChoices": StringAttribute, // Hotel choices confirmation status"]),
        "confirmedHotelChoices_display": StringAttribute, //
        "countdownInDays": StringAttribute, //
        "createMarketingCollateral": StringAttribute, //
        "createMarketingCollateral_display": StringAttribute, //
        "definePackagesandPricing": StringAttribute, //
        "definePackagesandPricing_display": StringAttribute, //
        "defineSessions": StringAttribute, //
        "defineSessions_display": StringAttribute, //
        "defineTeam": StringAttribute, //
        "defineTeam_display": StringAttribute, //
        "description": StringAttribute, //
        "developMarketingPlan": StringAttribute, //
        "developMarketingPlan_display": StringAttribute, //
        "earlyBirdCutOffDate": DateAttribute, // 
        "eventDebriefing": StringAttribute, //
        "eventDebriefing_display": StringAttribute, //
        "eventEndDate": DateAttribute, // 
        "eventFormat": StringAttribute, //
        "eventFormat_display": StringAttribute, //
        "eventStartDate": DateAttribute, // 
        "eventTimeZone": StringAttribute, //
        "eventTimeZoneName": StringAttribute, //
        "eventType": StringAttribute, //
        "eventType_display": StringAttribute, //
        "eventVenueCost": StringAttribute, //
        "eventVenueCostBase": StringAttribute, // Value of the Event Venue Cost in base currency."]),
        "expectedOutcome": StringAttribute, //
        "followUpOnLeads": StringAttribute, //
        "followUpOnLeads_display": StringAttribute, //
        "guestLogistics": StringAttribute, // Whether guest logistics are required or not."]),
        "guestLogistics_display": StringAttribute, //
        "identifySpeakers": StringAttribute, //
        "identifySpeakers_display": StringAttribute, //
        "identifySponsors": StringAttribute, //
        "identifySponsors_display": StringAttribute, //
        "isRecurringEvent": BooleanAttribute, //
        "isTemplate": BooleanAttribute, //
        "isTemplate_display": BooleanAttribute, //
        "language": StringAttribute, // The language of the webinar"]),
        "language_display": StringAttribute, //
        "makePaymentsDue": StringAttribute, //
        "makePaymentsDue_display": StringAttribute, //
        "manageRegistrationCount": StringAttribute, //
        "manageRegistrationCount_display": StringAttribute, //
        "maximumEventCapacity": StringAttribute, //
        "maxNumberOfRegistrations": StringAttribute, //
        "miscellaneousCosts": StringAttribute, //
        "miscellaneousCostsBase": StringAttribute, // Value of the Miscellaneous Costs in base currency."]),
        "notifyAuthoritiesOfEvent": StringAttribute, //
        "notifyAuthoritiesOfEvent_display": StringAttribute, //
        "planRegistration": StringAttribute, //
        "planRegistration_display": StringAttribute, //
        "presentationManagerUrl": UrlAttribute, // "]),
        "primaryGoal": StringAttribute, //
        "primaryGoal_display": StringAttribute, //
        "primaryVenue": StringAttribute, //
        "producer": StringAttribute, //
        "publicEventUrl": UrlAttribute, // "]),
        "publishStatus": StringAttribute, //
        "publishStatus_display": StringAttribute, //
        "readableEventID": StringAttribute, //
        "recurrencePattern": StringAttribute, //
        "recurrentEventStatus": StringAttribute, //
        "registrationCount": StringAttribute, // Registration count of the Event."]),
        "registrationsTarget": StringAttribute, //
        "requestSponsorship": StringAttribute, //
        "requestSponsorship_display": StringAttribute, //
        "revenueFromSponsorship": StringAttribute, //
        "revenueFromSponsorshipBase": StringAttribute, // Value of the Revenue from Sponsorship in base currency."]),
        "scheduleAirportPickups": StringAttribute, // Airport pickups scheduling status"]),
        "scheduleAirportPickups_display": StringAttribute, //
        "scheduleSessions": StringAttribute, //
        "scheduleSessions_display": StringAttribute, //
        "selectSpeakers": StringAttribute, //
        "selectSpeakers_display": StringAttribute, //
        "selectVendors": StringAttribute, //
        "selectVendors_display": StringAttribute, //
        "sendEventInvitation": StringAttribute, // Event invitation sending status"]),
        "sendEventInvitation_display": StringAttribute, //
        "sendMarketingMaterial": StringAttribute, //
        "sendMarketingMaterial_display": StringAttribute, //
        "sendPreEventReminders": StringAttribute, //
        "sendPreEventReminders_display": StringAttribute, //
        "sendThankYouEmails": StringAttribute, //
        "sendThankYouEmails_display": StringAttribute, //
        "showWaitlist": StringAttribute, //
        "targetRevenue": StringAttribute, //
        "targetRevenueBase": StringAttribute, // Value of the Target Revenue in base currency."]),
        "teamDebriefing": StringAttribute, //
        "teamDebriefing_display": StringAttribute, //
        "totalCostOfEventsActivities": StringAttribute, //
        "totalCostOfEventsActivitiesBase": StringAttribute, // Value of the Total Cost of Events Activities in base currency."]),
        "totalCostOfExternalMembers": StringAttribute, //
        "totalCostOfExternalMembersBase": StringAttribute, // Value of the Total cost of External Members in base currency."]),
        "totalRegistrationFee": StringAttribute, //
        "totalRegistrationFeeBase": StringAttribute, // Value of the Total Registration Fee in base currency."]),
        "totalRevenueFromTheEvent": StringAttribute, //
        "totalRevenueFromTheEventBase": StringAttribute, // Value of the Total Revenue from the event in base currency."]),
        "waitlistStartingPoint": StringAttribute, // Waitlist Starting Point"]),
        "waitlistthisEvent": StringAttribute, //
        "waitlistthisEvent_display": StringAttribute, //
        "webinarConfigurationId": UUIDAttribute, // Webinar Configuration"]),
        "webinarID": StringAttribute, // Webinar ID of the Event."]),
        "webinarNotificationSeen": StringAttribute, // Whether the webinar creation notification has been seen or not"]),
        "webinarOperation": StringAttribute, //
        "webinarStatus": StringAttribute, //
        "webinarStatusReason": StringAttribute, //
        "webinarType": StringAttribute, //
        "webinarUrl": UrlAttribute, // URL of the webinar. This might be URL of external webinar provider."]),
        "sendSurveys": StringAttribute, //
        "sendSurveys_display": StringAttribute, //
        "eventURLspecified": StringAttribute, // Determines whether an event URL is specified."]),
        "sessionsCount": StringAttribute, // The number of sessions in this event"]),
        "sessionsCountDate": DateAttribute, // Last Updated time of rollup field Session count."]),
        "sessionsCountState": StringAttribute, // State of rollup field Session count."]),
        "allowAnonymousRegistrations": StringAttribute, //
        "portalBannerImage": StringAttribute, // The portal banner image."]),
        "eventUrl": UrlAttribute, // "])
      ])
      .registerPath("marketing_event");
  }
}
mixin(EntityCalls!("MRKEvent")); 

version(test_model_crm) { unittest {
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