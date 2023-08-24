const registrationFlowResponse = '''
{
  "id": "213e3ea0-6b7d-472a-b9bd-0d957716ff14",
  "type": "api",
  "expires_at": "2023-08-24T12:44:50.614846417Z",
  "issued_at": "2023-08-24T11:44:50.614846417Z",
  "request_url": "https://auth.exampleapp.test.lncd.pl/self-service/registration/api?return_session_token_exchange_code=true\u0026return_to=pl.leancode.template.tst%3A%2F%2Fapp",
  "return_to": "pl.leancode.template.tst://app",
  "ui": {
    "action": "https://auth.exampleapp.test.lncd.pl/self-service/registration?flow=213e3ea0-6b7d-472a-b9bd-0d957716ff14",
    "method": "POST",
    "nodes": [
      {
        "type": "input",
        "group": "default",
        "attributes": {
          "name": "csrf_token",
          "type": "hidden",
          "value": "",
          "required": true,
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {}
      },
      {
        "type": "input",
        "group": "oidc",
        "attributes": {
          "name": "provider",
          "type": "submit",
          "value": "apple",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": {
            "id": 1040002,
            "text": "Sign up with Apple",
            "type": "info",
            "context": { "provider": "Apple" }
          }
        }
      },
      {
        "type": "input",
        "group": "oidc",
        "attributes": {
          "name": "provider",
          "type": "submit",
          "value": "facebook",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": {
            "id": 1040002,
            "text": "Sign up with Facebook",
            "type": "info",
            "context": { "provider": "Facebook" }
          }
        }
      },
      {
        "type": "input",
        "group": "oidc",
        "attributes": {
          "name": "provider",
          "type": "submit",
          "value": "google",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": {
            "id": 1040002,
            "text": "Sign up with Google",
            "type": "info",
            "context": { "provider": "Google" }
          }
        }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "traits.email",
          "type": "email",
          "required": true,
          "autocomplete": "email",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": { "label": { "id": 1070002, "text": "E-Mail", "type": "info" } }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "password",
          "type": "password",
          "required": true,
          "autocomplete": "new-password",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": { "id": 1070001, "text": "Password", "type": "info" }
        }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "traits.given_name",
          "type": "text",
          "required": true,
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": { "id": 1070002, "text": "Given name", "type": "info" }
        }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "traits.family_name",
          "type": "text",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": { "id": 1070002, "text": "Family name", "type": "info" }
        }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "traits.regulations_accepted",
          "type": "checkbox",
          "required": true,
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": {
            "id": 1070002,
            "text": "I accept Terms of Service and Privacy Policy",
            "type": "info"
          }
        }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "method",
          "type": "submit",
          "value": "password",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": {
            "id": 1040001,
            "text": "Sign up",
            "type": "info",
            "context": {}
          }
        }
      }
    ]
  },
  "session_token_exchange_code": "A739SatzLgiz9Tu3AD2VRcM5UKk7OMPcdd8tFxVo5MINa5V3xkcnFDJK4oJB3s0C"
}

''';
