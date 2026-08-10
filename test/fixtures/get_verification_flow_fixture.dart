const verificationFlowFixture = '''
{
    "id": "ed1efde6-8e5a-41df-93a9-caa7f76656ff",
    "type": "api",
    "expires_at": "2023-07-17T13:23:27.138051184Z",
    "issued_at": "2023-07-17T12:23:27.138051184Z",
    "request_url": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/verification/api",
    "active": "code",
    "ui": {
        "action": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/verification?flow=ed1efde6-8e5a-41df-93a9-caa7f76656ff",
        "method": "POST",
        "nodes": [
            {
                "type": "input",
                "group": "code",
                "attributes": {
                    "name": "email",
                    "type": "email",
                    "required": true,
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070007,
                        "text": "Email",
                        "type": "info"
                    }
                }
            },
            {
                "type": "input",
                "group": "code",
                "attributes": {
                    "name": "method",
                    "type": "submit",
                    "value": "code",
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070005,
                        "text": "Submit",
                        "type": "info"
                    }
                }
            }
        ]
    },
    "state": "choose_method"
}
''';

const sentEmailVerificationFlowFixture = '''
{
    "id": "ed1efde6-8e5a-41df-93a9-caa7f76656ff",
    "type": "api",
    "expires_at": "2023-07-17T13:23:27.138051184Z",
    "issued_at": "2023-07-17T12:23:27.138051184Z",
    "request_url": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/verification/api",
    "active": "code",
    "ui": {
        "action": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/verification?flow=ed1efde6-8e5a-41df-93a9-caa7f76656ff",
        "method": "POST",
        "nodes": [
            {
                "type": "input",
                "group": "code",
                "attributes": {
                    "name": "method",
                    "type": "hidden",
                    "value": "code",
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {}
            },
            {
                "type": "input",
                "group": "code",
                "attributes": {
                    "name": "code",
                    "type": "text",
                    "required": true,
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070011,
                        "text": "Verification code",
                        "type": "info"
                    }
                }
            },
            {
                "type": "input",
                "group": "code",
                "attributes": {
                    "name": "method",
                    "type": "submit",
                    "value": "code",
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070009,
                        "text": "Continue",
                        "type": "info"
                    }
                }
            },
            {
                "type": "input",
                "group": "code",
                "attributes": {
                    "name": "email",
                    "type": "submit",
                    "value": "email@email.com",
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070008,
                        "text": "Resend code",
                        "type": "info"
                    }
                }
            }
        ],
        "messages": [
            {
                "id": 1080003,
                "text": "An email containing a verification code has been sent to the email address you provided.",
                "type": "info"
            }
        ]
    },
    "state": "sent_email"
}
''';
