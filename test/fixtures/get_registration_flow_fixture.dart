const registrationFlowResponse = '''
{
    "id": "9cff2675-a983-4b36-9957-ad722287915e",
    "oauth2_login_challenge": null,
    "type": "api",
    "expires_at": "2023-07-12T17:24:21.123581527Z",
    "issued_at": "2023-07-12T16:24:21.123581527Z",
    "request_url": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/registration/api",
    "ui": {
        "action": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/registration?flow=9cff2675-a983-4b36-9957-ad722287915e",
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
                "meta": {
                    "label": {
                        "id": 1070002,
                        "text": "E-Mail",
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
                    "autocomplete": "new-password",
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
                    "name": "traits.given_name",
                    "type": "text",
                    "required": true,
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070002,
                        "text": "Given name",
                        "type": "info"
                    }
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
                    "label": {
                        "id": 1070002,
                        "text": "Family name",
                        "type": "info"
                    }
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
    }
}
''';
