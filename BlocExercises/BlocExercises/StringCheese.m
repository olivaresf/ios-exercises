//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    return [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
}

/**
 cheeseName = @"monterey cheese"
 cheeseName = @"fruit"
 cheeseName = @"123"
 */

/**
 *  Obj-C Method Declarations
 *
 *  Who is going to perform the action?: Class (+) or an Instance (-)
 *  What does it return?: An object, nothing, a struct
 *  What is it named?: For each word in the name, we can add a parameter (things the function can use)
 *
 */
- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    /**
     *  Obj-C Methods
     *
     *  The cat killed the mouse.
     *
     *  Subject: The cat
     *  Verb: killed
     *  IndirectObjecT: Mouse
     *  Punctuation: .
     *
     *
     *  [who? what?];
     *  [cheeseName lowercaseString]
     *
     *  [who? what?: to whom?]
     *  [cheeseName rangeOfString:@" cheese" options:NScaseInsensitiveSearch]
     */
    NSString *lowerCaseStringCheese = [cheeseName lowercaseString];
    if ([lowerCaseStringCheese hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        return [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        return cheeseName;
    }
    
    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return [NSString stringWithFormat:@"%ld cheese", (unsigned long)cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", (unsigned long)cheeseCount];
    }
    
    return nil;
}

@end
