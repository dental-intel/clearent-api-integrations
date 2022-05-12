# OpenAPI\Client\TransactionsApi

All URIs are relative to https://gateway-sb.clearent.net.

Method | HTTP request | Description
------------- | ------------- | -------------
[**refundTransaction()**](TransactionsApi.md#refundTransaction) | **POST** /rest/v2/transactions/refund | 
[**saleTransaction()**](TransactionsApi.md#saleTransaction) | **POST** /rest/v2/transactions/sale | 
[**searchTransactions()**](TransactionsApi.md#searchTransactions) | **GET** /rest/v2/transactions | 


## `refundTransaction()`

```php
refundTransaction($refund_transaction_payload): \OpenAPI\Client\Model\SingleTransactionResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$refund_transaction_payload = new \OpenAPI\Client\Model\RefundTransactionPayload(); // \OpenAPI\Client\Model\RefundTransactionPayload

try {
    $result = $apiInstance->refundTransaction($refund_transaction_payload);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->refundTransaction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refund_transaction_payload** | [**\OpenAPI\Client\Model\RefundTransactionPayload**](../Model/RefundTransactionPayload.md)|  | [optional]

### Return type

[**\OpenAPI\Client\Model\SingleTransactionResponse**](../Model/SingleTransactionResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `saleTransaction()`

```php
saleTransaction($sale_transaction_payload): \OpenAPI\Client\Model\SingleTransactionResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$sale_transaction_payload = new \OpenAPI\Client\Model\SaleTransactionPayload(); // \OpenAPI\Client\Model\SaleTransactionPayload

try {
    $result = $apiInstance->saleTransaction($sale_transaction_payload);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->saleTransaction: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sale_transaction_payload** | [**\OpenAPI\Client\Model\SaleTransactionPayload**](../Model/SaleTransactionPayload.md)|  | [optional]

### Return type

[**\OpenAPI\Client\Model\SingleTransactionResponse**](../Model/SingleTransactionResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `searchTransactions()`

```php
searchTransactions($amount, $authorization_code, $display_message, $end_date, $id, $invoice, $is_descending, $last_four, $level, $order_id, $page_size, $page, $start_date, $status, $type): \OpenAPI\Client\Model\SearchTransactionResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: ApiKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\TransactionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$amount = 4.20; // string
$authorization_code = TAS274; // string
$display_message = Transaction approved; // string
$end_date = 2023-04-15 15:55; // string | The end date used with the `start-date` field to filter by a date range. Accepted formats include - MM-dd-yyyy hh:mm a, MM-dd-yy HH:mm, MM-dd-yy HH:mm z, yyyy-MM-dd HH:mm, yyyy-MM-dd HH:mm z.
$id = 115139811; // string
$invoice = invoice-1; // string
$is_descending = 'true'; // string
$last_four = 5439; // string
$level = 'terminal'; // string
$order_id = 115139810; // string
$page_size = 25; // string
$page = 1; // string
$start_date = 2022-04-10 15:55; // string | The start date used with the `end-date` field to filter by a date range. Accepted formats include - MM-dd-yyyy hh:mm a, MM-dd-yy HH:mm, MM-dd-yy HH:mm z, yyyy-MM-dd HH:mm, yyyy-MM-dd HH:mm z.
$status = approved; // string
$type = AUTH; // string | The type of transaction.

try {
    $result = $apiInstance->searchTransactions($amount, $authorization_code, $display_message, $end_date, $id, $invoice, $is_descending, $last_four, $level, $order_id, $page_size, $page, $start_date, $status, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TransactionsApi->searchTransactions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **string**|  | [optional]
 **authorization_code** | **string**|  | [optional]
 **display_message** | **string**|  | [optional]
 **end_date** | **string**| The end date used with the &#x60;start-date&#x60; field to filter by a date range. Accepted formats include - MM-dd-yyyy hh:mm a, MM-dd-yy HH:mm, MM-dd-yy HH:mm z, yyyy-MM-dd HH:mm, yyyy-MM-dd HH:mm z. | [optional]
 **id** | **string**|  | [optional]
 **invoice** | **string**|  | [optional]
 **is_descending** | **string**|  | [optional] [default to &#39;true&#39;]
 **last_four** | **string**|  | [optional]
 **level** | **string**|  | [optional] [default to &#39;terminal&#39;]
 **order_id** | **string**|  | [optional]
 **page_size** | **string**|  | [optional]
 **page** | **string**|  | [optional]
 **start_date** | **string**| The start date used with the &#x60;end-date&#x60; field to filter by a date range. Accepted formats include - MM-dd-yyyy hh:mm a, MM-dd-yy HH:mm, MM-dd-yy HH:mm z, yyyy-MM-dd HH:mm, yyyy-MM-dd HH:mm z. | [optional]
 **status** | **string**|  | [optional]
 **type** | **string**| The type of transaction. | [optional]

### Return type

[**\OpenAPI\Client\Model\SearchTransactionResponse**](../Model/SearchTransactionResponse.md)

### Authorization

[ApiKeyAuth](../../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
