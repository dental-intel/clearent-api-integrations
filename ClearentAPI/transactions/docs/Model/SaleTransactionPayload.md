# # SaleTransactionPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **string** | The transaction amount. |
**billing** | [**\OpenAPI\Client\Model\Address**](Address.md) |  | [optional]
**billing_is_shipping** | [**\OpenAPI\Client\Model\BillingIsShipping**](BillingIsShipping.md) |  | [optional]
**card** | **string** | The credit card number or token. |
**card_inquiry** | **bool** | False if you would not like to run a card inquiry automatically. | [optional] [default to true]
**cash_back_amount** | **string** | The cash back amount when using EBT cash benefits. | [optional]
**check_field** | [**\OpenAPI\Client\Model\CheckField**](CheckField.md) |  | [optional]
**check_field_mid** | **bool** | Optional duplication check for EMV transactions. True if you want to validate the &#x60;check-field&#x60; sent in is not duplicated for EMV transactions on a merchant level. | [optional]
**client_ip** | **string** | The client IP address. | [optional]
**comments** | **string** | The transaction comments. | [optional]
**contactless** | [**\OpenAPI\Client\Model\Contactless**](Contactless.md) |  | [optional]
**contactless_device** | [**\OpenAPI\Client\Model\ContactlessDevice**](ContactlessDevice.md) |  | [optional]
**create_token** | [**\OpenAPI\Client\Model\CreateToken**](CreateToken.md) |  | [optional]
**csc** | **string** | The CSC. | [optional]
**customer_id** | **string** | The customer ID. | [optional]
**cvm** | [**\OpenAPI\Client\Model\Cvm**](Cvm.md) |  | [optional]
**description** | **string** | The transaction description. | [optional]
**email_address** | **string** | The email address associated with the transaction. | [optional]
**email_receipt** | [**\OpenAPI\Client\Model\EmailReceipt**](EmailReceipt.md) |  | [optional]
**emv_data** | **string** | The EMV data passed from the terminal. | [optional]
**emv_entry_method** | [**\OpenAPI\Client\Model\EmvEntryMethod**](EmvEntryMethod.md) |  | [optional]
**encrypted_track_data** | **string** | The Encrypted Track Data can be passed in instead of the card number. This requires &#x60;track-format&#x60; to be set. | [optional]
**exp_date** | **string** | The expiration date of the credit card in MMYY format. |
**invoice** | **string** | The invoice number. | [optional]
**is_sp30** | **bool** | True if the terminal being used is a SP30. | [optional]
**key_serial_number** | **string** | The serial number of the encrypted device. | [optional]
**level3** | [**\OpenAPI\Client\Model\ClearentLevel3**](ClearentLevel3.md) |  | [optional]
**merchant_legacy_token** | [**\OpenAPI\Client\Model\MerchantLegacyToken**](MerchantLegacyToken.md) |  | [optional]
**order_id** | **string** | The order ID of the transaction. | [optional]
**partial_authorization** | **bool** | True if you would like to check partial authorization. | [optional]
**pin_data** | **string** |  | [optional]
**platform_fees** | [**\OpenAPI\Client\Model\PlatformFee[]**](PlatformFee.md) | True if the batch was settled. | [optional]
**purchase_order** | **string** | The transaction purchase order. | [optional]
**sales_tax_amount** | **string** | The amount of the sales tax. | [optional]
**sales_tax_type** | [**\OpenAPI\Client\Model\SalesTaxType**](SalesTaxType.md) |  | [optional]
**shipping** | [**\OpenAPI\Client\Model\Address**](Address.md) |  | [optional]
**software_type** | **string** | The reference to the software name you are building. | [optional]
**software_type_version** | **string** | Optional field to help with troubleshooting. | [optional]
**tip_amount** | **string** | The tip amount for the transaction. | [optional]
**token_description** | **string** | The description of the token. | [optional]
**type** | [**\OpenAPI\Client\Model\TypeSaleTransaction**](TypeSaleTransaction.md) |  |
**voucher_approval_code** | **string** |  | [optional]
**voucher_serial_number** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
