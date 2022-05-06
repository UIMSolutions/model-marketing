module models.marketing.entities.forms.form;

@safe:
import models.marketing;

// 
class DMRKForm : DOOPEntity {
  mixin(EntityThis!("MRKForm"));

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
        "marketingFormId": StringAttribute, // Unique ID for entity instances"]),
        "stateCode": StringAttribute, // Status of the marketing form"]),
        "stateCode_display": StringAttribute, //
        "statusCode": StringAttribute, // Reason for the status of the marketing form"]),
        "statusCode_display": StringAttribute, //
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
mixin(EntityCalls!("MRKForm")); 

unittest {
  version(test_model_crm) {
    assert(MRKForm);
  
  auto entity = MRKForm;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}