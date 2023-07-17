const completeVerificationFlowFixture = '''
{
    "id": "66aba3f6-4ff1-45c2-b6ea-1953a2ac5f71",
    "type": "browser",
    "expires_at": "2023-07-17T16:22:15.062091Z",
    "issued_at": "2023-07-17T15:22:15.062091Z",
    "request_url": "https://auth.leancode-internal-kratos.test.lncd.pl/self-service/verification/browser?return_to=",
    "active": "code",
    "ui": {
        "action": "https://leancode-internal-kratos.test.lncd.pl/",
        "method": "GET",
        "nodes": [
            {
                "type": "input",
                "group": "default",
                "attributes": {
                    "name": "csrf_token",
                    "type": "hidden",
                    "value": "PhdsctYEvO9tPKCoir91XhQKQ097VilalHrmRWwXYtbibcjNAQ6LuyizCokuptqyFzV/o3wzOHrYMTP3KXY4Gg==",
                    "required": true,
                    "disabled": false,
                    "node_type": "input"
                },
                "messages": [],
                "meta": {}
            },
            {
                "type": "a",
                "group": "code",
                "attributes": {
                    "href": "https://leancode-internal-kratos.test.lncd.pl/",
                    "title": {
                        "id": 1070009,
                        "text": "Continue",
                        "type": "info"
                    },
                    "id": "continue",
                    "node_type": "a"
                },
                "messages": [],
                "meta": {
                    "label": {
                        "id": 1070009,
                        "text": "Continue",
                        "type": "info"
                    }
                }
            }
        ],
        "messages": [
            {
                "id": 1080002,
                "text": "You successfully verified your email address.",
                "type": "success"
            }
        ]
    },
    "state": "passed_challenge"
}
''';
