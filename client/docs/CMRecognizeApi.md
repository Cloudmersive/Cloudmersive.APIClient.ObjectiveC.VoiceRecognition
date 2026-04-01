# CMRecognizeApi

All URIs are relative to *https://testapi.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**speechRecognizeFilePost**](CMRecognizeApi.md#speechrecognizefilepost) | **POST** /speech/recognize/file | Recognize audio input as text using Advanced AI


# **speechRecognizeFilePost**
```objc
-(NSURLSessionTask*) speechRecognizeFilePostWithLanguageCode: (NSString*) languageCode
    recognitionMode: (NSString*) recognitionMode
    speechFile: (NSURL*) speechFile
        completionHandler: (void (^)(CMSpeechRecognitionResult* output, NSError* error)) handler;
```

Recognize audio input as text using Advanced AI

Uses advanced AI to convert input audio to text. Supports WAV, MP3, M4A, FLAC, OGG, and WMA formats. Consumes 1 API call per second of audio in Fast mode, 5 API calls per second in Normal mode, and 10 API calls per second in Advanced mode.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* languageCode = @""; // ISO 639-3 three-letter language code (e.g. eng, spa, fra). Empty for auto-detect. (optional) (default to )
NSString* recognitionMode = @"Normal"; // Recognition mode: Fast, Normal (default), or Advanced. Advanced is only available on Private Cloud and Managed Instance deployments. (optional) (default to Normal)
NSURL* speechFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; //  (optional)

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Recognize audio input as text using Advanced AI
[apiInstance speechRecognizeFilePostWithLanguageCode:languageCode
              recognitionMode:recognitionMode
              speechFile:speechFile
          completionHandler: ^(CMSpeechRecognitionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->speechRecognizeFilePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageCode** | **NSString***| ISO 639-3 three-letter language code (e.g. eng, spa, fra). Empty for auto-detect. | [optional] [default to ]
 **recognitionMode** | **NSString***| Recognition mode: Fast, Normal (default), or Advanced. Advanced is only available on Private Cloud and Managed Instance deployments. | [optional] [default to Normal]
 **speechFile** | **NSURL***|  | [optional] 

### Return type

[**CMSpeechRecognitionResult***](CMSpeechRecognitionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

