#import "CMRecognizeApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMSpeechRecognitionResult.h"


@interface CMRecognizeApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMRecognizeApi

NSString* kCMRecognizeApiErrorDomain = @"CMRecognizeApiErrorDomain";
NSInteger kCMRecognizeApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Recognize audio input as text using Advanced AI
/// Uses advanced AI to convert input audio to text. Supports WAV, MP3, M4A, FLAC, OGG, and WMA formats. Consumes 1 API call per second of audio in Fast mode, 5 API calls per second in Normal mode, and 10 API calls per second in Advanced mode.
///  @param languageCode ISO 639-3 three-letter language code (e.g. eng, spa, fra). Empty for auto-detect. (optional, default to )
///
///  @param recognitionMode Recognition mode: Fast, Normal (default), or Advanced. Advanced is only available on Private Cloud and Managed Instance deployments. (optional, default to Normal)
///
///  @param speechFile  (optional)
///
///  @returns CMSpeechRecognitionResult*
///
-(NSURLSessionTask*) speechRecognizeFilePostWithLanguageCode: (NSString*) languageCode
    recognitionMode: (NSString*) recognitionMode
    speechFile: (NSURL*) speechFile
    completionHandler: (void (^)(CMSpeechRecognitionResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/speech/recognize/file"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (languageCode != nil) {
        headerParams[@"languageCode"] = languageCode;
    }
    if (recognitionMode != nil) {
        headerParams[@"recognitionMode"] = recognitionMode;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"speechFile"] = speechFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMSpeechRecognitionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMSpeechRecognitionResult*)data, error);
                                }
                            }];
}



@end
