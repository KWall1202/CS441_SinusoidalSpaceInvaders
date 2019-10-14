//
//  GameScene.m
//  SinusoidalSpaceInvaders
//
//  Created by Kevin Wallace on 10/2/19.
//  Copyright © 2019 Kevin Wallace. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene {
    SKSpriteNode *playerNode;
    SKLabelNode *_label;
    float x;
    float y;
}

- (void)didMoveToView:(SKView *)view {
    // Setup your scene here
    playerNode = (SKSpriteNode *)[self childNodeWithName:@"//spacePlayer"];
    
    // Get label node from scene and store it for use later

}


- (void)touchDownAtPoint:(CGPoint)pos {
}

- (void)touchMovedToPoint:(CGPoint)pos {
}

- (void)touchUpAtPoint:(CGPoint)pos {
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Run 'Pulse' action from 'Actions.sks'
    [_label runAction:[SKAction actionNamed:@"Pulse"] withKey:@"fadeInOut"];
    
    for (UITouch *t in touches) {[self touchDownAtPoint:[t locationInNode:self]];}
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *t in touches) {[self touchMovedToPoint:[t locationInNode:self]];}
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {[self touchUpAtPoint:[t locationInNode:self]];}
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {[self touchUpAtPoint:[t locationInNode:self]];}
}


-(void)update:(CFTimeInterval)currentTime {
    // Called before each frame is rendered
    SKSpriteNode *n = playerNode;
    n.position = CGPointMake(x, y);
}

@end
