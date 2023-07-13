import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/registration/domain/registration_domain.dart';
import 'package:mocktail/mocktail.dart';

import 'fixtures/get_login_flow_fixture.dart';
import 'fixtures/get_registration_flow_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockCredentialsStorage extends Mock implements CredentialsStorage {}

class MockUri extends Fake implements Uri {}

void main() {
  group('get Flows', () {
    late MockCredentialsStorage mockStorage;
    late KratosClient kratosClient;
    late MockHttpClient mockHttpClient;

    setUpAll(() {
      registerFallbackValue(MockUri());
    });

    setUp(() {
      mockHttpClient = MockHttpClient();
      mockStorage = MockCredentialsStorage();
      kratosClient = KratosClient(
        baseUri: Uri(host: 'test.pl', scheme: 'https'),
        credentialsStorage: mockStorage,
        httpClient: mockHttpClient,
      );
    });

    test('should return RegistrationFlowModel when response is successful',
        () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response(registrationFlowResponse, 200)),
      );
      final expectedModel = RegistrationFlowModel(
        flowId: '9cff2675-a983-4b36-9957-ad722287915e',
        expiresAt: DateTime.parse('2023-07-12 17:24:21.123581Z'),
        method: 'password',
        fields: [
          const RegistrationFlowField(
            name: 'csrf_token',
            type: 'hidden',
            requiredField: true,
            disabled: false,
          ),
          const RegistrationFlowField(
            name: 'traits.email',
            type: 'email',
            requiredField: true,
            disabled: false,
            labelId: 1070002,
          ),
          const RegistrationFlowField(
            name: 'password',
            type: 'password',
            requiredField: true,
            disabled: false,
            labelId: 1070001,
          ),
          const RegistrationFlowField(
            name: 'traits.given_name',
            type: 'text',
            requiredField: true,
            disabled: false,
            labelId: 1070002,
          ),
          const RegistrationFlowField(
            name: 'traits.family_name',
            type: 'text',
            disabled: false,
            labelId: 1070002,
          ),
          const RegistrationFlowField(
            name: 'traits.regulations_accepted',
            type: 'checkbox',
            requiredField: true,
            disabled: false,
            labelId: 1070002,
          ),
          const RegistrationFlowField(
            name: 'method',
            type: 'submit',
            disabled: false,
            labelId: 1040001,
          )
        ],
      );

      final registrationFlow = await kratosClient.getRegistrationFlow();

      expect(registrationFlow, expectedModel);
    });
    test('should return login flow id on success', () async {
      final mockResponse = http.Response(loginFlowResponse, 200);
      when(() => mockHttpClient.get(any()))
          .thenAnswer((_) async => mockResponse);

      final result = await kratosClient.getLoginFlow();
      expect(result, loginFlowId);
    });
  });
}
