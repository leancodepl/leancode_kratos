import 'dart:convert';

Map<String, dynamic> getPasskeyCreationOptionsFromString(String value) {
  final decoded = json.decode(value) as Map<String, dynamic>;

  return (decoded['credentialOptions'] as Map<String, dynamic>)['publicKey'];
}

Map<String, dynamic> getPasskeyRequestOptionsFromString(String value) {
  final decoded = json.decode(value) as Map<String, dynamic>;

  return decoded['publicKey'];
}
