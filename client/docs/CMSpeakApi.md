# CMSpeakApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**speakPost**](CMSpeakApi.md#speakpost) | **POST** /speech/speak/text/basicVoice/{format} | Perform text-to-speech on a string


# **speakPost**
```objc
-(NSURLSessionTask*) speakPostWithFormat: (NSString*) format
    text: (NSString*) text
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Perform text-to-speech on a string

Takes as input a string and a file format (mp3 or wav) and outputs a wave form in the appropriate format.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* format = @"format_example"; // File format to generate response in; possible values are \"mp3\" or \"wav\"
NSString* text = text_example; // The text you would like to conver to speech.  Be sure to surround with quotes, e.g. \"The quick brown fox jumps over the lazy dog.\"

CMSpeakApi*apiInstance = [[CMSpeakApi alloc] init];

// Perform text-to-speech on a string
[apiInstance speakPostWithFormat:format
              text:text
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpeakApi->speakPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **NSString***| File format to generate response in; possible values are \&quot;mp3\&quot; or \&quot;wav\&quot; | 
 **text** | **NSString***| The text you would like to conver to speech.  Be sure to surround with quotes, e.g. \&quot;The quick brown fox jumps over the lazy dog.\&quot; | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

