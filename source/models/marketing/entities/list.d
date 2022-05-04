module models.marketing.entities.list;

@safe:
import models.marketing;

// Group of existing or potential customers created for a marketing campaign or other sales purposes.
class DMRKList : DOOPEntity {
  mixin(EntityThis!("MRKList"));

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
        "versionNumber": IntegerAttributeClass, //Version Number"]),
        "listId": StringAttributeClass, // Unique identifier of the marketing list."]),
        "listName": StringAttributeClass, // Type a name for the marketing list so that it is identified correctly in lists."]),
        "processId": StringAttributeClass, // Contains the id of the process associated with the entity."]),
        "stageId": StringAttributeClass, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttributeClass, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "cost": StringAttributeClass, // Type the cost of obtaining the marketing list."]),
        "transactionCurrencyId": StringAttributeClass, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "costBase": StringAttributeClass, // Value of the Cost in base currency."]),
        "createdFromCode": StringAttributeClass, // Select the type of members that this marketing list will contain: accounts, contacts, or leads. Each list can have only one member type and this value can't be changed after the marketing list is created."]),
        "createdFromCode_display": StringAttributeClass, //
        "doNotSendOnOptOut": StringAttributeClass, // Select whether to override the opt-out settings on leads, contacts, and accounts for the members of the target marketing lists of the campaign activity. If No is selected, those who have chosen to opt out won't be excluded from the list. This means they will receive marketing materials."]),
        "ignoreInactiveListMembers": StringAttributeClass, // Select whether inactive accounts, contacts, or leads should be excluded from the campaign activity distribution when the marketing list is included in a campaign."]),
        "lastUsedOn": StringAttributeClass, // Shows the date and time when the marketing list was last used in a campaign or in the creation of activities or opportunities."]),
        "lockStatus": StringAttributeClass, // Select whether the marketing list is locked. If Yes is selected, no additional members can be added to the marketing list."]),
        "memberCount": StringAttributeClass, // Shows the sum of all members in the marketing list."]),
        "memberType": StringAttributeClass, // Type of the members that can be stored in the marketing list."]),
        "purpose": StringAttributeClass, // Type the intended use of the marketing list to identify its key segments, target offers, or business group."]),
        "query": StringAttributeClass, // Query used for retrieving members of marketing list."]),
        "source": StringAttributeClass, // Type the source of the marketing list, such as a third-party supplier or internal database."]),
        "stateCode": StringAttributeClass, // Shows whether the marketing list is active or inactive. Inactive marketing lists are read-only and can't be edited unless they are reactivated."]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Select the marketing list's status."]),
        "statusCode_display": StringAttributeClass, //
        "type": StringAttributeClass, // Select whether you want the marketing list to be static or dynamic. The members in a static marketing list are unchanging. A dynamic marketing list is based on a dynamic query that retrieves the updated list of members"]),
        "issubscription": StringAttributeClass, //
      ])
      .registerPath("marketing_lists");
  }
}
mixin(EntityCalls!("MRKList")); 

unittest {
  version(test_model_crm) {
    assert(MRKList);
  
  auto entity = MRKList;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}