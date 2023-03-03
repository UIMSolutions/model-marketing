module models.marketing.entities.list;

@safe:
import models.marketing;

// Group of existing or potential customers created for a marketing campaign or other sales purposes.
class DMarketingListEntity : DEntity {
  mixin(EntityThis!("MarketingListEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Shows whether the marketing list is active or inactive. Inactive marketing lists are read-only and can't be edited unless they are reactivated."]),
        StatusCodeAttribute, // Select the marketing list's status."]),
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
        "listId": UUIDAttribute, // Unique identifier of the marketing list."]),
        "listName": StringAttribute, // Type a name for the marketing list so that it is identified correctly in lists."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "cost": StringAttribute, // Type the cost of obtaining the marketing list."]),
        "transactionCurrencyId": UUIDAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "costBase": StringAttribute, // Value of the Cost in base currency."]),
        "createdFromCode": StringAttribute, // Select the type of members that this marketing list will contain: accounts, contacts, or leads. Each list can have only one member type and this value can't be changed after the marketing list is created."]),
        "createdFromCode_display": StringAttribute, //
        "doNotSendOnOptOut": StringAttribute, // Select whether to override the opt-out settings on leads, contacts, and accounts for the members of the target marketing lists of the campaign activity. If No is selected, those who have chosen to opt out won't be excluded from the list. This means they will receive marketing materials."]),
        "ignoreInactiveListMembers": StringAttribute, // Select whether inactive accounts, contacts, or leads should be excluded from the campaign activity distribution when the marketing list is included in a campaign."]),
        "lastUsedOn": StringAttribute, // Shows the date and time when the marketing list was last used in a campaign or in the creation of activities or opportunities."]),
        "lockStatus": StringAttribute, // Select whether the marketing list is locked. If Yes is selected, no additional members can be added to the marketing list."]),
        "memberCount": StringAttribute, // Shows the sum of all members in the marketing list."]),
        "memberType": StringAttribute, // Type of the members that can be stored in the marketing list."]),
        "purpose": StringAttribute, // Type the intended use of the marketing list to identify its key segments, target offers, or business group."]),
        "query": StringAttribute, // Query used for retrieving members of marketing list."]),
        "source": StringAttribute, // Type the source of the marketing list, such as a third-party supplier or internal database."]),
        "type": StringAttribute, // Select whether you want the marketing list to be static or dynamic. The members in a static marketing list are unchanging. A dynamic marketing list is based on a dynamic query that retrieves the updated list of members"]),
        "isSubscription": StringAttribute, //
      ])
      .registerPath("marketing_lists");
  }
}
mixin(EntityCalls!("MarketingListEntity")); 

version(test_model_crm) { unittest {
    assert(MarketingListEntity);
  
  auto entity = MarketingListEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}