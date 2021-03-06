# ClearentIntegrationsApi\MerchantsApi

All URIs are relative to https://boarding-sb.clearent.net.

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMerchant()**](MerchantsApi.md#createMerchant) | **POST** /api/launchIntegratorSetup/v1.0/integrateMerchant/{hierarchyNodeKey} | 


## `createMerchant()`

```php
createMerchant($hierarchy_node_key, $create_merchant_payload): \ClearentIntegrationsApi\Model\CreateMerchantResponse
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: AccessKeyAuth
$config = ClearentIntegrationsApi\Configuration::getDefaultConfiguration()->setApiKey('AccessKey', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ClearentIntegrationsApi\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AccessKey', 'Bearer');


$apiInstance = new ClearentIntegrationsApi\Api\MerchantsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$hierarchy_node_key = 4788000000000009; // string
$create_merchant_payload = new \ClearentIntegrationsApi\Model\CreateMerchantPayload(); // \ClearentIntegrationsApi\Model\CreateMerchantPayload

try {
    $result = $apiInstance->createMerchant($hierarchy_node_key, $create_merchant_payload);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MerchantsApi->createMerchant: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hierarchy_node_key** | **string**|  |
 **create_merchant_payload** | [**\ClearentIntegrationsApi\Model\CreateMerchantPayload**](../Model/CreateMerchantPayload.md)|  |

### Return type

[**\ClearentIntegrationsApi\Model\CreateMerchantResponse**](../Model/CreateMerchantResponse.md)

### Authorization

[AccessKeyAuth](../../README.md#AccessKeyAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
