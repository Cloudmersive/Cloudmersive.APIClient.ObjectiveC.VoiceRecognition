#import <Foundation/Foundation.h>
#import "CMObject.h"

/**
* barcodeapi
* Barcode APIs let you generate barcode images, and recognize values from images of barcodes.
*
* OpenAPI spec version: v1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "CMProductMatch.h"
@protocol CMProductMatch;
@class CMProductMatch;



@protocol CMBarcodeLookupResponse
@end

@interface CMBarcodeLookupResponse : CMObject


@property(nonatomic) NSNumber* successful;

@property(nonatomic) NSArray<CMProductMatch>* matches;

@end
