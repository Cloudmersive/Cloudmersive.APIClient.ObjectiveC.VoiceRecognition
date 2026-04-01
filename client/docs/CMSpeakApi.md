# CMSpeakApi

All URIs are relative to *https://testapi.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**speechSpeakTextVoiceBasicAudioPost**](CMSpeakApi.md#speechspeaktextvoicebasicaudiopost) | **POST** /speech/speak/text/voice/basic/audio | Generate audio from text using Advanced AI


# **speechSpeakTextVoiceBasicAudioPost**
```objc
-(NSURLSessionTask*) speechSpeakTextVoiceBasicAudioPostWithBody: (CMTextToSpeechRequest*) body
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Generate audio from text using Advanced AI

Converts text to speech using advanced AI. Supports English, Spanish, French, Hindi, Italian, Japanese, Portuguese, and Chinese. Specify language with LanguageCode (ISO 639-3, default: eng) and gender with Gender (Male or Female, default: Female). Output format is controlled by the Format field (mp3 or wav, default: mp3). Consumes 1 API call per second of generated audio.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMTextToSpeechRequest* body = [[CMTextToSpeechRequest alloc] init]; // String input request (optional)

CMSpeakApi*apiInstance = [[CMSpeakApi alloc] init];

// Generate audio from text using Advanced AI
[apiInstance speechSpeakTextVoiceBasicAudioPostWithBody:body
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSpeakApi->speechSpeakTextVoiceBasicAudioPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CMTextToSpeechRequest***](CMTextToSpeechRequest.md)| String input request | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

