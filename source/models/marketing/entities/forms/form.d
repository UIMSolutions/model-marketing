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
        "marketingFormId": StringAttributeClass, // Unique ID for entity instances"]),
        "stateCode": StringAttributeClass, // Status of the marketing form"]),
        "stateCode_display": StringAttributeClass, //
        "statusCode": StringAttributeClass, // Reason for the status of the marketing form"]),
        "statusCode_display": StringAttributeClass, //
        "allowPrefill": StringAttributeClass, //
        "contactMatchingStrategy": StringAttributeClass, //
        "updateContactsLeads": StringAttributeClass, //
        "updateContactsLeads_display": StringAttributeClass, //
        "marketingFormTemplate": StringAttributeClass, //
        "formControlMapping": StringAttributeClass, //
        "formDefinition": StringAttributeClass, // JSON definition of the fields related to the Marketing form entity."]),
        "insightsPlaceholder": StringAttributeClass, //
        "leadMatchingStrategy": StringAttributeClass, //
        "validForPageType": StringAttributeClass, //
        "validForPageType_display": StringAttributeClass, //
        "purpose": StringAttributeClass, //
        "purpose_display": StringAttributeClass, //
        "visualStyle": StringAttributeClass, //
        "visualStyle_display": StringAttributeClass, //
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