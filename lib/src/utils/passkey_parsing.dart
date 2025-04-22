import 'dart:convert';

Map<String, dynamic> getPasskeyOptionsFromString(String value) {
  final decoded = json.decode(value) as Map<String, dynamic>;

  if (decoded.containsKey('publicKey')) {
    return decoded['publicKey'] as Map<String, dynamic>;
  }

  if (decoded.containsKey('credentialOptions')) {
    return (decoded['credentialOptions'] as Map<String, dynamic>)['publicKey']
        as Map<String, dynamic>;
  }

  // TODO: Handle this case with result type
  throw ArgumentError('Invalid passkey creation options');
}
