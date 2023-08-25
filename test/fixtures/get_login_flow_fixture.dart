const loginFlowId = 'a45fcf47-d654-4244-8d28-454712361030';
const loginFlowResponse = '''
{
  "id": "a45fcf47-d654-4244-8d28-454712361030",
  "type": "api",
  "expires_at": "2023-08-24T12:39:51.768361203Z",
  "issued_at": "2023-08-24T11:39:51.768361203Z",
  "request_url": "https://auth.exampleapp.test.lncd.pl/self-service/login/api?return_session_token_exchange_code=true\u0026return_to=pl.leancode.template.tst%3A%2F%2Fapp%2F",
  "return_to": "pl.leancode.template.tst://app/",
  "ui": {
    "action": "https://auth.exampleapp.test.lncd.pl/self-service/login?flow=a45fcf47-d654-4244-8d28-454712361030",
    "method": "POST",
    "nodes": [
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
            "id": 1010002,
            "text": "Sign in with Apple",
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
            "id": 1010002,
            "text": "Sign in with Facebook",
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
            "id": 1010002,
            "text": "Sign in with Google",
            "type": "info",
            "context": { "provider": "Google" }
          }
        }
      },
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
        "group": "default",
        "attributes": {
          "name": "identifier",
          "type": "text",
          "value": "",
          "required": true,
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": { "label": { "id": 1070004, "text": "ID", "type": "info" } }
      },
      {
        "type": "input",
        "group": "password",
        "attributes": {
          "name": "password",
          "type": "password",
          "required": true,
          "autocomplete": "current-password",
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
          "name": "method",
          "type": "submit",
          "value": "password",
          "disabled": false,
          "node_type": "input"
        },
        "messages": [],
        "meta": {
          "label": {
            "id": 1010001,
            "text": "Sign in",
            "type": "info",
            "context": {}
          }
        }
      }
    ]
  },
  "created_at": "2023-08-24T11:39:51.784364Z",
  "updated_at": "2023-08-24T11:39:51.784364Z",
  "refresh": false,
  "requested_aal": "aal1",
  "session_token_exchange_code": "4Ld6wkREE4Cw5hMvVWmhxrx6ViDiDzCXt6M2vy2GC2831l3jEnyS7Q9G8ELK1698"
}
''';
