import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Payment Square Test Group Code

class PaymentSquareTestGroup {
  static String baseUrl = 'https://connect.squareupsandbox.com/v2/';
  static Map<String, String> headers = {};
  static PaymentCreateTestCall paymentCreateTestCall = PaymentCreateTestCall();
  static PaymentGetTestCall paymentGetTestCall = PaymentGetTestCall();
  static ListPaymentsTestCall listPaymentsTestCall = ListPaymentsTestCall();
  static CancelPaymentTestCall cancelPaymentTestCall = CancelPaymentTestCall();
}

class PaymentCreateTestCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PaymentCreateTestCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class PaymentGetTestCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PaymentGetTestCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class ListPaymentsTestCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'List Payments Test',
      apiUrl:
          '${PaymentSquareTestGroup.baseUrl}payments?location_id=LAY0KB6F54A7H',
      callType: ApiCallType.GET,
      headers: {
        ...PaymentSquareTestGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.payments[0].card_details''',
        true,
      );
  dynamic money(dynamic response) => getJsonField(
        response,
        r'''$.payments[0].amount_money''',
        true,
      );
  dynamic receipt(dynamic response) => getJsonField(
        response,
        r'''$.payments[0].receipt_number''',
        true,
      );
  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.payments[0].id''',
        true,
      );
  dynamic card(dynamic response) => getJsonField(
        response,
        r'''$.payments[0].card_details.card''',
        true,
      );
  dynamic payments(dynamic response) => getJsonField(
        response,
        r'''$.payments[:]''',
        true,
      );
  dynamic receipt1(dynamic response) => getJsonField(
        response,
        r'''$.payments[1].receipt_number''',
        true,
      );
  dynamic card1(dynamic response) => getJsonField(
        response,
        r'''$.payments[1].card_details.card''',
        true,
      );
}

class CancelPaymentTestCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
"idempotency_key": "cbd1278f-b927-4fd2-b733-8d036e5d0b7f"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cancel Payment Test',
      apiUrl: '${PaymentSquareTestGroup.baseUrl}payments/cancel',
      callType: ApiCallType.POST,
      headers: {
        ...PaymentSquareTestGroup.headers,
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Square-Version': '2023-05-17',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Payment Square Test Group Code

/// Start Inventory Square Test Group Code

class InventorySquareTestGroup {
  static String baseUrl = 'https://connect.squareupsandbox.com/v2/';
  static Map<String, String> headers = {};
  static BatchRetrieveInventoryCall batchRetrieveInventoryCall =
      BatchRetrieveInventoryCall();
  static BatchRetrieveChangesCall batchRetrieveChangesCall =
      BatchRetrieveChangesCall();
}

class BatchRetrieveInventoryCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Batch Retrieve Inventory',
      apiUrl:
          '${InventorySquareTestGroup.baseUrl}inventory/counts/batch-retrieve',
      callType: ApiCallType.POST,
      headers: {
        ...InventorySquareTestGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BatchRetrieveChangesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Batch Retrieve Changes',
      apiUrl:
          '${InventorySquareTestGroup.baseUrl}inventory/changes/batch-retrieve',
      callType: ApiCallType.POST,
      headers: {
        ...InventorySquareTestGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Inventory Square Test Group Code

/// Start Orders Square Test Group Code

class OrdersSquareTestGroup {
  static String baseUrl = 'https://connect.squareupsandbox.com/v2/';
  static Map<String, String> headers = {};
  static CreateOrderCall createOrderCall = CreateOrderCall();
  static BatchRecieveCall batchRecieveCall = BatchRecieveCall();
}

class CreateOrderCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
  "idempotency_key": "d9e3b08a-9040-44a3-84f6-5b776d11e2f8",
  "order": {
    "location_id": "LAY0KB6F54A7H"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create order',
      apiUrl: '${OrdersSquareTestGroup.baseUrl}orders',
      callType: ApiCallType.POST,
      headers: {
        ...OrdersSquareTestGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class BatchRecieveCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
"order_ids": [
      "50"
    ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'batch recieve',
      apiUrl: '${OrdersSquareTestGroup.baseUrl}orders/batch-retrieve',
      callType: ApiCallType.POST,
      headers: {
        ...OrdersSquareTestGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Orders Square Test Group Code

/// Start Square Misc Group Code

class SquareMiscGroup {
  static String baseUrl = 'https://connect.squareupsandbox.com/';
  static Map<String, String> headers = {};
  static MobileCodeCall mobileCodeCall = MobileCodeCall();
}

class MobileCodeCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
"location_id": "LAY0KB6F54A7H"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mobile Code',
      apiUrl: '${SquareMiscGroup.baseUrl}mobile/authorization-code',
      callType: ApiCallType.POST,
      headers: {
        ...SquareMiscGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Square Misc Group Code

/// Start Square Catalog Group Code

class SquareCatalogGroup {
  static String baseUrl = 'https://connect.squareupsandbox.com';
  static Map<String, String> headers = {};
  static ListCatalogCall listCatalogCall = ListCatalogCall();
}

class ListCatalogCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'List catalog',
      apiUrl: '${SquareCatalogGroup.baseUrl}/v2/catalog/list',
      callType: ApiCallType.GET,
      headers: {
        ...SquareCatalogGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Square Catalog Group Code

/// Start Square Gift Cards Group Code

class SquareGiftCardsGroup {
  static String baseUrl = 'https://connect.squareupsandbox.com/v2';
  static Map<String, String> headers = {};
  static CreateGiftCardCall createGiftCardCall = CreateGiftCardCall();
  static ListGiftCardsCall listGiftCardsCall = ListGiftCardsCall();
}

class CreateGiftCardCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
 "idempotency_key": "f416d57c-6b32-437b-b428-e19a472cffe2",
    "location_id": "LAY0KB6F54A7H",
    "gift_card": {
      "type": "DIGITAL"
}

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Gift Card',
      apiUrl: '${SquareGiftCardsGroup.baseUrl}/gift-cards',
      callType: ApiCallType.POST,
      headers: {
        ...SquareGiftCardsGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListGiftCardsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'List Gift Cards',
      apiUrl: '${SquareGiftCardsGroup.baseUrl}/gift-cards',
      callType: ApiCallType.GET,
      headers: {
        ...SquareGiftCardsGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Square Gift Cards Group Code

/// Start Square Checkout Group Code

class SquareCheckoutGroup {
  static String baseUrl =
      'https://connect.squareupsandbox.com/v2/online-checkout';
  static Map<String, String> headers = {};
  static QuickPayTestCall quickPayTestCall = QuickPayTestCall();
  static GetPaymentTestCall getPaymentTestCall = GetPaymentTestCall();
  static ListPaymentTestCall listPaymentTestCall = ListPaymentTestCall();
}

class QuickPayTestCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
 "checkout_options": {
      "allow_tipping": true
    },
    "quick_pay": {
      "location_id": "LAY0KB6F54A7H",
      "name": "Pastry",
      "price_money": {
        "amount": 500,
        "currency": "USD"
      }
    },
    "idempotency_key": "91cde960-fe83-449a-bd86-7ecda803dc10"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'quickPay Test',
      apiUrl: '${SquareCheckoutGroup.baseUrl}/payment-links',
      callType: ApiCallType.POST,
      headers: {
        ...SquareCheckoutGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPaymentTestCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getPayment Test',
      apiUrl: '${SquareCheckoutGroup.baseUrl}/payment-links/IC64526G4BERYWZQ',
      callType: ApiCallType.GET,
      headers: {
        ...SquareCheckoutGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListPaymentTestCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'listPayment Test',
      apiUrl: '${SquareCheckoutGroup.baseUrl}/payment-links',
      callType: ApiCallType.GET,
      headers: {
        ...SquareCheckoutGroup.headers,
        'Square-Version': '2023-05-17',
        'Authorization':
            'Bearer EAAAEPV_PO2rJlTc1qSw0f6Gim4gMY8GdMgDfTQCVlr5pQhRf1qihOWiLOeawZ1B',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Square Checkout Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
