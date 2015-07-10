#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{[self addObstacle];
    // your code here
}character = (Character*)[CCBReader load:@"Character"];
[[CCPhysicsNode addChild:character];
-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    [character flap];
}

@end
