#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{[self addObstacle];
    timeSinceObstacle = 0.0f;
    // your code here
}character = (Character*)[CCBReader load:@"Character"];
[[CCPhysicsNode addChild:character];
-(void)update:(CCTime)delta
{
    // put update code here
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 0.0f;
    }
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [character flap];
}

@end
