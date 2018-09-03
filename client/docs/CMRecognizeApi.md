# CMRecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognizeFile**](CMRecognizeApi.md#recognizefile) | **POST** /speech/recognize/file | Recognize audio input as text using machine learning


# **recognizeFile**
```objc
-(NSURLSessionTask*) recognizeFileWithSpeechFile: (NSURL*) speechFile
        completionHandler: (void (^)(CMSpeechRecognitionResult* output, NSError* error)) handler;
```

Recognize audio input as text using machine learning

Uses advanced machine learning to convert input audio, which can be mp3 or wav, into text.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* speechFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Speech file to perform the operation on.  Common file formats such as WAV, MP3 are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Recognize audio input as text using machine learning
[apiInstance recognizeFileWithSpeechFile:speechFile
          completionHandler: ^(CMSpeechRecognitionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **speechFile** | **NSURL***| Speech file to perform the operation on.  Common file formats such as WAV, MP3 are supported. | 

### Return type

[**CMSpeechRecognitionResult***](CMSpeechRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

