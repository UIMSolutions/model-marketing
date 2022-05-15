module models.marketing.entities.forms.form;

@safe:
import models.marketing;

// 
class DMarketingFormEntity : DOOPEntity {
  mixin(EntityThis!("MarketingFormEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user."]),
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the marketing form"]),
        StatusCodeAttribute, // Reason for the status of the marketing form"]),
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
        "marketingFormId": StringAttribute, // Unique ID for entity instances"]),
        "allowPrefill": StringAttribute, //
        "contactMatchingStrategy": StringAttribute, //
        "updateContactsLeads": StringAttribute, //
        "updateContactsLeads_display": StringAttribute, //
        "marketingFormTemplate": StringAttribute, //
        "formControlMapping": StringAttribute, //
        "formDefinition": StringAttribute, // JSON definition of the fields related to the Marketing form entity."]),
        "insightsPlaceholder": StringAttribute, //
        "leadMatchingStrategy": StringAttribute, //
        "validForPageType": StringAttribute, //
        "validForPageType_display": StringAttribute, //
        "purpose": StringAttribute, //
        "purpose_display": StringAttribute, //
        "visualStyle": StringAttribute, //
        "visualStyle_display": StringAttribute, //
      ])
      .registerPath("marketing_forms");
  }
}
mixin(EntityCalls!("MarketingFormEntity")); 

unittest {
  version(test_model_crm) {
    assert(MarketingFormEntity);
  
  auto entity = MarketingFormEntity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}