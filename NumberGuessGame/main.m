//
//  main.m
//  NumberGuessGame
//
//  Created by Divya Iyengar on 12/17/16.
//  Copyright © 2016 Divya Iyengar. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        
        int answer = 0;
        int guess = 0;
        int turn = 0;
        
        //Generates a random number
        answer = arc4random() % 100 + 1;
        
        //For First guess
        NSLog(@"Enter a number between 1 and 100");
        scanf("%i", &guess);
        
        //Prompts user to keep trying until they get it right
        while (guess != answer){
            turn++;
            
            NSLog(@"Try Again!!! Enter a number between 1 and 100");
            scanf("%i", &guess);
            
            if (guess > answer) {
                NSLog(@"Lower!");
            } else if (guess < answer) {
                NSLog(@"Higher!");
            } else {
                NSLog(@"Correct! The answer is %i", answer);
            }
        }//end of while loop
        
        NSLog(@"It took you %i tries", turn);
        
    }
    return 0;
}

