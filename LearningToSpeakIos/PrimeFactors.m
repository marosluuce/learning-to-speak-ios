#import "PrimeFactors.h"

@implementation PrimeFactors

+ (NSArray *)factor:(int)num {
  NSMutableArray *primes = [NSMutableArray new];
  
  for (int divisor = 2; divisor <= num; divisor++) {
    while (num % divisor == 0) {
      [primes addObject:@(divisor)];
      num /= divisor;
    }
  }
  
  return primes;
}

@end
