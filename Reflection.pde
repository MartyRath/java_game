/* Reflection
 
 Name : Marty Rath
 
 Student Number: 20104119
 
 Link to your development Blog on Blogger:
 https://marty-rath-makes-a-game.blogspot.com/
 
 Link to Video on YouTube:
 https://www.youtube.com/watch?v=OkyVyQz2UN8
 
 
 Part A - Mark (11 /11)
 -----------------------------
 
 Inclusion of completed:
 - Readme             (1)
 - Reflection        (4)
 - Video                (4)
 - Blog                (2)
 
 These are all created to spec, so I am awarding myself 11 marks!
 
 
 Part B - Mark (4 /4)
 -----------------------------
 
 - Comments (1) multiline line 9, 80. Line 16, 42 singleline
 - Indentation (1)
 - Naming (1)
 - Structure of code. (1)
 
  4/4
 
 Part C - Mark (5 /5)
 -----------------------------
 Use of standard programming control constructs
 (if, loop, nesting):
 
 * if statements
 
 line 76 is an IF to check if hero collided with enemy or fell offscreen, to lose life
 line 82 is an IF with multiple branches and nesting for determining if the game 
         should continue or end.
 line 135 is a nested IF, with nesting starting on line 137, to initialise the cursor keys and 
         shift key
 line 148 is a nested IF, with inner IF starting 149, to check if hero jumping is false.
 
 * Loops
 
 FOR loop used on:
 line 120 is a FOR loop nested in an IF (line 119), to fire 'currentBullet' and check for 
         collision detection with bullet/enemy.
 line 69 to iterate through 'platformz' array to display platforms and for collision detection
 
 WHILE loop used on:
 line 54 to iterate through 'bullet' array and add bullet object to each index.
 
 I have multiple examples of nesting, multiple if statements, multiple examples of for loops,
 and two types of loops so 5/5
 
 
 Part D1 - Mark (8 /10)
 -----------------------------
 
 My game demonstrates uses collision detection, scoring, lives, the game resets correctly to play a new game.
 
 Additional features:
 Shoots multiple objects
 Simulated gravity 
 
 Therefore I score 8/10
 
 
 Part D2 - Mark (8 /10)
 -----------------------------
 I have a key handler set up on line 135
 it handles:
 - left (A/a)
 - right(D/dr)
 - up(w/W)
 
 - It also handles the cursor keys to navigate
 
 Additional keys include
 - [space] to fire bullet
 - shift to run
 
 I have working key handler, cursor keys too, and an additional 2 key features so I am 
 awarding 8/10
 
 
 Part D3 - Mark (10 /10)
 -----------------------------
 Collision detection BESPOKE METHODS defined in multiple classes:
 
 1- Enemy
 2- Hero
 3- Platform
 
 1. Enemy CLASS
    Method1: enemyShot(Bullet bullet1) on line 96 to detect collision between bullet and enemy. 
    In main file, called on line 123.
    
    Method2: enemyEdgeLimits() on line 55 to detect collision between enemy and edges of screen.
    In Enemy CLASS, called on line 44 in update().
 
 --
 
 2- Hero CLASS
    Method3: heroEnemyCollision(Enemy anEnemy) on line 84 to detect collision between bullet and enemy. 
    In main file, called on line 66.
    
    Method4: heroEdgeLimits() on line 123 to detect edge limits, so hero can't go off left or right of screen.
    In Hero CLASS, called on line 76.
 
 ---
 
 3. Platform CLASS
    Method5: hitPlatform(Hero hero1) on line 52 to detect collision between hero and platform, to stop falling.
    In main file, called on line 71.
    
    Method6: fallingOffPlatforms(Hero hero1) on line 66 to detect collision between hero to start falling
             when off platforms.
    In main file, called on line 72.
             
 I have the basic collision detection between 2 objects
 I am also checking edge conditions, and I have 4 other collision detections, including hero collisions with an array
 of platforms. Therefore, I am scoring myself 10/10
 
 
 -----------------------------
 Part E USER DEFINED CLASSES
 -----------------------------
 
 Part E1 - Mark (9 /10)
 -----------------------------
 Excluding the player class and the main program, I have 5 other classes defined in their own files/tabs:
 
 1- Bullet
 2- Enemy
 3- Hero
 4- Platform
 5- Scoring
 
 Each of these user-defined classes has appropriate fields, constructors, getters, setters. These are highlighted as follows:
 
 1.Bullet CLASS
 Fields begin line: 3
 Constructors begin line: 9
 Overloaded Constructor on line: 17
 Bespoke methods begin line: 26
 Getters begin line: 41
 Setters begin line: 62
 
 2.Enemy CLASS
 Fields begin line: 3
 Constructors begin line: 10
 Overloaded Constructor on line: 21
 Bespoke methods begin line: 33
 Getters begin line: 108
 Setters begin line: 134
 
 3.Hero CLASS
 Fields begin line: 3
 Constructors begin line: 20
 Overloaded contstructor: 40
 Bespoke methods begin line: 61
 Getters begin line: 144
 Setters begin line: 209
 
 4.Platform CLASS
 Fields begin line: 3
 Constructors begin line: 16
 Overloaded Constructor on line: 30
 Bespoke methods begin line: 44
 Getters begin line: 87
 Setters begin line: 126
 
 5.Scoring CLASS
 Fields begin line: 3
 Constructors begin line: 7
 Overloaded Constructor on line: 11
 Bespoke methods begin line: 16
 Getters begin line: 29
 Setters begin line: 38
 
 I have documented 5 classes and they include overloaded constructors therefore I am scoring 9/10
 
 
 Part E2 - Mark (10 /10)
 -----------------------------
 
 Class bespoke methods:
 1- Bullet
 2- Enemy
 3- Hero
 4- Platform
 5- Scoring
 
 1. Bullet Class
 
 line 26 takes in 0 parameters and returns NO value
 line 32 takes in 0 parameters and returns NO value
 
 2. Enemy Class
 
 line 55 takes in 0 parameters and returns NO value
 line 75 takes in 0 parameters and returns NO value
 line 85 takes in 1 parameter and returns NO value. Overloading previous method.
 line 96 takes in 1 object parameter and returns a boolean value.
 
 3. Hero Class
 
 line 69 takes in 0 parameters and returns NO value
 line 84 takes in 1 object parameter and returns a boolean value.
 line 96 takes in 0 parameters and returns NO value
 line 102 takes in 1 parameter and returns NO value. Overloading previous method.
 line 133 takes in 0 parameters and returns a boolean value.
 
 4. Platform Class
 
  line 44 takes in 0 parameters and returns NO value
  line 52 takes in 1 object parameter and returns NO value.
  line 66 takes in 1 object parameter and returns NO value.
 
 5. Scoring Class
 
  line 16 takes in 0 parameters and returns NO value
  line 23 takes in 1 parameter and returns NO value
 
 Methods for 5 classes are highlighted showing multiple examples of 
 methods with no return values, return values, parameters, and overloading. I am awarding myself 10/10
 
 
 Part E3 - Mark (10 /10)
 -----------------------------
 
 - The user-defined class(es) are USED in an appropriate manner
 
 multiple declarations of user defined classes are USED:
 Main file: line 11, to declare Enemy enemy.
 Main file: line 12, to declare Hero hero.
 Main file: line 14, to declare Scoring scoreboard.
 
 Initialise:
 Main file: line 38 to initialise hero.
 Main file: line 39, to initialise enemy.
 Main file: line 40, to initialise scoreboard.
 
 Getters are USED on...
 Main file, line 112 to get hero xCoord
 Main file, line 115 to get hero speed.
 Enemy class, line 97 to get bullet xCoord.
 
 Setters are USED on...
 Main file, line 149 to set hero jumping boolean to false.
 Main file, line 152 to set/update hero highest position after jumping.
 
 default constructors USED on lines...
 Main file, line 38 for hero class constructor.
 Main file, line 40 for scoring class constructor.
 
 overloaded constructors USED on lines...
 Main file, line 39 for enemy class overloaded constructor to set X, Y coords and size.
 Main file, line 43 for platform class overloaded constructor to add platform width.
 
 Array variables in methods used on lines...
 Main file, line 55 bullet index variable used.
 Main file, line 70 platform index variable used.
 Main file, line 123, bullet index variable used in collision detection method.
 
 I have multiple examples of using:
 Declaration, initialisation, getters, setters, overloaded constructors, and using array variables.
 I award 10/10
 
 ------------------------
 PART F - DATA STRUCTURES
 ------------------------
 
 Part F1 - Mark (5 /10)
 -----------------------------
 - Use of a data structure to store information i.e. array
 
 Main file: line 17
 Bullet
 Declared and initialized on line 17 to name array 'bullet' and set size to 100 to store object type bullet.
 Used on line 54, 121, 165
 
 Main file: line 18
 Platform
 Declared and initalized on line 18, to name array 'platformz' and set size to 6.
 Used on line 43, 70.
 
 I have used two non-primitive object arrays with fixed sizes, so 5/10.
 
 Part F2 - Mark (6 /10)
 -----------------------------
 - Calculations performed on the information stored
 
 Bullet
 Line 54 - using loop to add bullet to each index of array. Using .length
 Line 120 to 123 - using loop to iterate through array when spacebar is pressed to display, update, an check for
                   collision detection in array.
 Line 165 - updating position of current array object when spacebar is pressed, and incrementing index to next object.
 
 Platform
 Line 43 - hardcoding values of each index in platformz array.
 Line 70 - using for loop to iterate through platformz array to display platforms and for collision detection
 
 I have a non-primitive array set to a fixed size with values filled by user input(spacebar). So,
 I award  6/10

 TOTAL MARK = 86
 
 FINAL CHECK:
 I have checked the constraints and I am not breaking any constraints
 
 COMPLEXITY MULTIPLIER: Intermediate *.9
 Working game with lives, scoring and resets
 correctly
 
 */
