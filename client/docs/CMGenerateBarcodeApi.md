# CMGenerateBarcodeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateBarcodeEAN13**](CMGenerateBarcodeApi.md#generatebarcodeean13) | **POST** /barcode/generate/ean-13 | Validates and generate a EAN-13 barcode as a PNG file, a type of 1D barcode
[**generateBarcodeEAN8**](CMGenerateBarcodeApi.md#generatebarcodeean8) | **POST** /barcode/generate/ean-8 | Validates and generate a EAN-8 barcode as a PNG file, a type of 1D barcode
[**generateBarcodeQRCode**](CMGenerateBarcodeApi.md#generatebarcodeqrcode) | **POST** /barcode/generate/qrcode | Generate a QR code barcode as a PNG file, a type of 2D barcode which can encode free-form text information
[**generateBarcodeUPCA**](CMGenerateBarcodeApi.md#generatebarcodeupca) | **POST** /barcode/generate/upc-a | Validate and generate a UPC-A barcode as a PNG file, a type of 1D barcode
[**generateBarcodeUPCE**](CMGenerateBarcodeApi.md#generatebarcodeupce) | **POST** /barcode/generate/upc-e | Validates and generate a UPC-E barcode as a PNG file, a type of 1D barcode


# **generateBarcodeEAN13**
```objc
-(NSURLSessionTask*) generateBarcodeEAN13WithValue: (NSString*) value
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Validates and generate a EAN-13 barcode as a PNG file, a type of 1D barcode

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // Barcode value to generate from

CMGenerateBarcodeApi*apiInstance = [[CMGenerateBarcodeApi alloc] init];

// Validates and generate a EAN-13 barcode as a PNG file, a type of 1D barcode
[apiInstance generateBarcodeEAN13WithValue:value
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMGenerateBarcodeApi->generateBarcodeEAN13: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| Barcode value to generate from | 

### Return type

**NSURL***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateBarcodeEAN8**
```objc
-(NSURLSessionTask*) generateBarcodeEAN8WithValue: (NSString*) value
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Validates and generate a EAN-8 barcode as a PNG file, a type of 1D barcode

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // Barcode value to generate from

CMGenerateBarcodeApi*apiInstance = [[CMGenerateBarcodeApi alloc] init];

// Validates and generate a EAN-8 barcode as a PNG file, a type of 1D barcode
[apiInstance generateBarcodeEAN8WithValue:value
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMGenerateBarcodeApi->generateBarcodeEAN8: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| Barcode value to generate from | 

### Return type

**NSURL***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateBarcodeQRCode**
```objc
-(NSURLSessionTask*) generateBarcodeQRCodeWithValue: (NSString*) value
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Generate a QR code barcode as a PNG file, a type of 2D barcode which can encode free-form text information

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // QR code text to convert into the QR code barcode

CMGenerateBarcodeApi*apiInstance = [[CMGenerateBarcodeApi alloc] init];

// Generate a QR code barcode as a PNG file, a type of 2D barcode which can encode free-form text information
[apiInstance generateBarcodeQRCodeWithValue:value
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMGenerateBarcodeApi->generateBarcodeQRCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| QR code text to convert into the QR code barcode | 

### Return type

**NSURL***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateBarcodeUPCA**
```objc
-(NSURLSessionTask*) generateBarcodeUPCAWithValue: (NSString*) value
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Validate and generate a UPC-A barcode as a PNG file, a type of 1D barcode

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // UPC-A barcode value to generate from

CMGenerateBarcodeApi*apiInstance = [[CMGenerateBarcodeApi alloc] init];

// Validate and generate a UPC-A barcode as a PNG file, a type of 1D barcode
[apiInstance generateBarcodeUPCAWithValue:value
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMGenerateBarcodeApi->generateBarcodeUPCA: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| UPC-A barcode value to generate from | 

### Return type

**NSURL***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateBarcodeUPCE**
```objc
-(NSURLSessionTask*) generateBarcodeUPCEWithValue: (NSString*) value
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```

Validates and generate a UPC-E barcode as a PNG file, a type of 1D barcode

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // UPC-E barcode value to generate from

CMGenerateBarcodeApi*apiInstance = [[CMGenerateBarcodeApi alloc] init];

// Validates and generate a UPC-E barcode as a PNG file, a type of 1D barcode
[apiInstance generateBarcodeUPCEWithValue:value
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMGenerateBarcodeApi->generateBarcodeUPCE: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| UPC-E barcode value to generate from | 

### Return type

**NSURL***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

