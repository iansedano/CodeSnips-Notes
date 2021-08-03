https://addyosmani.com/largescalejavascript/
https://www.toptal.com/javascript/comprehensive-guide-javascript-design-patterns

https://gamedev.stackexchange.com/questions/43667/alternatives-to-component-based-architecture

-   Inheritance: `class Player extends Character`
-   Composition: `class Player { Character baseChar; }`
-   Composition with registration: `class NPC { Pathfinder P; NPC(){ InitAndRegisterPathfinder( ref P ); } }`
-   Interface: `class Player { Renderable R; Player(){ R = CreateRenderable(); } }`
-   Internal implementation of interface: `class Player extends Renderable { Player(){ RegisterRenderable( ref this ); } }`
-   Quick & dirty composition: `class World { Vec3 playerPos; ... }` or even `function Game(){ Vec3 playerPos; while(true){...} }`