// ignore_for_file: discarded_futures

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:mocktail/mocktail.dart';

import 'fixtures/complete_verification_flow_fixture.dart';
import 'fixtures/get_registration_flow_fixture.dart';
import 'fixtures/get_verification_flow_fixture.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockCredentialsStorage extends Mock implements CredentialsStorage {}

class MockUri extends Fake implements Uri {}

void main() {
  group(
    'KratosClient',
    () {
      const password = 'password';
      const traits = {
        'email': 'email@email.com',
        'given_name': 'Givenname',
      };

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

      group(
        'registerWithPassword',
        () {
          setUp(
            () {
              when<Future<http.Response>>(() => mockHttpClient.get(any()))
                  .thenAnswer(
                (_) async => http.Response(registrationFlowResponse, 200),
              );
            },
          );

          test(
            'initializes new auth flow',
            () async {
              await kratosClient.registerWithPassword(password: password);

              final uri = verify(() => mockHttpClient.get(captureAny<Uri>()))
                  .captured
                  .single as Uri;
              expect(
                uri.path,
                '/self-service/registration/api',
              );
            },
          );

          test(
            'submits registration flow with correct data',
            () async {
              await kratosClient.registerWithPassword(
                password: password,
                traits: traits,
              );

              final captured = verify(
                () => mockHttpClient.post(
                  captureAny(),
                  headers: any(named: 'headers'),
                  body: captureAny(named: 'body'),
                ),
              ).captured;

              final uri = captured.first as Uri;
              final body =
                  json.decode(captured[1] as String) as Map<String, dynamic>;

              expect(
                uri.path,
                '/self-service/registration',
              );
              expect(body['method'], 'password');
              expect(body['password'], password);
              expect(body['traits'], equals(traits));
            },
          );
        },
      );
    },
  );

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
      when(() => mockStorage.clear()).thenAnswer((_) async {});
    });

    const sessionToken = 'test_token';

    test('should return LogoutSuccessResult when statusCode is 204', () async {
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

      expect(result, isA<LogoutSuccessResult>());
      verify(() => mockStorage.read()).called(1);
      verify(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).called(1);
    });

    test('should return LogoutUnknownErrorResult when statusCode is not 204',
        () async {
      when(() => mockStorage.read()).thenAnswer((_) async => sessionToken);
      when(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => http.Response('', 300));

      final result = await kratosClient.logout();

      expect(result, isA<LogoutUnknownErrorResult>());
      verify(() => mockStorage.read()).called(1);
      verify(
        () => mockHttpClient.delete(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).called(1);
    });

    test('should return LogoutUnknownErrorResult when sessionToken is null',
        () async {
      when(() => mockStorage.read()).thenAnswer((_) async => null);

      final result = await kratosClient.logout();

      expect(result, isA<LogoutUnknownErrorResult>());
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
        isA<VerificationFlowDto>().having(
          (result) => result.id,
          'id',
          loginFlowId,
        ),
      );
      verify(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .called(1);
    });

    test('should return null when loginFlowId is not String', () async {
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

      expect(result, null);
      verify(
        () => mockHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).called(1);
    });

    test('should return null on exception', () async {
      when(
        () => mockHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => http.Response('test', 200));

      final result = await kratosClient.getVerificationFlow();

      expect(result, null);
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
        code: '2145637',
        flowId: '3721',
      );

      expect(result, isA<VerificationUnknownErrorResult>());
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
