Class MDM.EJFINESS.REST.spec
{

XData OpenAPI [ MimeType = application/json ]
{
{
  "swagger": "2.0",
  "info": {
    "description": "This is a Kano MDM REST API.",
    "version": "1.0.0",
    "title": "Kano MDM REST API"
  },
  "host": "test.iris.kanosoftware.net:7721",
  "basePath": "/mdm/restapi",
  "tags": [
    {
      "name": "entitiesList",
      "description": "Get list of supported entities"
    },
    {
      "name": "status",
      "description": "Get status of previously sent request"
    },
    {
      "name": "esanta_model_EJFinessOcc",
      "description": "CRUD and other operations with entity 'esanta.model.EJFinessOcc'"
    }
  ],
  "schemes": [
    "http"
  ],
  "paths": {
    "/entitiesList": {
      "get": {
        "tags": [
          "entitiesList"
        ],
        "summary": "Get list of supported entities",
        "description": "",
        "operationId": "getEntitiesList",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "in": "query",
            "name": "systemGUID",
            "description": "Request initiator system GUID",
            "required": true,
            "type": "string"
          },
          {
            "name": "isAsync",
            "in": "query",
            "type": "boolean",
            "required": true,
            "description": "is Async"
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntitiesListResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      }
    },
    "/status": {
      "get": {
        "tags": [
          "status"
        ],
        "summary": "Get status of previously sent request",
        "description": "",
        "operationId": "getStatus",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "in": "query",
            "name": "systemGUID",
            "description": "Request initiator system GUID",
            "required": true,
            "type": "string"
          },
          {
            "name": "requestGUID",
            "in": "query",
            "type": "string",
            "required": true,
            "description": "Initial Request GUID in Kano MDM"
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/StatusResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      }
    },
    "/esanta_model_EJFinessOcc": {
      "get": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Get a single record of specified Entity",
        "operationId": "get_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "name": "systemGUID",
            "in": "query",
            "type": "string",
            "required": true,
            "description": "Request initiator system GUID"
          },
          {
            "name": "isAsync",
            "in": "query",
            "type": "boolean",
            "required": true,
            "description": "is Async"
          },
          {
            "name": "initSystemRecordId",
            "in": "query",
            "type": "string",
            "description": "Record Id in initiator system"
          },
          {
            "name": "mdmRecordId",
            "in": "query",
            "type": "string",
            "description": "Record Id in Kano MDM (used while getting a new record, that doesn't exist in initiator system)"
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/esanta_model_EJFinessOcc_GetResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      },
      "post": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Add a record of specified Entity",
        "operationId": "post_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "in": "body",
            "name": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/esanta_model_EJFinessOcc_AddRequest"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntityRecordAddResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      },
      "put": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Modify a record of specified Entity",
        "operationId": "put_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "in": "body",
            "name": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/esanta_model_EJFinessOcc_ModifyRequest"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntityRecordModifyResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      },
      "delete": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Delete a record of specified Entity",
        "operationId": "delete_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "name": "systemGUID",
            "in": "query",
            "type": "string",
            "required": true,
            "description": "Request initiator system GUID"
          },
          {
            "name": "initSystemRecordId",
            "in": "query",
            "type": "string",
            "description": "Record Id in initiator system"
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntityRecordDeleteResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      }
    },
    "/esanta_model_EJFinessOcc/list": {
      "get": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Get list of specified Entity records",
        "operationId": "list_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "name": "systemGUID",
            "in": "query",
            "type": "string",
            "required": true,
            "description": "Request initiator system GUID"
          },
          {
            "name": "isAsync",
            "in": "query",
            "type": "boolean",
            "required": true,
            "description": "is Async"
          },
          {
            "name": "ts",
            "in": "query",
            "type": "string",
            "description": "Last changes timestamp"
          },
          {
            "name": "query",
            "in": "query",
            "type": "string",
            "description": "Query criteria"
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntityRecordsListResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      }
    },
    "/esanta_model_EJFinessOcc/check": {
      "post": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Check a record of specified Entity for duplicates",
        "operationId": "check_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "in": "body",
            "name": "body",
            "required": true,
            "schema": {
              "$ref": "#/definitions/esanta_model_EJFinessOcc_CheckRequest"
            }
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntityRecordCheckResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      }
    },
    "/esanta_model_EJFinessOcc/link": {
      "get": {
        "tags": [
          "esanta_model_EJFinessOcc"
        ],
        "summary": "Link record in external system with a record in MDM (send after adding a new record in external system)",
        "operationId": "link_esanta_model_EJFinessOcc",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "parameters": [
          {
            "name": "systemGUID",
            "in": "query",
            "type": "string",
            "required": true,
            "description": "Request initiator system GUID"
          },
          {
            "name": "isAsync",
            "in": "query",
            "type": "boolean",
            "required": true,
            "description": "is Async"
          },
          {
            "name": "initSystemRecordId",
            "in": "query",
            "type": "string",
            "description": "Record Id in initiator system"
          },
          {
            "name": "mdmRecordId",
            "in": "query",
            "type": "string",
            "description": "Record Id in Kano MDM (used while getting a new record, that doesn't exist in initiator system)"
          }
        ],
        "responses": {
          "200": {
            "description": "successful operation",
            "schema": {
              "$ref": "#/definitions/EntityRecordLinkResponse"
            }
          },
          "405": {
            "description": "Invalid input"
          }
        }
      }
    }
  },
  "definitions": {
    "StatusResponse": {
      "type": "object",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "payload": {
          "type": "string",
          "description": "JSON projection of related response"
        }
      }
    },
    "EntitiesListResponse": {
      "type": "object",
      "description": "Get list of integrated Entities",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "entitiesList": {
          "type": "array",
          "description": "JSON projection of integrated Entities",
          "items": {
            "$ref": "#/definitions/Entity"
          }
        }
      }
    },
    "Entity": {
      "type": "object",
      "description": "Integrated Entity",
      "properties": {
        "systemName": {
          "type": "string",
          "description": "Entity system name"
        },
        "description": {
          "type": "string",
          "description": "Entity description"
        }
      }
    },
    "EntityRecordsListResponse": {
      "type": "object",
      "description": "Response to get Entity Records List Request",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "requestGUID": {
          "type": "string",
          "description": "Initial Request GUID in Kano MDM. Use this GUID in 'getStatusRequest'"
        },
        "ts": {
          "type": "string",
          "format": "date-time",
          "description": "Last changes timestamp"
        },
        "entityRecords": {
          "type": "array",
          "description": "JSON projection of specified Entity records",
          "items": {
            "$ref": "#/definitions/EntityRecord"
          }
        }
      }
    },
    "EntityRecord": {
      "type": "object",
      "description": "Record Summary - Used in EntityRecordsListResponse",
      "properties": {
        "dictClassName": {
          "type": "string",
          "description": "Entity system name"
        },
        "initSystemRecordId": {
          "type": "string",
          "description": "Record Id in initiator system"
        },
        "mdmId": {
          "type": "string",
          "description": "Record Id in Kano MDM"
        }
      }
    },
    "EntityRecordAddResponse": {
      "type": "object",
      "description": "Response to Add Entity Record Request",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "requestGUID": {
          "type": "string",
          "description": "Initial Request GUID in Kano MDM. Use this GUID in 'getStatusRequest'"
        },
        "mdmRecordId": {
          "type": "string",
          "description": "Record Id in Kano MDM"
        }
      }
    },
    "EntityRecordModifyResponse": {
      "type": "object",
      "description": "Response to Modify Entity Record Request",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "requestGUID": {
          "type": "string",
          "description": "Initial Request GUID in Kano MDM. Use this GUID in 'getStatusRequest'"
        },
        "mdmRecordId": {
          "type": "string",
          "description": "Record Id in Kano MDM"
        }
      }
    },
    "EntityRecordCheckResponse": {
      "type": "object",
      "description": "Response to Check a record for duplicates Request",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "hasDuplicates": {
          "type": "boolean",
          "description": "Record has duplicates in MDM?"
        },
        "duplicateRecords": {
          "type": "array",
          "description": "JSON projection of duplicate records",
          "items": {
            "$ref": "#/definitions/DuplicateRecord"
          }
        }
      }
    },
    "DuplicateRecord": {
      "type": "object",
      "description": "Duplicate Record Summary - Used in EntityRecordCheckResponse",
      "properties": {
        "dictClassName": {
          "type": "string",
          "description": "Entity system name"
        },
        "initSystemRecordId": {
          "type": "string",
          "description": "Record Id in initiator system"
        },
        "mdmId": {
          "type": "string",
          "description": "Record Id in Kano MDM"
        },
        "probability": {
          "type": "string",
          "description": "TODO: add comment"
        },
        "description": {
          "type": "string",
          "description": "TODO: add comment"
        }
      }
    },
    "EntityRecordDeleteResponse": {
      "type": "object",
      "description": "Response to Delete Entity Record Request",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "requestGUID": {
          "type": "string",
          "description": "Initial Request GUID in Kano MDM. Use this GUID in 'getStatusRequest'"
        },
        "mdmRecordId": {
          "type": "string",
          "description": "Record Id in Kano MDM"
        }
      }
    },
    "EntityRecordLinkResponse": {
      "type": "object",
      "description": "Response to Link Entity Record Request",
      "properties": {
        "status": {
          "type": "string",
          "description": "Status code. 1 - OK, 0 - ERROR"
        },
        "statusText": {
          "type": "string",
          "description": "Status text. Error description or other info"
        },
        "requestGUID": {
          "type": "string",
          "description": "Initial Request GUID in Kano MDM. Use this GUID in 'getStatusRequest'"
        }
      }
    },
    "esanta_model_EJFinessOcc_GetResponse": {
      "type": "object",
      "properties": {
        "status": {
          "description": "Status code. 1 - OK, 0 - ERROR",
          "type": "string"
        },
        "statusText": {
          "description": "Status text. Error description or other info",
          "type": "string"
        },
        "requestGUID": {
          "description": "Used for async requests. Initial Request GUID in Kano MDM. Use this GUID in 'getStatusRequest'",
          "type": "string"
        },
        "payload": {
          "description": "Used for sync requests. Projection of specified Entity record",
          "$ref": "#/definitions/esanta_model_EJFinessOcc"
        }
      }
    },
    "esanta_model_EJFinessOcc_AddRequest": {
      "type": "object",
      "properties": {
        "systemGUID": {
          "description": "Request initiator system GUID",
          "type": "string"
        },
        "initSystemRecordId": {
          "description": "Record Id in initiator system",
          "type": "string"
        },
        "payload": {
          "description": "Projection of specified Entity record",
          "$ref": "#/definitions/esanta_model_EJFinessOcc"
        }
      }
    },
    "esanta_model_EJFinessOcc_ModifyRequest": {
      "type": "object",
      "properties": {
        "systemGUID": {
          "description": "Request initiator system GUID",
          "type": "string"
        },
        "initSystemRecordId": {
          "description": "Record Id in initiator system",
          "type": "string"
        },
        "payload": {
          "description": "Projection of specified Entity record",
          "$ref": "#/definitions/esanta_model_EJFinessOcc"
        }
      }
    },
    "esanta_model_EJFinessOcc_CheckRequest": {
      "type": "object",
      "properties": {
        "systemGUID": {
          "description": "Request initiator system GUID",
          "type": "string"
        },
        "payload": {
          "description": "Projection of specified Entity record",
          "$ref": "#/definitions/esanta_model_EJFinessOcc"
        }
      }
    },
    "esanta_model_EJFinessOcc": {
      "type": "object",
      "properties": {
        "APE": {
          "$ref": "#/definitions/esanta_model_APE",
          "description": ""
        },
        "buildNum": {
          "type": "string",
          "description": ""
        },
        "changeDateSIREN": {
          "format": "date",
          "type": "string",
          "description": ""
        },
        "changeReasonSIREN": {
          "type": "string",
          "description": ""
        },
        "codeFINESSEJ": {
          "type": "string",
          "description": ""
        },
        "codeSIREN": {
          "type": "string",
          "description": ""
        },
        "countryCode": {
          "type": "string",
          "description": ""
        },
        "countryName": {
          "type": "string",
          "description": ""
        },
        "creationType": {
          "type": "string",
          "description": ""
        },
        "deptCode": {
          "type": "string",
          "description": ""
        },
        "deptName": {
          "type": "string",
          "description": ""
        },
        "email": {
          "type": "string",
          "description": ""
        },
        "fax": {
          "type": "string",
          "description": ""
        },
        "geoInfo": {
          "type": "string",
          "description": ""
        },
        "goldenRecord": {
          "$ref": "#/definitions/esanta_model_EJFinessOcc",
          "description": "Golden record link"
        },
        "houseNum": {
          "type": "string",
          "description": ""
        },
        "id": {
          "type": "integer",
          "description": "Object Id (read-only)"
        },
        "info": {
          "type": "string",
          "description": ""
        },
        "jurStatus": {
          "$ref": "#/definitions/esanta_model_StatutJuridique",
          "description": ""
        },
        "liquidateDate": {
          "format": "date",
          "type": "string",
          "description": ""
        },
        "liquidateType": {
          "type": "string",
          "description": ""
        },
        "locationCode": {
          "type": "string",
          "description": ""
        },
        "locationName": {
          "type": "string",
          "description": ""
        },
        "locationShortName": {
          "type": "string",
          "description": ""
        },
        "mentionDistribution": {
          "type": "string",
          "description": ""
        },
        "orgCategoryCode": {
          "type": "string",
          "description": ""
        },
        "orgCategoryName": {
          "type": "string",
          "description": ""
        },
        "orgCategoryShortName": {
          "type": "string",
          "description": ""
        },
        "orgCreateDate": {
          "format": "date",
          "type": "string",
          "description": ""
        },
        "orgFullName": {
          "type": "string",
          "description": ""
        },
        "orgName": {
          "type": "string",
          "description": ""
        },
        "orgNameAdditional": {
          "type": "string",
          "description": ""
        },
        "orgPostCode": {
          "type": "string",
          "description": ""
        },
        "orgUpdateDate": {
          "format": "date",
          "type": "string",
          "description": ""
        },
        "phon2": {
          "type": "string",
          "description": ""
        },
        "phone": {
          "type": "string",
          "description": ""
        },
        "postalCode": {
          "type": "string",
          "description": ""
        },
        "streetName": {
          "type": "string",
          "description": ""
        },
        "streetType": {
          "type": "string",
          "description": ""
        },
        "streetTypeName": {
          "type": "string",
          "description": ""
        },
        "typologie": {
          "type": "string",
          "description": ""
        }
      }
    },
    "esanta_model_APE": {
      "type": "object",
      "properties": {
        "code": {
          "type": "string",
          "description": "Code APE"
        },
        "id": {
          "type": "integer",
          "description": "Object Id (read-only)"
        },
        "name": {
          "type": "string",
          "description": "Libell? APE"
        }
      }
    },
    "esanta_model_StatutJuridique": {
      "type": "object",
      "properties": {
        "code": {
          "type": "string",
          "description": "Code statut juridique"
        },
        "id": {
          "type": "integer",
          "description": "Object Id (read-only)"
        },
        "name": {
          "type": "string",
          "description": "Libell? statut juridique"
        },
        "shortName": {
          "type": "string",
          "description": "Libell? court statut juridique"
        }
      }
    }
  }
}
}

}