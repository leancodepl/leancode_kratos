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

    test('should return AuthFlowModel when getRegistrationFlow is successful',
        () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response(registrationFlowResponse, 200)),
      );
      final expectedModel = AuthFlowModel(
        id: '213e3ea0-6b7d-472a-b9bd-0d957716ff14',
        expiresAt: DateTime.parse('2023-08-24T12:44:50.614846417Z'),
        sessionTokenExchangeCode:
            'A739SatzLgiz9Tu3AD2VRcM5UKk7OMPcdd8tFxVo5MINa5V3xkcnFDJK4oJB3s0C',
        fields: [
          const AuthFlowField(
            name: 'csrf_token',
            type: 'hidden',
            requiredField: true,
            disabled: false,
          ),
          const AuthFlowField(
            name: 'provider',
            type: 'submit',
            disabled: false,
            labelId: 1040002,
          ),
          const AuthFlowField(
            name: 'provider',
            type: 'submit',
            disabled: false,
            labelId: 1040002,
          ),
          const AuthFlowField(
            name: 'provider',
            type: 'submit',
            disabled: false,
            labelId: 1040002,
          ),
          const AuthFlowField(
            name: 'traits.email',
            type: 'email',
            requiredField: true,
            disabled: false,
            labelId: 1070002,
          ),
          const AuthFlowField(
            name: 'password',
            type: 'password',
            requiredField: true,
            disabled: false,
            labelId: 1070001,
          ),
          const AuthFlowField(
            name: 'traits.given_name',
            type: 'text',
            requiredField: true,
            disabled: false,
            labelId: 1070002,
          ),
          const AuthFlowField(
            name: 'traits.family_name',
            type: 'text',
            disabled: false,
            labelId: 1070002,
          ),
          const AuthFlowField(
            name: 'traits.regulations_accepted',
            type: 'checkbox',
            requiredField: true,
            disabled: false,
            labelId: 1070002,
          ),
          const AuthFlowField(
            name: 'method',
            type: 'submit',
            disabled: false,
            labelId: 1040001,
          )
        ],
      );

      final registrationFlow =
          await kratosClient.getRegistrationFlow(returnTo: 'com.app//callback');

      expect(registrationFlow, expectedModel);
    });

    test('should return null when response body is empty', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response('', 400)),
      );
      final registrationFlow =
          await kratosClient.getRegistrationFlow(returnTo: 'com.app//callback');

      expect(registrationFlow, null);
    });

    test('should return AuthFlowModel when getLoginFlow is successful',
        () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response(loginFlowResponse, 200)),
      );
      final expectedModel = AuthFlowModel(
        id: loginFlowId,
        expiresAt: DateTime.parse('2023-08-24T12:39:51.768361203Z'),
        sessionTokenExchangeCode:
            '4Ld6wkREE4Cw5hMvVWmhxrx6ViDiDzCXt6M2vy2GC2831l3jEnyS7Q9G8ELK1698',
        fields: [
          const AuthFlowField(
            name: 'provider',
            type: 'submit',
            disabled: false,
            labelId: 1010002,
          ),
          const AuthFlowField(
            name: 'provider',
            type: 'submit',
            disabled: false,
            labelId: 1010002,
          ),
          const AuthFlowField(
            name: 'provider',
            type: 'submit',
            disabled: false,
            labelId: 1010002,
          ),
          const AuthFlowField(
            name: 'csrf_token',
            type: 'hidden',
            requiredField: true,
            disabled: false,
          ),
          const AuthFlowField(
            name: 'identifier',
            type: 'text',
            requiredField: true,
            disabled: false,
            labelId: 1070004,
          ),
          const AuthFlowField(
            name: 'password',
            type: 'password',
            requiredField: true,
            disabled: false,
            labelId: 1070001,
          ),
          const AuthFlowField(
            name: 'method',
            type: 'submit',
            disabled: false,
            labelId: 1010001,
          )
        ],
      );

      final registrationFlow = await kratosClient.getLoginFlow(
        returnTo: 'pl.leancode.template.tst://app',
      );

      expect(registrationFlow, expectedModel);
    });

    test('should return null from getLoginFlow when response body is empty',
        () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => Future.value(http.Response('', 400)),
      );
      final registrationFlow = await kratosClient.getLoginFlow(
        returnTo: 'pl.leancode.template.tst://app',
      );

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
