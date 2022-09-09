import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
//   try {
//   // Verify a token
//   final jwt = JWT.verify(token, SecretKey('secret passphrase'));

//   print('Payload: ${jwt.payload}');
// } on JWTExpiredError {
//   print('jwt expired');
// } on JWTError catch (ex) {
//   print(ex.message); // ex: invalid signature
// }
  return Response(statusCode: 200);
}

Future<Response> _post(RequestContext context) async {
  return Response(statusCode: 200);
}
