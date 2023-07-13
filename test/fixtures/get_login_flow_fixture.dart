const loginFlowId = '271fed14-7c4f-438d-b413-563d4c90084a';
const loginFlowResponse = '''
{
    "id": "271fed14-7c4f-438d-b413-563d4c90084a",
    "oauth2_login_challenge": null,
    "type": "api",
    "expires_at": "2023-07-12T20:36:16.879630752Z",
    "issued_at": "2023-07-12T19:36:16.879630752Z",
    "request_url": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/login/api",
    "ui": {
        "action": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/login?flow=271fed14-7c4f-438d-b413-563d4c90084a",
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
                "meta": {
                    "label": {
                        "id": 1070004,
                        "text": "ID",
                        "type": "info"
                    }
                }
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
                    "label": {
                        "id": 1070001,
                        "text": "Password",
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
                        "id": 1010001,
                        "text": "Sign in",
                        "type": "info",
                        "context": {}
                    }
                }
            }
        ]
    },
    "created_at": "2023-07-12T19:36:16.883124Z",
    "updated_at": "2023-07-12T19:36:16.883124Z",
    "refresh": false,
    "requested_aal": "aal1"
}
''';
