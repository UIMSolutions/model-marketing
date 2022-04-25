module models.marketing.entities.forms.form;

@safe:
import models.marketing;

// 
class DMRKForm : DOOPEntity {
  mixin(EntityThis!("MRKForm"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
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
        "marketingFormId": OOPStringAttribute.descriptions(["en":"Unique ID for entity instances"]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the marketing form"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Reason for the status of the marketing form"]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "allowPrefill": OOPStringAttribute.descriptions(["en":""]),
        "contactMatchingStrategy": OOPStringAttribute.descriptions(["en":""]),
        "updateContactsLeads": OOPStringAttribute.descriptions(["en":""]),
        "updateContactsLeads_display": OOPStringAttribute.descriptions(["en":""]),
        "marketingFormTemplate": OOPStringAttribute.descriptions(["en":""]),
        "formControlMapping": OOPStringAttribute.descriptions(["en":""]),
        "formDefinition": OOPStringAttribute.descriptions(["en":"JSON definition of the fields related to the Marketing form entity."]),
        "insightsPlaceholder": OOPStringAttribute.descriptions(["en":""]),
        "leadMatchingStrategy": OOPStringAttribute.descriptions(["en":""]),
        "validForPageType": OOPStringAttribute.descriptions(["en":""]),
        "validForPageType_display": OOPStringAttribute.descriptions(["en":""]),
        "purpose": OOPStringAttribute.descriptions(["en":""]),
        "purpose_display": OOPStringAttribute.descriptions(["en":""]),
        "visualStyle": OOPStringAttribute.descriptions(["en":""]),
        "visualStyle_display": OOPStringAttribute.descriptions(["en":""]),
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