import 'dart:io';
import 'dart:async';

import 'package:dio/adapter.dart';
import 'package:flutter/services.dart';
import 'package:zoop/models/ConsentAcess.dart';
import '../../models/Credential.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

Future<ConsentAcess> fetchConsentAcess(
    ConsentAcess consentAcess, Credential cred) async {
  final consentId = consentAcess.consentId;
  final resourceEndpoint =
      'https://rs1.tecban-sandbox.o3bank.co.uk/open-banking/v3.1/aisp/account-access-consents/$consentId';

  final accessToken = cred.accessToken;
  final tokenType = cred.tokenType;

  final SecurityContext context = SecurityContext.defaultContext;

  /* final crtData = await rootBundle.load('cert/bank1/client_certificate.crt');
  context.useCertificateChainBytes(crtData.buffer.asUint8List());

  final keyBytes = await rootBundle.load('cert/bank1/client_private_key.key');
  context.usePrivateKeyBytes(keyBytes.buffer.asUint8List());
 */
  Response responseD;
  Dio dio = new Dio();
  var customHeaders = {
    'x-fapi-financial-id': 'c3c937c4-ab71-427f-9b59-4099b7c680ab'
  };

  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      (clientx) {
    HttpClient httpClient = new HttpClient(context: context);
    httpClient.badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true);
    return httpClient;
  };
  dio.options.headers.addAll(customHeaders);
  dio.options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
  dio.options.headers[HttpHeaders.authorizationHeader] =
      "$tokenType $accessToken";
  responseD = await dio.get(resourceEndpoint);
  debugPrint('responseX: ' + responseD.data.toString());
  Consent result = Consent.fromJson(responseD.data);
  debugPrint('result: ' + result.data.consentId.toString());
  return result.data;
}
