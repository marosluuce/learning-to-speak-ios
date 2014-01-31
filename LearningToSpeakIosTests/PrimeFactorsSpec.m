#import "PrimeFactors.h"
#import "Kiwi.h"

SPEC_BEGIN(PrimeFactorsSpec)

describe(@"factors", ^{
  
  it(@"factors 1", ^{
    NSArray *primes = [PrimeFactors factor:1];
    [[primes should] equal:[NSArray new]];
  });
  
  it(@"factors 2", ^{
    [[[PrimeFactors factor:2] should] equal:@[@2]];
  });
  
  it(@"factors 3", ^{
    [[[PrimeFactors factor:3] should] equal:@[@3]];
  });
  
  it(@"factors 4", ^{
    [[[PrimeFactors factor:4] should] equal:@[@2, @2]];
  });
  
  it(@"factors 6", ^{
    [[[PrimeFactors factor:6] should] equal:@[@2, @3]];
  });
  
  it(@"factors 8", ^{
    [[[PrimeFactors factor:8] should] equal:@[@2, @2, @2]];
  });
  
  it(@"factors 9", ^{
    [[[PrimeFactors factor:9] should] equal:@[@3, @3]];
  });
  
});

SPEC_END