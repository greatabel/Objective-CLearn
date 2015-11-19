// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Measurement.pb.h"
// @@protoc_insertion_point(imports)

@implementation MeasurementRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [MeasurementRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Measurement ()
@property (strong) NSData* image;
@property BOOL sideA;
@property BOOL sideB;
@end

@implementation Measurement

- (BOOL) hasImage {
  return !!hasImage_;
}
- (void) setHasImage:(BOOL) _value_ {
  hasImage_ = !!_value_;
}
@synthesize image;
- (BOOL) hasSideA {
  return !!hasSideA_;
}
- (void) setHasSideA:(BOOL) _value_ {
  hasSideA_ = !!_value_;
}
- (BOOL) sideA {
  return !!sideA_;
}
- (void) setSideA:(BOOL) _value_ {
  sideA_ = !!_value_;
}
- (BOOL) hasSideB {
  return !!hasSideB_;
}
- (void) setHasSideB:(BOOL) _value_ {
  hasSideB_ = !!_value_;
}
- (BOOL) sideB {
  return !!sideB_;
}
- (void) setSideB:(BOOL) _value_ {
  sideB_ = !!_value_;
}
- (instancetype) init {
  if ((self = [super init])) {
    self.image = [NSData data];
    self.sideA = NO;
    self.sideB = NO;
  }
  return self;
}
static Measurement* defaultMeasurementInstance = nil;
+ (void) initialize {
  if (self == [Measurement class]) {
    defaultMeasurementInstance = [[Measurement alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultMeasurementInstance;
}
- (instancetype) defaultInstance {
  return defaultMeasurementInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasImage) {
    [output writeData:1 value:self.image];
  }
  if (self.hasSideA) {
    [output writeBool:2 value:self.sideA];
  }
  if (self.hasSideB) {
    [output writeBool:3 value:self.sideB];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasImage) {
    size_ += computeDataSize(1, self.image);
  }
  if (self.hasSideA) {
    size_ += computeBoolSize(2, self.sideA);
  }
  if (self.hasSideB) {
    size_ += computeBoolSize(3, self.sideB);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Measurement*) parseFromData:(NSData*) data {
  return (Measurement*)[[[Measurement builder] mergeFromData:data] build];
}
+ (Measurement*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Measurement*)[[[Measurement builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Measurement*) parseFromInputStream:(NSInputStream*) input {
  return (Measurement*)[[[Measurement builder] mergeFromInputStream:input] build];
}
+ (Measurement*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Measurement*)[[[Measurement builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Measurement*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Measurement*)[[[Measurement builder] mergeFromCodedInputStream:input] build];
}
+ (Measurement*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Measurement*)[[[Measurement builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (MeasurementBuilder*) builder {
  return [[MeasurementBuilder alloc] init];
}
+ (MeasurementBuilder*) builderWithPrototype:(Measurement*) prototype {
  return [[Measurement builder] mergeFrom:prototype];
}
- (MeasurementBuilder*) builder {
  return [Measurement builder];
}
- (MeasurementBuilder*) toBuilder {
  return [Measurement builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasImage) {
    [output appendFormat:@"%@%@: %@\n", indent, @"image", self.image];
  }
  if (self.hasSideA) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sideA", [NSNumber numberWithBool:self.sideA]];
  }
  if (self.hasSideB) {
    [output appendFormat:@"%@%@: %@\n", indent, @"sideB", [NSNumber numberWithBool:self.sideB]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasImage) {
    [dictionary setObject: self.image forKey: @"image"];
  }
  if (self.hasSideA) {
    [dictionary setObject: [NSNumber numberWithBool:self.sideA] forKey: @"sideA"];
  }
  if (self.hasSideB) {
    [dictionary setObject: [NSNumber numberWithBool:self.sideB] forKey: @"sideB"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Measurement class]]) {
    return NO;
  }
  Measurement *otherMessage = other;
  return
      self.hasImage == otherMessage.hasImage &&
      (!self.hasImage || [self.image isEqual:otherMessage.image]) &&
      self.hasSideA == otherMessage.hasSideA &&
      (!self.hasSideA || self.sideA == otherMessage.sideA) &&
      self.hasSideB == otherMessage.hasSideB &&
      (!self.hasSideB || self.sideB == otherMessage.sideB) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasImage) {
    hashCode = hashCode * 31 + [self.image hash];
  }
  if (self.hasSideA) {
    hashCode = hashCode * 31 + [[NSNumber numberWithBool:self.sideA] hash];
  }
  if (self.hasSideB) {
    hashCode = hashCode * 31 + [[NSNumber numberWithBool:self.sideB] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface MeasurementBuilder()
@property (strong) Measurement* resultMeasurement;
@end

@implementation MeasurementBuilder
@synthesize resultMeasurement;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultMeasurement = [[Measurement alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultMeasurement;
}
- (MeasurementBuilder*) clear {
  self.resultMeasurement = [[Measurement alloc] init];
  return self;
}
- (MeasurementBuilder*) clone {
  return [Measurement builderWithPrototype:resultMeasurement];
}
- (Measurement*) defaultInstance {
  return [Measurement defaultInstance];
}
- (Measurement*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Measurement*) buildPartial {
  Measurement* returnMe = resultMeasurement;
  self.resultMeasurement = nil;
  return returnMe;
}
- (MeasurementBuilder*) mergeFrom:(Measurement*) other {
  if (other == [Measurement defaultInstance]) {
    return self;
  }
  if (other.hasImage) {
    [self setImage:other.image];
  }
  if (other.hasSideA) {
    [self setSideA:other.sideA];
  }
  if (other.hasSideB) {
    [self setSideB:other.sideB];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (MeasurementBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (MeasurementBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setImage:[input readData]];
        break;
      }
      case 16: {
        [self setSideA:[input readBool]];
        break;
      }
      case 24: {
        [self setSideB:[input readBool]];
        break;
      }
    }
  }
}
- (BOOL) hasImage {
  return resultMeasurement.hasImage;
}
- (NSData*) image {
  return resultMeasurement.image;
}
- (MeasurementBuilder*) setImage:(NSData*) value {
  resultMeasurement.hasImage = YES;
  resultMeasurement.image = value;
  return self;
}
- (MeasurementBuilder*) clearImage {
  resultMeasurement.hasImage = NO;
  resultMeasurement.image = [NSData data];
  return self;
}
- (BOOL) hasSideA {
  return resultMeasurement.hasSideA;
}
- (BOOL) sideA {
  return resultMeasurement.sideA;
}
- (MeasurementBuilder*) setSideA:(BOOL) value {
  resultMeasurement.hasSideA = YES;
  resultMeasurement.sideA = value;
  return self;
}
- (MeasurementBuilder*) clearSideA {
  resultMeasurement.hasSideA = NO;
  resultMeasurement.sideA = NO;
  return self;
}
- (BOOL) hasSideB {
  return resultMeasurement.hasSideB;
}
- (BOOL) sideB {
  return resultMeasurement.sideB;
}
- (MeasurementBuilder*) setSideB:(BOOL) value {
  resultMeasurement.hasSideB = YES;
  resultMeasurement.sideB = value;
  return self;
}
- (MeasurementBuilder*) clearSideB {
  resultMeasurement.hasSideB = NO;
  resultMeasurement.sideB = NO;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
