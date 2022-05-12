# OpenAPI\Client\MerchantsApi

All URIs are relative to https://boarding-sb.clearent.net.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMerchant()**](MerchantsApi.md#createMerchant) | **POST** /api/launchIntegratorSetup/v1.0/integrateMerchant/{hierarchyNodeKey} | 


## `createMerchant()`

```php
createMerchant($hierarchy_node_key, $create_merchant_payload)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: AccessKeyAuth
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('AccessKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AccessKey', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\MerchantsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$hierarchy_node_key = 6588000000001003; // string
$create_merchant_payload = new \OpenAPI\Client\Model\CreateMerchantPayload(); // \OpenAPI\Client\Model\CreateMerchantPayload

try {
    $apiInstance->createMerchant($hierarchy_node_key, $create_merchant_payload);
} catch (Exception $e) {
    echo 'Exception when calling MerchantsApi->createMerchant: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hierarchy_node_key** | **string**|  |
 **create_merchant_payload** | [**\OpenAPI\Client\Model\CreateMerchantPayload**](../Model/CreateMerchantPayload.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[AccessKeyAuth](../../README.md#AccessKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)