import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:mocktail/mocktail.dart';

import 'fixtures/complete_verification_flow_fixture.dart';
import 'fixtures/get_login_flow_fixture.dart';
import 'fixtures/get_registration_flow_fixture.dart';
import 'fixtures/get_verification_flow_fixture.dart';

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

    test('should return null when response body is empty', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response('', 400)),
      );
      final registrationFlow = await kratosClient.getRegistrationFlow();

      expect(registrationFlow, null);
    });

    test('should return login flow id on success', () async {
      final mockResponse = http.Response(loginFlowResponse, 200);
      when(() => mockHttpClient.get(any()))
          .thenAnswer((_) async => mockResponse);

      final result = await kratosClient.getLoginFlow();
      expect(result, loginFlowId);
    });

    test('should return null from getLoginFlow when response body is empty',
        () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response('', 400)),
      );
      final registrationFlow = await kratosClient.getLoginFlow();

      expect(registrationFlow, null);
    });
  });

  group('logout', () {
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

    const sessionToken = 'test_token';

    test('should return LogoutSuccess when statusCode is 204', () async {
      when(() => mockStorage.read()).thenAnswer((_) async => sessionToken);
      when(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer(
        (_) async => Future.value(http.Response('', 204)),
      );

      final result = await kratosClient.logout();

      expect(result, isA<LogoutSuccess>());
      verify(() => mockStorage.read()).called(1);
      verify(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).called(1);
    });

    test('should return LogoutFail when statusCode is not 204', () async {
      when(() => mockStorage.read()).thenAnswer((_) async => sessionToken);
      when(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => http.Response('', 300));

      final result = await kratosClient.logout();

      expect(result, isA<LogoutFail>());
      verify(() => mockStorage.read()).called(1);
      verify(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).called(1);
    });

    test('should return LogoutFail when sessionToken is null', () async {
      when(() => mockStorage.read()).thenAnswer((_) async => null);

      final result = await kratosClient.logout();

      expect(result, isA<LogoutFail>());
      verify(() => mockStorage.read()).called(1);
      verifyNever(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      );
    });
  });

  group('get verification flow', () {
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
    test('should return VerificationFlowResult when loginFlowId is valid',
        () async {
      const loginFlowId = 'ed1efde6-8e5a-41df-93a9-caa7f76656ff';
      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => http.Response(verificationFlowFixture, 200));

      final result = await kratosClient.getVerificationFlow();

      expect(
        result,
        isA<VerificationFlowResult>().having(
          (result) => result.flowId,
          'flowId',
          loginFlowId,
        ),
      );
      verify(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .called(1);
    });

    test(
        'should return VerificationFlowResultError when loginFlowId is not String',
        () async {
      const loginFlowId = 123;
      when(
        () => mockHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer(
        (_) async => http.Response(jsonEncode({'id': loginFlowId}), 200),
      );

      final result = await kratosClient.getVerificationFlow();

      expect(result, isA<VerificationFlowResultError>());
      verify(
        () => mockHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).called(1);
    });

    test('should return VerificationFlowResultError on exception', () async {
      when(
        () => mockHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response('test', 200));

      final result = await kratosClient.getVerificationFlow();

      expect(result, isA<VerificationFlowResultError>());
      verify(
        () => mockHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).called(1);
    });
  });

  group('Verify account', () {
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
    test(
        'should return VerificationSuccessResult when state is "passed_challenge"',
        () async {
      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => http.Response(verificationFlowFixture, 200));
      when(
        () => mockHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer(
        (_) async => http.Response(completeVerificationFlowFixture, 200),
      );

      final result = await kratosClient.verifyAccount(
        email: 'email@test.pl',
        code: '2145637',
        flowId: '3721',
      );

      expect(result, isA<VerificationSuccessResult>());
      verify(
        () => mockHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).called(1);
    });

    test(
        'should return VerificationFailedResult when state is not "passed_challenge"',
        () async {
      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => http.Response(verificationFlowFixture, 200));
      when(
        () => mockHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer(
        (_) async => http.Response(jsonEncode({'state': 'choose_method'}), 200),
      );

      final result = await kratosClient.verifyAccount(
        email: 'email@test.pl',
        code: '2145637',
        flowId: '3721',
      );

      expect(
        result,
        isA<VerificationFailedResult>()
            .having((result) => result.errorCode, 'errorCode', '4070006'),
      );
      verify(
        () => mockHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).called(1);
    });
  });
}
