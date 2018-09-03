# CMBarcodeLookupApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**barcodeLookupEanLookup**](CMBarcodeLookupApi.md#barcodelookupeanlookup) | **POST** /barcode/lookup/ean | Lookup a barcode value and return product data


# **barcodeLookupEanLookup**
```objc
-(NSURLSessionTask*) barcodeLookupEanLookupWithValue: (NSString*) value
        completionHandler: (void (^)(CMBarcodeLookupResponse* output, NSError* error)) handler;
```

Lookup a barcode value and return product data

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // Barcode value

CMBarcodeLookupApi*apiInstance = [[CMBarcodeLookupApi alloc] init];

// Lookup a barcode value and return product data
[apiInstance barcodeLookupEanLookupWithValue:value
          completionHandler: ^(CMBarcodeLookupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMBarcodeLookupApi->barcodeLookupEanLookup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| Barcode value | 

### Return type

[**CMBarcodeLookupResponse***](CMBarcodeLookupResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

