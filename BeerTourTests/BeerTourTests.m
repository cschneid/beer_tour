#import "Kiwi.h"

SPEC_BEGIN(MathSpec)

describe(@"sum", ^{
  context(@"with 2 numbers", ^{
    it(@"returns the sum of the two numbers", ^{
      [[@(40 + 2) should] equal:@42];
    });
  });
});

SPEC_END
