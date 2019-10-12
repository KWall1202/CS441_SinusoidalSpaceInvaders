//
//  GameScene.m
//  SinusoidalSpaceInvaders
//
//  Created by Kevin Wallace on 10/2/19.
//  Copyright © 2019 Kevin Wallace. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene {
    SKShapeNode *playerNode;
    SKLabelNode *_label;
    float x;
    float y;
}

- (void)didMoveToView:(SKView *)view {
    // Setup your scene here
    
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
    SKShapeNode *n = _playerNode;
    n.position = CGPointMake(x, y);
}

@end
