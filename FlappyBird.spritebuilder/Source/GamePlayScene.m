#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // Create a character and add it to the screen.
    character = (Character*)[CCBReader load:@"Character"]; // loads a new Character from the CCB file named Character. CCB files are created by SpriteBuilder and describe the properties and appearance of in-game objects like our flappy bird.
    [physicsNode addChild:character]; // add your character as a child of physicsNode so that physics will be applied to it.
    [self addObstacle];
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    // this will get called every time the player touches the screen
    [character flap];
}

@end
